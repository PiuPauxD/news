import 'package:json_annotation/json_annotation.dart';

part 'trend_news.g.dart';

@JsonSerializable()
class TrendNews {
  final String title;
  final String author;
  final String source;
  final String publishedAt;
  final String url;
  final String urlToImage;

  TrendNews(this.title, this.author, this.source, this.publishedAt, this.url,
      this.urlToImage);

  factory TrendNews.fromJson(Map<String, dynamic> json) =>
      _$TrendNewsFromJson(json);

  Map<String, dynamic> toJson() => _$TrendNewsToJson(this);
}
