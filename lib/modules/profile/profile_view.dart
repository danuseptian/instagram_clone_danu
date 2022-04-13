import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/profile_feed.dart';
import 'widgets/profile_header.dart';
import 'widgets/profile_tabbar.dart';
import 'widgets/profile_tag.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: ListView(
            children: [
              AppBar(
                toolbarHeight: 220,
                backgroundColor: Colors.white,
                elevation: 0,
                flexibleSpace: ProfileHeader(),
              ),
              ProfileTabBar(),
              Container(
                height: 600,
                child: TabBarView(
                  children: [
                    ProfileFeed(),
                    ProfileTag(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
