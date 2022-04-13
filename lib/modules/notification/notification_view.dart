import 'package:flutter/material.dart';

import 'widgets/notification_header.dart';
import 'widgets/notification_suggestion.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            NotificationHeader(),
            NotificationSuggestion(),
          ],
        ),
      ),
    );
  }
}
