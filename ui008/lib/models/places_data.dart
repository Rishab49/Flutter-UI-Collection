import 'package:ui001/models/place_model.dart';

class PlacesData {
  static Map<String, Place> places = {
    "Yosemite": new Place(
        name: "Yosemite",
        location: "California ,USA",
        price: "\$250",
        description:
            "Yosemite is located in California USA, it is located near a wild reserver in callifornia,It is one of the most beautiful beaches to visit in USA",
        reviewed: false,
        review_stars: 0,
        img: "img-2",
        tag: "img-1"),
    "Pir Panjal": Place(
        name: "Pir Panjal",
        location: "Kashmir,India",
        price: "\$550",
        description:
            "It lies to the south of Himalayan range and located in the city of Gulmerg in India.It is one of the most famous mountain range in World",
        reviewed: false,
        review_stars: 0,
        img: "img-3",
        tag: "img-2"),
    "Himalayan Range": Place(
        name: "Himalayan Range",
        location: "Nepal",
        price: "\$150",
        description:
            "It is the most famous mountain range in the world which comprise of nearly all of the highest mountains in the world",
        reviewed: false,
        review_stars: 0,
        img: "img-4",
        tag: "img-3"),
    "Purvanchal Range": Place(
        name: "Purvanchal Range",
        location: "Meghalaya",
        price: "\$250",
        description:
            "The Purvanchal Range can be considered as the extension of Himalayas in the eastern part of India as the process of formation of this range is quite similar to that of Himalayas, although the range is not as high as the Himalayas.",
        reviewed: false,
        review_stars: 0,
        img: "img-1",
        tag: "img-4"),
    "Aravalli Range": Place(
        name: "Aravalli Range",
        location: "Meghalaya",
        price: "\$350",
        description:
            "The oldest mountain range of India, The Aravalli Range is also the oldest mountain range in the world. Width of range varies from 10km to 100km.",
        reviewed: false,
        review_stars: 0,
        img: "img-1",
        tag: "img-5"),
  };
}
