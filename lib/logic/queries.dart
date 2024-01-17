import 'package:dio/dio.dart';
import 'package:news/models/categories.dart';

class HttpQueries {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://google-news13.p.rapidapi.com',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 5),
      headers: {
        'X-RapidAPI-Key': 'e6926b3280mshc283c52bb356d98p1d6421jsn7a7b71559cba',
        'X-RapidAPI-Host': 'google-news13.p.rapidapi.com',
      },
    ),
  );

  Future<Categories> getCategory() async {
    Response response;
    response = await dio.get(
      '/latest',
    );
    final List<dynamic> result = response.data['result'];
    // ignore: unnecessary_null_comparison
    result.removeWhere((e) => e == null);
    return Categories(
      categories: List<String>.from(result),
    );
  }
}
