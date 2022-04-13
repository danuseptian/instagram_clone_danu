import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_by_danu/modules/dashboard/dashboard_view.dart';
import 'package:instagram_by_danu/utilities/loading_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.robotoTextTheme(),
        ),
        debugShowCheckedModeBanner: false,
        home: FutureBuilder(
          future: Future.delayed(
            Duration(seconds: 2),
          ),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return DashboardView();
            }
            return LoadingScreen();
          },
        ));
  }
}
