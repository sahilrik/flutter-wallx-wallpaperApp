import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:wallpaperapp/controller/base_controller.dart';

class WallpaperController extends BaseController {
  Future<void> downloadTheWallpaper(String url) async {
    var file = await DefaultCacheManager().getSingleFile(url);
    print(file.path);
  }
}
