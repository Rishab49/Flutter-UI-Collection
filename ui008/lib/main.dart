import 'package:flutter/material.dart';
import 'package:ui001/models/place_model.dart';
import 'package:ui001/models/places_data.dart';
import 'package:ui001/routes/details_page.dart';
import 'package:ui001/tabview.dart';
import 'package:ui001/utility/colors.dart';

import 'models/places_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        print(settings);
        Place place = Place(
            tag: "",
            name: "",
            location: "",
            description: "",
            price: "",
            reviewed: false,
            review_stars: 0,
            img: "img-1");
        var uri = Uri.parse(settings.name as String);
        if (uri.pathSegments.first == "details") {
          PlacesData.places.forEach((k, v) => {
                if (k == uri.pathSegments[1]) {place = v}
              });
          return MaterialPageRoute(
              builder: (context) => DetailsPage(place: place));
        } else {
          return MaterialPageRoute(
              builder: (context) => DetailsPage(place: place));
        }
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        iconTheme: IconThemeData(color: MyColors.TEXT_COLOR),
        appBarTheme: AppBarTheme(backgroundColor: Colors.white, elevation: 0),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu, color: MyColors.TEXT_COLOR),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.person, color: MyColors.TEXT_COLOR))
          ],
        ),
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Row(children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 0, 8.0, 0),
                        child: Text("Discover",
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.bold)),
                      ),
                    )
                  ])),
              Expanded(
                  flex: 9,
                  child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: TabView()))
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          selectedIconTheme: IconThemeData(color: MyColors.TEXT_COLOR),
          unselectedIconTheme:
              IconThemeData(color: MyColors.INACTIVE_MENU_COLOR),
          selectedItemColor: MyColors.TEXT_COLOR,
          unselectedItemColor: MyColors.INACTIVE_MENU_COLOR,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined, color: MyColors.TEXT_COLOR),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart_rounded, color: MyColors.TEXT_COLOR),
                label: "stats"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, color: MyColors.TEXT_COLOR),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline, color: MyColors.TEXT_COLOR),
                label: "Profile")
          ],
        ));
  }
}
