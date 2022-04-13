import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_by_danu/modules/post_detail/post_profile/post_profile_controller.dart';

class PostProfileVIew extends StatelessWidget {
  final dynamic item;
  const PostProfileVIew({Key? key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PostProfileController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Posts',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              InkWell(
                splashColor: Colors.transparent,
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage(
                      'assets/images/people/jennie.jpg',
                    ),
                  ),
                ),
              ),
              Text(
                'jenniekimberly',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Icon(Icons.more_vert)
            ],
          ),
          Container(
            height: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  '${item['profile_feed']}',
                ),
              ),
            ),
          ),
          Row(
            children: [
              GetBuilder<PostProfileController>(
                builder: (_) {
                  return item['like'] == false
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              item['like'] = true;
                              controller.update();
                            },
                            child: Icon(
                              Icons.favorite_border_outlined,
                              size: 28,
                            ),
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              item['like'] = false;
                              controller.update();
                            },
                            child: Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 28,
                            ),
                          ),
                        );
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/icons/comment.png',
                  height: 25,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/icons/send.png',
                  height: 25,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.only(left: 5),
            alignment: Alignment.topLeft,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'jenniekiberly',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
