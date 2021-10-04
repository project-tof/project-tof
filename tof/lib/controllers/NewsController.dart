import 'package:tof/models/News.dart';
import 'package:tof/repositories/NewsRepository.dart';

class NewsController {
  final NewsRepository _newsRepository = NewsRepository();

  Future<List<News>> fetchNews() {
    return _newsRepository.getNews();
  }
}
