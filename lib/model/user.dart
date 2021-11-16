class User {
  String firstName;
  String lastName;
  List<Book> books;

  User({
    required this.books,
    required this.firstName,
    required this.lastName,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      books: (json['books'] as List).map((e) => Book.fromJson(e)).toList(),
      firstName: json['firstName'],
      lastName: json['lastName'],
    );
  }
}

class Book {
  String title;
  String author;
  String details;
  double rating;
  int totalPages;
  List<Chapter> chapters;

  Book({
    required this.title,
    required this.author,
    required this.details,
    required this.rating,
    required this.totalPages,
    required this.chapters,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      title: json["title"],
      author: json["author"],
      details: json["details"],
      rating: json["rating"],
      totalPages: json["totalPages"],
      chapters:
          (json["chapters"] as List).map((e) => Chapter.fromJson(e)).toList(),
    );
  }
}

class Chapter {
  String title;
  String description;
  int order;

  Chapter({
    required this.title,
    required this.description,
    required this.order,
  });

  factory Chapter.fromJson(Map<String, dynamic> json) {
    return Chapter(
      title: json["title"],
      description: json["description"],
      order: json["order"],
    );
  }
}
