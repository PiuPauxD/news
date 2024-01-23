import 'package:json_annotation/json_annotation.dart';

class TrendNews {
  final String title;
  final String snippet;
  final String publisher;
  final String timestamp;
  final String newsUrl;
  final String imageURL;

  TrendNews(this.title, this.snippet, this.publisher, this.timestamp,
      this.newsUrl, this.imageURL);

  factory TrendNews.fromJson(Map<String, dynamic> json) =>
      _$TrendNewsFromJson(json);

  Map<String, dynamic> toJson() => _$TrendNewsToJson(this);
}
