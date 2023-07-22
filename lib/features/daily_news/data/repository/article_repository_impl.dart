// ignore_for_file: deprecated_member_use

import 'dart:io';

import 'package:dio/dio.dart';

import 'package:news_display_app/core/constants/constants.dart';
import 'package:news_display_app/core/resources/data_state.dart';
import 'package:news_display_app/features/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:news_display_app/features/daily_news/data/models/article.dart';
import 'package:news_display_app/features/domain/repository/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  final NewsApiService _newsApiService;

  ArticleRepositoryImpl(this._newsApiService);

  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() async {
    try {
      final httpResponse = await _newsApiService.getNewsArticles(
        apiKey: newsAPIKey,
        country: countryQuery,
        category: categoryQuery,
      );

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(DioError(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioErrorType.badResponse,
            requestOptions: httpResponse.response.requestOptions));
      }
    } on DioError catch (e) {
      return DataFailed(e);
    }
  }
}
