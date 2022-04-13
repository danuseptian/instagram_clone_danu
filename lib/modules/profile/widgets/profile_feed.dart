import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_by_danu/data/dummy.dart';

import '../../post_detail/post_profile/post_profile_view.dart';

class ProfileFeed extends StatelessWidget {
  const ProfileFeed({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(
        dummyData.length,
        (index) {
          var item = dummyData[index];
          return InkWell(
            onTap: () {
              Get.to(
                () => PostProfileVIew(
                  item: item,
                ),
              );
            },
            child: Container(
              width: Get.width / 3,
              height: 150,
              padding: EdgeInsets.all(2.0),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('${item['profile_feed']}'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
