import 'package:http/http.dart' show Client;
import 'dart:convert';

import 'package:tof/models/News.dart';
import 'package:tof/repositories/interfaces/INewsRepository.dart';

class NewsRepository implements INewsRepository {
  Client client = Client();

  @override
  Future<List<News>> getNews() async {
    try {
      final response = await client.get(
        Uri.parse("https://project-tof-api.herokuapp.com/newsletter"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      var list = json.decode(response.body)["news"] as List<dynamic>;
      List<News> news = [];

      for (dynamic item in list) {
        News n = new News.fromJson(item);
        news.add(n);
      }

      return news;
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }
}
