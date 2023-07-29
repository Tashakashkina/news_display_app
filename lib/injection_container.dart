import 'package:get_it/get_it.dart';
import 'package:news_display_app/features/daily_news/data/data_sources/remote/news_api_service.dart';

import 'package:dio/dio.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerSingleton<Dio>(Dio());

  sl.registerSingleton<NewsApiService>(NewsApiService(sl()));
}
