// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class add extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 60.h, left: 55.w, right: 55.w),
      child: SizedBox(
        height: 150.h,
        width: 300.0.w,
        child: Carousel(
          boxFit: BoxFit.fill,
          autoplay: true,
          animationCurve: Curves.easeInOutCubic,
          animationDuration: Duration(milliseconds: 1000),
          dotSize: 6.0,
          dotIncreasedColor: Color(0xFFFF335C),
          dotBgColor: Colors.transparent,
          dotPosition: DotPosition.bottomLeft,
          dotVerticalPadding: 0.0,
          showIndicator: true,
          indicatorBgPadding: 10.0,
          images: [
            NetworkImage(
                'https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
            NetworkImage(
                'https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
          ],
        ),
      ),
    );
  }
}
