import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/explore_feed.dart';
import 'widgets/explore_search.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            ExploreSearch(),
            ExploreFeed(),
          ],
        ),
      ),
    );
  }
}
