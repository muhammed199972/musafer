import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:flutter_snake_navigationbar_example/controller/homecontroller.dart';
import 'package:flutter_snake_navigationbar_example/custom_icons.dart';
import 'package:flutter_snake_navigationbar_example/view/screen_home/home.dart';
import 'package:flutter_snake_navigationbar_example/view/screen_sheach/search.dart';
import 'package:get/get.dart';

class bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Widget> _children = [HomePage(), search()];

    return GetBuilder<homecontroler>(
        init: homecontroler(),
        builder: (controler) => Scaffold(
              extendBodyBehindAppBar: true,
              resizeToAvoidBottomInset: true,
              extendBody: true,
              body: AnimatedContainer(
                duration: const Duration(seconds: 2),
                child: PageView(
                    onPageChanged: controler.onTabTapped,
                    controller: controler.pageController,
                    children: _children),
              ),
              bottomNavigationBar: SnakeNavigationBar.color(
                // height: 80,
                behaviour: controler.snakeBarStyle,
                snakeShape: controler.snakeShape,
                shape: controler.bottomBarShape,
                padding: controler.padding,

                ///configuration for SnakeNavigationBar.color
                snakeViewColor: controler.selectedColor,
                selectedItemColor: controler.snakeShape == SnakeShape.indicator
                    ? controler.selectedColor
                    : null,
                unselectedItemColor: Colors.blueGrey,

                ///configuration for SnakeNavigationBar.gradient
                // snakeViewGradient: selectedGradient,
                // selectedItemGradient: snakeShape == SnakeShape.indicator ? selectedGradient : null,
                // unselectedItemGradient: unselectedGradient,

                showUnselectedLabels: controler.showUnselectedLabels,
                showSelectedLabels: controler.showSelectedLabels,

                currentIndex: controler.currentIndex,
                onTap: controler.onTabTapped,
                items: [
                  const BottomNavigationBarItem(
                      icon: Icon(Icons.notifications), label: 'tickets'),
                  const BottomNavigationBarItem(
                      icon: Icon(CustomIcons.calendar), label: 'calendar'),
                  const BottomNavigationBarItem(
                      icon: Icon(CustomIcons.home), label: 'home'),
                  const BottomNavigationBarItem(
                      icon: Icon(CustomIcons.podcasts), label: 'microphone'),
                  const BottomNavigationBarItem(
                      icon: Icon(CustomIcons.search), label: 'search')
                ],
                selectedLabelStyle: const TextStyle(fontSize: 14),
                unselectedLabelStyle: const TextStyle(fontSize: 10),
              ),
            ));
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_snake_navigationbar_example/controller/homecontroller.dart';
// import 'package:flutter_snake_navigationbar_example/screen_home/home.dart';
// import 'package:flutter_snake_navigationbar_example/screen_sheach/search.dart';
// import 'package:get/get.dart';

// class bar extends StatelessWidget {
//   final List<dynamic> _children = [HomePage(), search()];
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<homecontroler>(
//         init: homecontroler(),
//         builder: (controler) => Scaffold(
//               body: _children[controler.currentIndex],
//               bottomNavigationBar: BottomNavigationBar(
//                 onTap: controler.onTabTapped,
//                 currentIndex: controler.currentIndex,
//                 // ignore: prefer_const_literals_to_create_immutables
//                 items: [
//                   const BottomNavigationBarItem(
//                     icon: Icon(Icons.home),
//                     title: Text('Home'),
//                   ),
//                   const BottomNavigationBarItem(
//                     icon: Icon(Icons.search),
//                     title: Text('Search'),
//                   ),
//                   const BottomNavigationBarItem(
//                       icon: Icon(Icons.person), title: Text('Profile'))
//                 ],
//               ),
//             ));
//   }
// }
