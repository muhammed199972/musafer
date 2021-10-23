// @dart=2.9

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_snake_navigationbar_example/view/screen_home/combonent/bar.dart';
import 'package:flutter_snake_navigationbar_example/view/screen_home/home.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(411, 683),
        builder: () => GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: bar(),
              getPages: [GetPage(name: '/home', page: () => HomePage())],
            ));
  }
}
