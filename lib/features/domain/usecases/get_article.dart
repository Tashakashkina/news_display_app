import 'package:news_display_app/core/usecases/usecase.dart';
import 'package:news_display_app/features/domain/entities/article.dart';
import 'package:news_display_app/features/domain/repository/article_repository.dart';

import '../../../core/resources/data_state.dart';

class GetArticleUseCase
    implements UseCase<DataState<List<ArticleEntity>>, void> {
  final ArticleRepository _articleRepository;
  GetArticleUseCase(this._articleRepository);

  @override
  Future<DataState<List<ArticleEntity>>> call({void params}) {
    return _articleRepository.getNewsArticles();
  }
}
