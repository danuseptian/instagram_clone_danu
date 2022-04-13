import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../edit_profile/edit_profile_view.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/people/jennie.jpg'),
              ),
              Column(
                children: [
                  Text(
                    '9',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Posts'),
                ],
              ),
              Column(
                children: [
                  Text(
                    '946',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Followers'),
                ],
              ),
              Column(
                children: [
                  Text(
                    '846',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Following'),
                ],
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 200,
                  child: Text(
                    'Jennie Kimberly',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  width: 350,
                  child: Text(
                    'Hello everyone! Welcome to my instagram.',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 5,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            splashColor: Colors.transparent,
            onTap: () {
              Get.to(() => EditProfileView());
            },
            child: Container(
              height: 40,
              margin: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey)),
              child: Center(
                child: Text(
                  'Edit Profile',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
