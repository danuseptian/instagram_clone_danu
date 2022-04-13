import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.check,
              color: Colors.blue,
              size: 30,
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Edit Profile',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/people/jennie.jpg'),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Change profile photo',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Name',
                    contentPadding: EdgeInsets.symmetric(vertical: 20)),
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Username',
                    contentPadding: EdgeInsets.symmetric(vertical: 20)),
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Pronoun',
                    contentPadding: EdgeInsets.symmetric(vertical: 20)),
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Website',
                    contentPadding: EdgeInsets.symmetric(vertical: 20)),
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Bio',
                    contentPadding: EdgeInsets.symmetric(vertical: 20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
