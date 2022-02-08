import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:get/get.dart';
import 'package:wallpaperapp/controller/download_controller.dart';

class WallpaperController extends DownloadController {
  Future<void> downloadTheWallpaper(String url) async {
    var file = await DefaultCacheManager().getSingleFile(url);
    print(file.path);
    await insertImagePath(url: url, path: file.path);
    Get.showSnackbar(const GetSnackBar(
      title: 'done',
      message: 'image download',
      duration: Duration(seconds: 2),
    ));
  }
}
