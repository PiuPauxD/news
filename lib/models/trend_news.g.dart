// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trend_news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrendNews _$TrendNewsFromJson(Map<String, dynamic> json) => TrendNews(
      json['title'] as String,
      json['snippet'] as String,
      json['publisher'] as String,
      json['timestamp'] as String,
      json['newsUrl'] as String,
      json['imageURL'] as String,
    );

Map<String, dynamic> _$TrendNewsToJson(TrendNews instance) => <String, dynamic>{
      'title': instance.title,
      'snippet': instance.author,
      'publisher': instance.source,
      'timestamp': instance.publishedAt,
      'newsUrl': instance.url,
      'imageURL': instance.urlToImage,
    };
