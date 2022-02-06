import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:wallpaperapp/model/wallpaper.dart';
import 'package:wallpaperapp/view/utils/helpers/colors_helper.dart';
import 'package:wallpaperapp/view/utils/helpers/style_helper.dart';

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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: pinkcolor,
                      child: WallpaperViewButton(
                          color: whitecolor,
                          onpressed: () {},
                          iconData: Icons.file_download_outlined),
                    ),
                    GestureDetector(
                      onTap: () {
                        showBottomSheet(
                            context: context,
                            builder: (context) => Container());
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 80.0,
                        ),
                        child: const Text(
                          'set as',
                          style: buttons,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: pinkcolor,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: whitecolor,
                      child: WallpaperViewButton(
                          color: pinkcolor,
                          onpressed: () {},
                          iconData: Icons.favorite_border),
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
