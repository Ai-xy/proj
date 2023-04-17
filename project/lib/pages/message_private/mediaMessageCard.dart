import 'dart:io';
import 'package:fijkplayer/fijkplayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:flutter_sound/public/flutter_sound_player.dart';
import 'package:nim_core/nim_core.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:progressive_image/progressive_image.dart';
import 'package:project/widget/percentIndicator.dart';

/// 图片消息组件
class ImageMessageCard extends StatelessWidget {
  final NIMMessage message;

  const ImageMessageCard({Key? key, required this.message}) : super(key: key);
  NIMImageAttachment get image =>
      message.messageAttachment as NIMImageAttachment;
  double get ratio {
    if (image.width != null &&
        image.width != 0 &&
        image.height != null &&
        image.height != 0) {
      return image.width! / image.height!;
    }
    return 1.0;
  }

  @override
  Widget build(BuildContext context) {
    return HookBuilder(builder: (BuildContext context) {
      return StreamBuilder<NIMMessage>(
          stream: NimCore.instance.messageService.onMessageStatus
              .where((event) => event.uuid == message.uuid),
          builder: (context, event) {
            return StreamBuilder<NIMAttachmentProgress>(
              stream: NimCore.instance.messageService.onAttachmentProgress
                  .where((event) => event.id == message.uuid),
              builder: (context, snapshot) {
                return Container(
                  constraints: BoxConstraints(maxWidth: 110),
                  child: AspectRatio(
                    aspectRatio: ratio,
                    child: ClipRRect(
                      key: ValueKey('${message.uuid}'),
                      borderRadius: BorderRadius.circular(8),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          message.messageDirection ==
                                  NIMMessageDirection.outgoing
                              ? Image.file(
                                  File('${image.path}'),
                                  fit: BoxFit.fill,
                                )
                              : ProgressiveImage(
                                  // size: 1.87KB
                                  thumbnail: NetworkImage('${image.thumbUrl}'),
                                  // size: 1.29MB
                                  image: NetworkImage('${image.url}'),
                                  height: 110 * ratio,
                                  width: 110,
                                  fit: BoxFit.contain, placeholder: null,
                                ),
                          if (snapshot.data?.progress != 1 &&
                              message.messageDirection ==
                                  NIMMessageDirection.outgoing &&
                              [NIMMessageStatus.sending]
                                  .contains(event.data?.status))
                            PercentWidget(
                              width: 110,
                              height: 110 * ratio,
                              progress: snapshot.data?.progress ?? 0,
                            )
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          });
    });
  }
}

/// 视频消息组件
class VideoMessageCard extends StatelessWidget {
  final NIMMessage message;
  const VideoMessageCard({Key? key, required this.message}) : super(key: key);
  NIMVideoAttachment get video =>
      message.messageAttachment as NIMVideoAttachment;
  double get ratio {
    if (video.width != null &&
        video.width != 0 &&
        video.height != null &&
        video.height != 0) {
      return video.width! / video.height!;
    }
    return 1.0;
  }

  @override
  Widget build(BuildContext context) {
    return HookBuilder(builder: (BuildContext context) {
      FijkPlayer fijkPlayer = FijkPlayer();
      double aspectRatio = ratio;

      useEffect(() {
        fijkPlayer.setDataSource('${video.thumbUrl}', autoPlay: false);
        return () {
          fijkPlayer.release();
          // fijkPlayer.dispose();
        };
      }, []);

      return ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 120, maxHeight: 240),
        child: StreamBuilder<NIMMessage>(
            stream: NimCore.instance.messageService.onMessageStatus,
            builder: (context, event) {
              return StreamBuilder<NIMAttachmentProgress>(
                stream: NimCore.instance.messageService.onAttachmentProgress
                    .where((e) => e.id == message.uuid),
                builder: (context, snapshot) {
                  return ClipRRect(
                    key: ValueKey('${message.uuid}'),
                    borderRadius: BorderRadius.circular(8),
                    child: AspectRatio(
                      aspectRatio: aspectRatio,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          FijkView(
                            player: fijkPlayer,
                            color: Colors.black,
                            fit: FijkFit.fitHeight,
                            cover: FileImage(File('${video.thumbPath}')),
                          ),
                          if (snapshot.data?.progress != 1 &&
                              message.messageDirection ==
                                  NIMMessageDirection.outgoing &&
                              [NIMMessageStatus.sending]
                                  .contains(event.data?.status))
                            PercentWidget(
                              key: ValueKey(message.uuid),
                              width: 110,
                              progress: snapshot.data?.progress ?? 0,
                            ),
                          // 视频时间
                          Positioned(
                            right: 6,
                            bottom: 6,
                            child: Text(
                              formatTimeMMSS(video.duration ?? 0),
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            }),
      );
    });
  }

  String formatTimeMMSS(int millseconds) {
    int seconds = (millseconds / 1000).ceil();
    String mm = (seconds / 60).truncate().toString().padLeft(2, '0');
    String ss = (seconds % 60).toString().padLeft(2, '0');
    return '$mm:$ss';
  }
}

/// 语音消息组件
class AudioMessageCard extends StatefulWidget {
  final NIMMessage message;
  const AudioMessageCard({Key? key, required this.message}) : super(key: key);
  NIMAudioAttachment get voice =>
      message.messageAttachment as NIMAudioAttachment;
  // double get ratio {
  //   if (voice.width != null &&
  //       voice.width != 0 &&
  //       voice.height != null &&
  //       voice.height != 0) {
  //     return voice.width! / voice.height!;
  //   }
  //   return 1.0;
  // }

  @override
  State<AudioMessageCard> createState() => _AudioMessageCardState();
}

class _AudioMessageCardState extends State<AudioMessageCard> {
  FlutterSoundPlayer _player = FlutterSoundPlayer();
  FlutterSound flutterSound = FlutterSound();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () async {
            await [Permission.audio].request();
            await _player.openPlayer();
            // 播放音频
            await _player
                .startPlayer(
                    fromURI: widget.voice.path,
                    whenFinished: () {
                      setState(() {});
                    })
                .then((value) {
              setState(() {});
            });
          },
          child: Container(
            child: Text(
              '))))))))))    ',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        GestureDetector(
          onTap: () async {
            await _player.stopPlayer();
            await _player.closePlayer();
          },
          child: Container(
            child: Text('   停止播放', style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    );
  }
}
