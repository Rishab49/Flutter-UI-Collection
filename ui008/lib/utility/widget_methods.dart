import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui001/models/place_model.dart';
import 'package:ui001/models/places_data.dart';
import 'package:ui001/utility/colors.dart';

class MyMethods {
  MyMethods({required this.context, required this.size});
  final BuildContext context;
  final Size size;

  List<Widget> CreatePlaces() {
    List<Widget> placesWidget = <Widget>[];
    Map<String, Place> places = PlacesData.places;
    places.forEach((k, v) => {
          placesWidget.add(Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 0, 8.0, 0),
            child: Hero(
              tag: v.tag,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/details/${v.name}');
                },
                child: Container(
                    height: size.height * 0.20,
                    width: size.width * 0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                        image: AssetImage("assets/images/${v.img}.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(flex: 9, child: Container()),
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(v.name,
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          color: MyColors.COLOR_WHITE)),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Icon(Icons.location_on,
                                        color: MyColors.COLOR_WHITE, size: 12)),
                                Expanded(
                                    flex: 10,
                                    child: Text(v.location,
                                        style: TextStyle(
                                            color: MyColors.COLOR_WHITE)))
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ),
          ))
        });

    return placesWidget;
  }
}
