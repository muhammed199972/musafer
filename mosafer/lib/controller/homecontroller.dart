import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class homecontroler extends GetxController {
  int currentIndex = 0;

  Color selectedColor = Colors.blue;

  SnakeShape snakeShape = SnakeShape.circle;

  bool showSelectedLabels = false;
  bool showUnselectedLabels = false;

  ShapeBorder bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  );
  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;
  EdgeInsets padding = const EdgeInsets.all(12);

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  onTabTapped(
    int index,
  ) {
    pageController.jumpToPage(index);

    currentIndex = index;
    update();
  }

  // onPageChanged(int page) {
  //   print('page$page');
  //   pageController.jumpToPage(page);

  //   containerColor = containerColors[page];
  //   currentIndex = page;

  //   snakeBarStyle = SnakeBarBehaviour.floating;
  //   snakeShape = SnakeShape.circle;
  //   padding = const EdgeInsets.all(12);
  //   bottomBarShape =
  //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(25));
  //   showSelectedLabels = false;
  //   showUnselectedLabels = false;

  //   update();
  // }
}
