import 'package:dio/dio.dart';
import 'package:news/models/trend_news.dart';

class HttpQueries {
  final dio = Dio(
    BaseOptions(
      queryParameters: {'lr': 'ru-RU'},
      baseUrl: 'https://newsapi.org/',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 5),
      headers: {
        'X-RapidAPI-Key': 'eca906133083436a9d49199aa164aca6',
      },
    ),
  );

  Future<List<TrendNews>> getCategories(String path) async {
    Response response;
    response = await dio.get(
      path,
    );
    final List<dynamic> result = response.data['results'];
    final List<TrendNews> _news = [];
    // ignore: unnecessary_null_comparison
    result.removeWhere((e) => e == null);
    for (var i in result) {
      _news.add(TrendNews.fromJson(i));
    }
    return _news;
  }
}
