import 'package:news_display_app/core/resources/data_state.dart';
import 'package:news_display_app/features/daily_news/data/models/article.dart';
import 'package:news_display_app/features/domain/repository/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() {
    throw UnimplementedError();
  }
}
