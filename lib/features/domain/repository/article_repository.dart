import 'package:news_display_app/core/resources/data_state.dart';
import 'package:news_display_app/features/domain/entities/article.dart';

abstract class ArticleRepository {
  Future<DataState<List<ArticleEntity>>> getNewsArticles();
}
