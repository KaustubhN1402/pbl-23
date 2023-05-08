import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
//import 'package:pbl-23/main.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            leading: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            title: Center(
              child: Text(
                'Profile',
                style: TextStyle(),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert,
                ),
              ),
            ],
          ),
          body: SafeArea(
            child: Stack(
              children: [
                Container(
                  // decoration: BoxDecoration(
                  //   color: Colors.black,
                  //   border: Border.all(
                  //     color: Colors.grey,
                  //   ),
                  // ),
                  color: Colors.white,
                  padding: EdgeInsets.only(left: 35, top: 95),
                ),
                Container(
                  margin: EdgeInsets.all(25.0),
                  color: Colors.grey.shade300,
                  height: 200.0,
                  width: 400.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Icon(
                          Icons.account_circle,
                          color: Colors.cyan,
                          size: 150.0,
                        ),
                      ),
                      Text(
                        'UserName',
                        style: TextStyle(fontSize: 30.0),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      // margin: EdgeInsets.fromLTRB(),

                      margin: EdgeInsets.only(left: 35, bottom: 60),
                      height: 60,
                      width: 70,
                      color: Colors.red,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 35, bottom: 60),
                      height: 60,
                      width: 70,
                      color: Colors.red,
                    ),
                    Container(),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
