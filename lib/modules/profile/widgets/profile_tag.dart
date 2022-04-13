import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_by_danu/data/dummy.dart';
import 'package:instagram_by_danu/modules/post_detail/tag_profile/tag_profile_view.dart';

class ProfileTag extends StatelessWidget {
  const ProfileTag({
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
                () => TagProfileView(
                  item: item,
                ),
              );
            },
            child: Container(
              width: Get.width / 3,
              height: 150.0,
              padding: EdgeInsets.all(2.0),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('${item['profile_tag']}'),
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
