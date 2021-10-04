class News {
  String url, date, title, description, image;

  News.empty();

  News(this.url, this.date, this.title, this.description, this.image);

  factory News.fromJson(Map<String, dynamic> parsedJson) {
    return News(parsedJson['url'], parsedJson['date'], parsedJson['title'],
        parsedJson['description'], parsedJson['image']);
  }
}
