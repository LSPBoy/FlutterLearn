
int counter = 1;
class MovieItem {
  late int rank;
  late String imageURL;
  late String title;
  late String playDate;
  late double rating;
  late List<String> genres;
  late List<Actor> casts;
  late Director director;
  late String originalTitle;

  MovieItem.fromMap(Map<String, dynamic> json) {
    rank = counter++;
    imageURL = json["images"]["medium"];
    title = json["title"];
    playDate = json["year"];
    rating = json["rating"]["average"];
    casts = (json["casts"] as List<dynamic>).map((e) {
      return Actor.fromMap(e);
    }).toList();
    director = Director.fromMap(json["directors"][0]);
    originalTitle = json["original_title"];
  }
}

class Person {
  late String name;
  late String avatarURL;

  Person.fromMap(Map<String, dynamic> json) {
    name = json["name"];
    avatarURL = json["avatars"]["medium"];
  }
}

class Actor extends Person {
  Actor.fromMap(Map<String, dynamic> json): super.fromMap(json);
}

class Director extends Person {
  Director.fromMap(Map<String, dynamic> json): super.fromMap(json);
}