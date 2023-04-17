import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class MediaKit {
  // 视频
  static Future<XFile?> pickVideo() {
    final ImagePicker picker = ImagePicker();
    return picker.pickVideo(source: ImageSource.gallery);
    // return AppPermissionKit.checkPermission(Permission.photos).then((value) {
    //   // return picker.pickImage(source: source);
    //   if (value) {
    //     return picker.pickMultiImage();
    //   }
    //   throw Future.error('暂无读取相册权限');
    // });
  }
}
