import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_by_danu/modules/home/home_controller.dart';

import 'widgets/home_appbar.dart';
import 'widgets/home_feed.dart';
import 'widgets/home_stories.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            HomeAppBar(),
            SizedBox(height: 5),
            HomeStories(),
            SizedBox(height: 5),
            HomeFeed(),
          ],
        ),
      ),
    );
  }
}
