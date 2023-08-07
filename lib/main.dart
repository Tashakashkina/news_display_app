import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_display_app/config/theme/light_theme.dart';
import 'package:news_display_app/features/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:news_display_app/features/presentation/bloc/article/remote/remote_article_event.dart';
import 'package:news_display_app/features/presentation/pages/home/daily_news.dart';
import 'package:news_display_app/injection_container.dart';

import 'config/theme/dark_theme.dart';

Future<void> main() async {
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RemoteArticlesBloc>(
      create: (context) => sl()..add(GetArticles()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        home: const DailyNews(),
      ),
    );
  }
}
