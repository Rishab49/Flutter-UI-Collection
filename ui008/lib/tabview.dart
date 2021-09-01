import 'package:flutter/material.dart';
import 'package:ui001/pages/emotion_page.dart';
import 'package:ui001/pages/gallery_page.dart';
import 'package:ui001/pages/inspiration_page.dart';
import 'package:ui001/pages/places_page.dart';
import 'package:ui001/pages/travel_page.dart';
import 'package:ui001/utility/colors.dart';

class TabView extends StatefulWidget {
  TabView({Key? key}) : super(key: key);

  @override
  _TabViewState createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
              automaticallyImplyLeading: false,
              title: TabBar(
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: MyColors.TEXT_COLOR,
                labelColor: MyColors.TEXT_COLOR,
                labelStyle: TextStyle(fontSize: 16),
                labelPadding: EdgeInsets.fromLTRB(8, 4, 16, 4),
                unselectedLabelColor: MyColors.INACTIVE_MENU_COLOR,
                tabs: [
                  Tab(text: "Places"),
                  Tab(text: "Inspiration"),
                  Tab(text: "Emotions"),
                  Tab(text: "Gallery"),
                  Tab(text: "Travel"),
                ],
              )),
          body: TabBarView(
            children: [
              PlacesPage(),
              InspirationPage(),
              EmotionPage(),
              GalleryPage(),
              TravelPage(),
            ],
          ),
        ));
  }
}
