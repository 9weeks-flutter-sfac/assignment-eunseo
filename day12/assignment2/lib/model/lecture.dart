class Lecture {
  String name;
  String description;
  String image;
  int price;

  Lecture({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });

  Lecture.fromMap(Map<String, dynamic> map)
      : name = map["name"],
        description = map["description"],
        price = map["price"],
        image = map["image"];
}
