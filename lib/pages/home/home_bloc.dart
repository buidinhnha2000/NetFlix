import 'package:dropdownbutton/api/api.dart';
import 'package:dropdownbutton/api/models/movie_data.dart';

class HomeBloc {
  Future<List<MovieData>>? getMovieData() =>
      Api().getMovieData();
}