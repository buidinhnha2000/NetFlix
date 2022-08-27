import 'package:dropdownbutton/api/models/movie_data.dart';
import 'package:dropdownbutton/pages/download/download.dart';
import 'package:dropdownbutton/pages/game/game.dart';
import 'package:dropdownbutton/pages/home/home.dart';
import 'package:dropdownbutton/pages/news_and_hot/new_hot.dart';
import 'package:dropdownbutton/routes.dart';
import 'package:dropdownbutton/screen/categories/categories.dart';
import 'package:dropdownbutton/screen/movie_infor/movie_infor.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
            builder: (_) => const HomePage(), settings: settings);
      case game:
        return MaterialPageRoute(
            builder: (_) => const GamePage(), settings: settings);
      case news:
        return MaterialPageRoute(
            builder: (_) => const NewhotPage(), settings: settings);
      case download:
        return MaterialPageRoute(
            builder: (_) => const DownloadPage(), settings: settings);
      case details:
        return MaterialPageRoute(
            builder: (_) => MovieInfor(movie: settings.arguments as MovieData), settings: settings);
      case categories:
        return MaterialPageRoute(
            builder: (_) => const Categories(), settings: settings);
      default:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
          settings: settings,
        );
    }
  }
}
