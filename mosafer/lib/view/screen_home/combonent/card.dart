// ignore: import_of_legacy_library_into_null_safe
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
        margin: EdgeInsets.fromLTRB(40, 40, 40, 40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.red,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(10, 10), // changes position of shadow
            ),
          ],
        ),
        child: Column(children: <Widget>[
          Stack(children: [
            Container(
              height: 150,
              width: 300,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: FadeInImage(
                      image: NetworkImage(
                        'https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg',
                      ),
                      placeholder: AssetImage('images/lodenimag.gif'),
                      fit: BoxFit.fill)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(20.0),
                    topRight: const Radius.circular(20.0)),
              ),
            ),
          ]),
          SizedBox(height: 3.0),
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(8, 4, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'kkkk',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xFF616161),
                      ),
                    ),
                    FlatButton(
                        onPressed: () {}, child: Text('hhhhhhhhhhhhhhhhh')),
                    SizedBox(height: 5.0),
                    Text(
                      "price",
                      style: TextStyle(
                        fontSize: 30.w,
                        color: Color(0xFF616161),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  top: 26,
                  left: 3.5,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border, color: Colors.black,
                      //     :

                      //         color: col)),
                    ),
                  ))
            ],
          ),
        ]));
  }
}
