class Book {
  String id;
  String title;
  String subtitle;
  String authors;
  String image;
  String url;

  Book({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.authors,
    required this.image,
    required this.url,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: json['id'],
      title: json['title'],
      subtitle: json['subtitle'],
      authors: json['authors'],
      image: json['image'],
      url: json['url'],
    );
  }
}
