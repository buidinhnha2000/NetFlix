import 'package:dropdownbutton/api/models/movie_data.dart';
import 'package:dropdownbutton/base_screen.dart';
import 'package:dropdownbutton/screen/movie_infor/component/movie_header.dart';
import 'package:dropdownbutton/screen/movie_infor/component/movie_interactive.dart';
import 'package:dropdownbutton/screen/movie_infor/component/movie_select.dart';
import 'package:dropdownbutton/screen/movie_infor/component/movie_video.dart';
import 'package:flutter/material.dart';
import 'component/movie_title.dart';

class MovieInfor extends StatefulWidget {
  const MovieInfor({Key? key, required this.movie}) : super(key: key);

  final MovieData movie;

  @override
  State<MovieInfor> createState() => _MovieInforState();
}

class _MovieInforState extends State<MovieInfor> {
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          MovieHeader(),
          SizedBox(
            height: 5,
          ),
          MovieVideo(linkTrailer: widget.movie.linktrailer ?? ''),
          MovieTitle(movie: widget.movie,),
          MovieInteractive(),
          SizedBox(height: 20,),
          LinearProgressIndicator(
            backgroundColor: Colors.white24,
            value: 0,
            minHeight: 2,
          ),
          MovieSelect(movie: widget.movie,),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}
