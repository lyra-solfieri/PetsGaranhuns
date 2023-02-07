class Pet {
  final String id;
  final String name;
  final String image;
  final String description;
  final String location;
  final String song;
  final String food;

  const Pet({
    required this.id,
    required this.image,
    required this.description,
    required this.location,
    required this.song,
    required this.food,
    required this.name,
  });

  factory Pet.fromJson(Map<String, dynamic> json) {
    return Pet(
      id: json['id'],
      image: json['image'],
      description: json['description'],
      location: json['location'],
      song: json['song'],
      food: json['food'],
      name: json['name'],
    );
  }
}
