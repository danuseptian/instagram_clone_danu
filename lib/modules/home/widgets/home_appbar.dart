import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_by_danu/modules/direct_message/direct_message_controller.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8, right: 8),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black12),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.camera_alt_outlined,
            size: 30,
          ),
          Image.asset(
            'assets/images/icons/instagram-text-logo.png',
            height: 60,
          ),
          InkWell(
            onTap: () {
              Get.to(() => DirectMessageView());
            },
            child: Icon(
              Icons.message_outlined,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
