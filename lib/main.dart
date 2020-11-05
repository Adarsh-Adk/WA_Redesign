import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:whatsapp_demo/Calls/CallsPage.dart';
import 'package:whatsapp_demo/Camera/Camera.dart';
import 'package:whatsapp_demo/Groups/GroupPage.dart';
import 'package:whatsapp_demo/Personal/PersonalPage.dart';

import 'Constants/Constants.dart';

var deGreen = Constants().deGreen;
var cardElevation = Constants().cardElevation;
var cardContHt = Constants().cardContHt;
var cardRadius = Constants().cardRadius;
var pageContHt = Constants().pageContHt;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController controllerMain;

  @override
  void initState() {
    super.initState();
    controllerMain = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  void dispose() {
    controllerMain.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: deGreen),
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              elevation: 7,
              backgroundColor: Colors.white,
              title: Text(
                "Whatsapp",
                style: TextStyle(color: deGreen),
              ),
              actions: <Widget>[
                Icon(
                  Icons.search,
                  color: deGreen,
                  size: 25,
                ),
                Icon(Icons.more_vert, color: deGreen, size: 25),
              ],
            ),
            body: Column(
              children: [
                Expanded(
                  child:
                      TabBarView(controller: controllerMain, children: <Widget>[
                        Camera(),
                        PersonalPage(),
                        GroupPage(),
                        CallsPage(),
                  ]),
                ),
              ],
            ),
            bottomNavigationBar: BottomAppBar(
              elevation: 10,
              child: TabBar(
                controller: controllerMain,
                indicator: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: deGreen, width: 3.0),
                  ),
                ),
                isScrollable: false,
                indicatorColor: deGreen,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w400),
                tabs: [
                  Container(
                    width: 5,
                    child: Icon(
                      Icons.camera_alt,
                      color: deGreen,
                    ),
                  ),
                  Tab(
                      child: Text(
                    "Private",
                    style: TextStyle(color: deGreen),
                  )),
                  Tab(
                      child: Text(
                    "Groups",
                    style: TextStyle(color: deGreen),
                  )),
                  Tab(
                      child: Text(
                    "Calls",
                    style: TextStyle(color: deGreen),
                  ))
                ],
              ),
            ),
          ),
        ));
  }
}
