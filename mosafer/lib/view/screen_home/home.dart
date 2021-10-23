import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar_example/view/screen_home/combonent/add.dart';
import 'package:flutter_snake_navigationbar_example/view/screen_home/combonent/card.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        add(),
        GridView.builder(
            physics: BouncingScrollPhysics(),
            // controller: controller,
            // ignore: prefer_const_constructors
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 5,
              crossAxisSpacing: 0,
            ),
            // physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, it) {
              return card();
            })
      ],
    ));
  }
}
