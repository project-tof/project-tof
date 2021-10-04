import 'package:tof/models/News.dart';

abstract class INewsRepository {
  Future<List<News>> getNews();
}
