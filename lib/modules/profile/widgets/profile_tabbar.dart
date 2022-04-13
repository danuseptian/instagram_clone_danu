import 'package:flutter/material.dart';

class ProfileTabBar extends StatelessWidget {
  const ProfileTabBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: TabBar(
        tabs: [
          Tab(
            icon: Icon(Icons.grid_view, color: Colors.grey),
          ),
          Tab(
            icon: Icon(Icons.person, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
