import 'package:flutter/material.dart';
import 'package:ui001/utility/colors.dart';
import 'package:ui001/utility/widget_methods.dart';

class PlacesPage extends StatefulWidget {
  PlacesPage({Key? key}) : super(key: key);

  @override
  _PlacesPageState createState() => _PlacesPageState();
}

class _PlacesPageState extends State<PlacesPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final widgetMethods = MyMethods(context: context, size: size);
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
      child: Column(
        children: [
          Expanded(
              flex: 4,
              child: Row(children: [
                Expanded(
                    flex: 1,
                    child: ListView(
                        padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                        scrollDirection: Axis.horizontal,
                        children: widgetMethods.CreatePlaces()))
              ])),
          Expanded(
              flex: 1,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                      child: Text("Explore More",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                      child: Text("See All",
                          style: TextStyle(
                            color: MyColors.ACCENT_COLOR,
                            fontSize: 16,
                          )),
                    ),
                  ])),
          Expanded(
              flex: 2,
              child: Row(children: [
                Expanded(
                    flex: 1,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 0, 16),
                          child: Container(
                              height: double.infinity,
                              width: size.width * 0.20,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color:
                                                MyColors.CARD_BACKGROUND_COLOR),
                                        height: double.infinity,
                                        width: double.infinity,
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              20.0, 0, 20.0, 0),
                                          child: Image(
                                              fit: BoxFit.contain,
                                              image: AssetImage(
                                                  "assets/images/kayak.png")),
                                        )),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text("Kayaking",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: MyColors.TEXT_COLOR)),
                                  )
                                ],
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 0, 16),
                          child: Container(
                              height: double.infinity,
                              width: size.width * 0.20,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color:
                                                MyColors.CARD_BACKGROUND_COLOR),
                                        height: double.infinity,
                                        width: double.infinity,
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              20.0, 0, 20.0, 0),
                                          child: Image(
                                              fit: BoxFit.contain,
                                              image: AssetImage(
                                                  "assets/images/diving.png")),
                                        )),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text("Snorkeling",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: MyColors.TEXT_COLOR)),
                                  )
                                ],
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 0, 16),
                          child: Container(
                              height: double.infinity,
                              width: size.width * 0.20,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color:
                                                MyColors.CARD_BACKGROUND_COLOR),
                                        height: double.infinity,
                                        width: double.infinity,
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              20.0, 0, 20.0, 0),
                                          child: Image(
                                              fit: BoxFit.contain,
                                              image: AssetImage(
                                                  "assets/images/air-hot-balloon.png")),
                                        )),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text("Ballooning",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: MyColors.TEXT_COLOR)),
                                  )
                                ],
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 0, 16),
                          child: Container(
                              height: double.infinity,
                              width: size.width * 0.20,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color:
                                                MyColors.CARD_BACKGROUND_COLOR),
                                        height: double.infinity,
                                        width: double.infinity,
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              20.0, 0, 20.0, 0),
                                          child: Image(
                                              fit: BoxFit.contain,
                                              image: AssetImage(
                                                  "assets/images/hiking.png")),
                                        )),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text("Hiking",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: MyColors.TEXT_COLOR)),
                                  )
                                ],
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                          child: Container(
                              height: double.infinity,
                              width: size.width * 0.20,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color:
                                                MyColors.CARD_BACKGROUND_COLOR),
                                        height: double.infinity,
                                        width: double.infinity,
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              20.0, 0, 20.0, 0),
                                          child: Image(
                                              fit: BoxFit.contain,
                                              image: AssetImage(
                                                  "assets/images/paragliding.png")),
                                        )),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text("Paragliding",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: MyColors.TEXT_COLOR)),
                                  )
                                ],
                              )),
                        ),
                      ],
                    ))
              ])),
        ],
      ),
    );
  }
}
