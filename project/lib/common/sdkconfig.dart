/// sdk配置类
import 'dart:io';
import 'package:nim_core/nim_core.dart';
import 'package:path_provider/path_provider.dart';
import 'config.dart';

class NIMSDKOptionsConfig {
  static Future<NIMSDKOptions?> getSDKOptions(String appKey) async {
    NIMSDKOptions? options;
    if (Platform.isAndroid) {
      final directory = await getExternalStorageDirectory();
      options = NIMAndroidSDKOptions(
          appKey: Config.appKey,
          //是否同步置顶会话信息，即将置顶的会话信息同步到云端，以便在多个设备上同步；
          shouldSyncStickTopSessionInfos: true,
          //NIM SDK 的根目录，用于存储 SDK 相关的文件和数据。
          // 如果指定了该参数，则将 SDK 相关文件存储在该目录下，否则将存储在默认的目录下。
          sdkRootDir:
              directory != null ? '${directory.path}/NIMFlutter' : null);
    } else if (Platform.isIOS) {
      final directory = await getApplicationDocumentsDirectory();
      options = NIMIOSSDKOptions(
        appKey: Config.appKey,
        shouldSyncStickTopSessionInfos: true,
        sdkRootDir: '${directory.path}/NIMFlutter',
      );
    }
    return options;
  }
}
