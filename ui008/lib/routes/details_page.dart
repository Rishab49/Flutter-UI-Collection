import 'package:flutter/material.dart';
import 'package:ui001/models/place_model.dart';
import 'package:ui001/utility/colors.dart';
import 'package:ui001/utility/lengths.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({required this.place});
  final Place place;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        Container(
            height: double.infinity,
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: Hero(
                    tag: '${place.tag}',
                    child: Container(
                      height: size.height * 0.40,
                      width: size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/${place.img}.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    child: Container(
                        padding: EdgeInsets.all(16),
                        height: size.height * 0.70,
                        width: size.width,
                        decoration: BoxDecoration(
                            color: MyColors.COLOR_WHITE,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  color: MyColors.TEXT_COLOR as Color,
                                  offset: Offset(0, -5))
                            ],
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25))),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                flex: 3,
                                child: Container(
                                    padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                                    height: double.infinity,
                                    width: double.infinity,
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                      flex: 2,
                                                      child: Text(place.name,
                                                          style: TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold))),
                                                  Expanded(
                                                      flex: 1,
                                                      child: Text(place.price,
                                                          textAlign:
                                                              TextAlign.end,
                                                          style: TextStyle(
                                                              fontSize: 20,
                                                              color: MyColors
                                                                  .ACCENT_COLOR))),
                                                ]),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Icon(Icons.location_on),
                                                  Text(
                                                    place.location,
                                                  ),
                                                ]),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Icon(Icons.star_border,
                                                      color: MyColors
                                                          .CARD_BACKGROUND_COLOR),
                                                  Icon(Icons.star_border,
                                                      color: MyColors
                                                          .CARD_BACKGROUND_COLOR),
                                                  Icon(Icons.star_border,
                                                      color: MyColors
                                                          .CARD_BACKGROUND_COLOR),
                                                  Icon(Icons.star_border,
                                                      color: MyColors
                                                          .CARD_BACKGROUND_COLOR),
                                                  Icon(Icons.star_border,
                                                      color: MyColors
                                                          .CARD_BACKGROUND_COLOR),
                                                ]),
                                          ),
                                        ])),
                              ),
                              Expanded(flex: 1, child: Container()),
                              Expanded(
                                flex: 3,
                                child: Container(
                                    height: double.infinity,
                                    width: double.infinity,
                                    child: Column(children: [
                                      Expanded(
                                        flex: 1,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("People",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold))
                                            ]),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Container(
                                                    alignment: Alignment.center,
                                                    child: Text("1",
                                                        style: TextStyle(
                                                            color: MyColors
                                                                .CARD_BACKGROUND_COLOR)),
                                                    height: double.infinity,
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        color: MyColors
                                                            .TEXT_COLOR)),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Container(
                                                    alignment: Alignment.center,
                                                    child: Text("2",
                                                        style: TextStyle(
                                                            color: MyColors
                                                                .TEXT_COLOR)),
                                                    height: double.infinity,
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        color: MyColors
                                                            .COLOR_WHITE)),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Container(
                                                    alignment: Alignment.center,
                                                    child: Text("3",
                                                        style: TextStyle(
                                                            color: MyColors
                                                                .TEXT_COLOR)),
                                                    height: double.infinity,
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        color: MyColors
                                                            .COLOR_WHITE)),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Container(
                                                    alignment: Alignment.center,
                                                    child: Text("4",
                                                        style: TextStyle(
                                                            color: MyColors
                                                                .TEXT_COLOR)),
                                                    height: double.infinity,
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        color: MyColors
                                                            .COLOR_WHITE)),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Container(
                                                    alignment: Alignment.center,
                                                    child: Text("5",
                                                        style: TextStyle(
                                                            color: MyColors
                                                                .TEXT_COLOR)),
                                                    height: double.infinity,
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        color: MyColors
                                                            .COLOR_WHITE)),
                                              ),
                                            ]),
                                      ),
                                    ])),
                              ),
                              Expanded(flex: 1, child: Container()),
                              Expanded(
                                flex: 3,
                                child: Container(
                                    height: double.infinity,
                                    width: double.infinity,
                                    child: Column(children: [
                                      Expanded(
                                        flex: 1,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text("Description",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold))
                                            ]),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Text(place.description,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                    )),
                                              )
                                            ]),
                                      ),
                                    ])),
                              ),
                              Expanded(flex: 1, child: Container()),
                              Expanded(
                                  flex: 2,
                                  child: Column(children: [
                                    Expanded(
                                      flex: 3,
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Expanded(
                                              flex: 2,
                                              child: Container(
                                                padding: EdgeInsets.all(10),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: MyColors.ACCENT_COLOR,
                                                ),
                                                child: IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                        Icons.favorite_border)),
                                              ),
                                            ),
                                            Expanded(
                                                flex: 1, child: Container()),
                                            Expanded(
                                                flex: 6,
                                                child: TextButton(
                                                    child:
                                                        Text("Book trip Now!"),
                                                    style: ButtonStyle(
                                                        padding: MaterialStateProperty
                                                            .resolveWith(MyLengths
                                                                .getPaddingButton),
                                                        backgroundColor:
                                                            MaterialStateProperty
                                                                .resolveWith(
                                                                    MyColors
                                                                        .getColor)),
                                                    onPressed: () {})),
                                          ]),
                                    ),
                                  ]))
                            ])))
              ],
            )),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            alignment: AlignmentDirectional.topStart,
            height: 56,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 16, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: MyColors.TEXT_COLOR,
                            borderRadius: BorderRadius.circular(20)),
                        child: Icon(Icons.arrow_back,
                            color: MyColors.CARD_BACKGROUND_COLOR)),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
