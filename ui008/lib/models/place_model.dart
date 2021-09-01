class Place {
  Place(
      {required this.name,
      required this.location,
      required this.price,
      required this.description,
      required this.reviewed,
      required this.review_stars,
      required this.img,
      required this.tag});

  final String name;
  final String location;
  final String price;
  final String description;
  final bool reviewed;
  final int review_stars;
  final String img;
  final String tag;
}
