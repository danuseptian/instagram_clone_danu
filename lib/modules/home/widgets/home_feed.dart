import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_by_danu/data/dummy.dart';
import 'package:instagram_by_danu/modules/home/home_controller.dart';

class HomeFeed extends StatelessWidget {
  const HomeFeed({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        children: List.generate(
          dummyData.length,
          (index) {
            var item = dummyData[index];
            return Column(
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
                            '${item['profile_photo']}',
                          ),
                        ),
                      ),
                    ),
                    Text(
                      '${item['username']}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Icon(Icons.more_vert)
                  ],
                ),
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        '${item['feed_photo']}',
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    GetBuilder<HomeController>(
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
                        '${item['username']}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '${item['caption']}',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
