import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:news_display_app/features/domain/entities/article.dart';

abstract class RemoteArticlesState extends Equatable {
  final List<ArticleEntity>? articles;
  // ignore: deprecated_member_use
  final DioError? error;

  const RemoteArticlesState({this.articles, this.error});

  @override
  List<Object> get props => [articles!, error!];
}

class RemoteArticlesLoading extends RemoteArticlesState {
  const RemoteArticlesLoading();
}

class RemoteArticlesDone extends RemoteArticlesState {
  const RemoteArticlesDone(List<ArticleEntity> article)
      : super(articles: article);
}

class RemoteArticlesError extends RemoteArticlesState {
  // ignore: deprecated_member_use
  const RemoteArticlesError(DioError error) : super(error: error);
}
