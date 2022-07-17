import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wallpaperapp/model/wallpaper.dart';
import 'package:wallpaperapp/view/utils/constants/constant.dart';

// import 'dart:convert';

// import 'package:http/http.dart' as http;

class RestApiService {
  Future<List<dynamic>> getJsonDataFromApi(String url) async {
    Uri uri = Uri.parse(url);
    var response = await http.get(uri);
    var parseData = jsonDecode(response.body) as List<dynamic>;
    print(parseData);
    return parseData;
  }

  Future<List<Wallpaper>> convertJsonToObject(String url) async {
    List<dynamic> list = await getJsonDataFromApi(url);
    List<Wallpaper> wallpapers = [];
    for (var wallpaper in list) {
      wallpapers.add(Wallpaper.fromJson(wallpaper));
    }
    return wallpapers;
  }

  // Future<List<Wallpaper>> convertJsonToObject(String pagenumber) async {
  //   List<dynamic> list = await getJsonDataFromApi(api + "&$pagenumber");
  //   List<Wallpaper> wallpapaers = [];
  //   for (var wallpaper in list) {
  //     wallpapaers.add(Wallpaper.fromJson(wallpaper));
  //     ;
  //   }
  //   return wallpapaers;
  // }
}
