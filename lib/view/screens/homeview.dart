import 'package:flutter/material.dart';
import 'package:wallpaperapp/view/utils/helpers/colors_helper.dart';
import 'package:wallpaperapp/view/utils/helpers/style_helper.dart';
import 'package:wallpaperapp/view/utils/shared/shared_grid_wiget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'WALLPAPER',
            style: h1,
          ),
          centerTitle: true,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: blackgreyColor,
              ),
            ),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.transparent,
            labelColor: pinkcolor,
            unselectedLabelColor: greyColor,
            tabs: [
              Text(
                'TODAY',
                style: links,
              ),
              Text(
                'POPULAR',
                style: links,
              ),
              Text(
                'OLDIES',
                style: links,
              ),
            ],
          ),
        ),
        body: const TabBarView(physics: BouncingScrollPhysics(), children: [
          SharedGridWiget(),
          SharedGridWiget(),
          SharedGridWiget(),
        ]),
      ),
    );
  }
}
