import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_by_danu/data/dummy.dart';
import 'package:instagram_by_danu/modules/notification/notification_controller.dart';

class NotificationSuggestion extends StatelessWidget {
  const NotificationSuggestion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NotificationController());
    return Column(
      children: List.generate(
        dummyData.length,
        (index) {
          var item = dummyData[index];
          return Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(
                    '${item['profile_photo']}',
                  ),
                ),
              ),
              Container(
                height: 40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 200,
                      alignment: Alignment.topLeft,
                      child: Text(
                        '${item['username']}',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: 200,
                      alignment: Alignment.topLeft,
                      child: Text(
                        '${item['name']}',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              GetBuilder<NotificationController>(
                builder: (_) {
                  return item['follow'] == false
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              item['follow'] = true;
                              controller.update();
                            },
                            child: Text('Follow'),
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              item['follow'] = false;
                              controller.update();
                            },
                            child: Text('Followed'),
                          ),
                        );
                },
              )
            ],
          );
        },
      ),
    );
  }
}
