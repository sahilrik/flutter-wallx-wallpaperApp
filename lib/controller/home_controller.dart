// import 'package:get/get.dart';
// import 'package:wallpaperapp/controller/base_controller.dart';
// import 'package:wallpaperapp/model/wallpaper.dart';
// import 'package:wallpaperapp/service/rest_api_service.dart';

// class HomeController extends BaseController {
//   final RestApiService _restApiService = RestApiService();
//   List<Wallpaper> todaysList = [];

//   void getListOfToday() async {
//     setState(true);
//     todaysList = await _restApiService.convertJsonToObject(1);
//     setState(false);
//   }

//   @override
//   void onInit() {
//     getListOfToday();
//     super.onInit();
//   }
// }
import 'package:get/get.dart';
import 'package:wallpaperapp/controller/base_controller.dart';
import 'package:wallpaperapp/model/wallpaper.dart';
import 'package:wallpaperapp/service/rest_api_service.dart';

class HomeController extends BaseController {
  final RestApiService _restApiService = RestApiService();
  List<Wallpaper> todaysList = [];

  void getListOfToday() async {
    setState(true);
    todaysList = await _restApiService.convertJsonToObject(1);
    setState(false);
  }

  @override
  void onInit() {
    getListOfToday();
    super.onInit();
  }
}
