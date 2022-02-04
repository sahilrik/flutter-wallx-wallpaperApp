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
import 'package:wallpaperapp/view/utils/constants/constant.dart';

class HomeController extends BaseController {
  final RestApiService _restApiService = RestApiService();
  List<Wallpaper> todaysList = [];
  List<Wallpaper> popularList = [];
  List<Wallpaper> oldiesList = [];

  Future<void> getListOfToday() async {
    todaysList = await _restApiService.convertJsonToObject(api + '&${1}');
  }

  Future<void> getListOfPopular() async {
    popularList = await _restApiService
        .convertJsonToObject(api + '&${1}&order_by=popular');
  }

  Future<void> getListOfOldies() async {
    oldiesList = await _restApiService
        .convertJsonToObject(api + '&${1}&order_by=oldest');
  }

  void getllData() async {
    setState(true);
    await getListOfToday();
    await getListOfPopular();
    await getListOfOldies();
    setState(false);
  }

  @override
  void onInit() {
    getllData();
    super.onInit();
  }
}
