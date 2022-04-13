import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_by_danu/data/dummy.dart';
import 'package:instagram_by_danu/modules/post_detail/post_explore/post_explore_view.dart';

class ExploreFeed extends StatelessWidget {
  const ExploreFeed({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(dummyData.length, (index) {
        var item = dummyData[index];
        return InkWell(
          onTap: () {
            Get.to(() => PostExploreView(item: item));
          },
          child: Container(
            width: Get.width / 3,
            height: 150.0,
            padding: EdgeInsets.all(2.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('${item['feed_photo']}'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
