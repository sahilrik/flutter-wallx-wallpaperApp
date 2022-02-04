import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:wallpaperapp/model/wallpaper.dart';
import 'package:wallpaperapp/view/utils/helpers/colors_helper.dart';

class WallpaperView extends StatelessWidget {
  final Wallpaper wallpaper;
  const WallpaperView({Key? key, required this.wallpaper}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: wallpaper.urls.regular,
            child: Image.network(
              wallpaper.urls.regular,
              height: Get.height,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WallpaperViewButton(
                  color: whitecolor,
                  onpressed: () {
                    Get.back();
                  },
                  iconData: Icons.arrow_back_ios,
                ),
                WallpaperViewButton(
                  color: whitecolor,
                  onpressed: () {},
                  iconData: Icons.search_off_outlined,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: pinkcolor,
                      child: WallpaperViewButton(
                          color: whitecolor,
                          onpressed: () {},
                          iconData: Icons.file_download_outlined),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class WallpaperViewButton extends StatelessWidget {
  final Color color;
  final Function onpressed;
  final IconData iconData;
  const WallpaperViewButton(
      {Key? key,
      required this.color,
      required this.onpressed,
      required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        onpressed();
      },
      icon: Icon(iconData),
      color: color,
    );
  }
}
