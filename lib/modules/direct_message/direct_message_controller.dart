import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_by_danu/data/dummy.dart';

class DirectMessageView extends StatelessWidget {
  const DirectMessageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon:
                Icon(Icons.video_call_outlined, size: 30, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add, size: 30, color: Colors.black),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'jenniekimberly',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(8),
                child: TextField(
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 8),
                    hintText: 'Search',
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15)),
                    filled: true,
                    fillColor: Colors.grey[200],
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Messages',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Requests',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
              Column(
                children: List.generate(dummyData.length, (index) {
                  var item = dummyData[index];
                  return Container(
                    margin: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage(
                            '${item['profile_photo']}',
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 200,
                                child: Text(
                                  '${item['username']}',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                width: 250,
                                child: Text(
                                  '${item['chat']}',
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.camera_alt_outlined),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
