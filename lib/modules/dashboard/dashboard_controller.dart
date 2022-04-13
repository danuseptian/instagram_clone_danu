import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_by_danu/modules/explore/explore_view.dart';
import 'package:instagram_by_danu/modules/home/home_view.dart';
import 'package:instagram_by_danu/modules/notification/notification_view.dart';
import 'package:instagram_by_danu/modules/profile/profile_view.dart';
import 'package:instagram_by_danu/modules/upload/upload_view.dart';

class DashboardController extends GetxController {
  final selectedIndex = 0.obs;
  void onItemTapped(int index) => selectedIndex.value = index;

  List<Widget> bottomTabView = [
    HomeView(),
    ExploreView(),
    UploadVIew(),
    NotificationView(),
    ProfileView(),
  ];
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
