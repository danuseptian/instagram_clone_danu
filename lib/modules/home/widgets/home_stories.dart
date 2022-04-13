import 'package:flutter/material.dart';
import 'package:instagram_by_danu/data/dummy.dart';

class HomeStories extends StatelessWidget {
  const HomeStories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          dummyData.length,
          (index) {
            var item = dummyData[index];
            return Column(
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 45,
                          backgroundImage: AssetImage(
                            '${item['profile_photo']}',
                          ),
                        ),
                        if (index == 0)
                          Positioned(
                            child: CircleAvatar(
                              backgroundColor: Colors.blue,
                              radius: 12,
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                            right: 0,
                            bottom: 0,
                          ),
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 90,
                  child: Text(
                    '${item['username']}',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
