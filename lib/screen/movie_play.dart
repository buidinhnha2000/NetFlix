import 'package:dropdownbutton/api/models/movie_data.dart';
import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

import '../pages/home/home_bloc.dart';

class MoviePlay extends StatefulWidget {
  final VideoPlayerController videoPlayerController;
  final bool loop;

  const MoviePlay(
      {required this.videoPlayerController, required this.loop, Key? key})
      : super(key: key);

  @override
  State<MoviePlay> createState() => _MoviePlayState();
}

class _MoviePlayState extends State<MoviePlay> {
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _chewieController = ChewieController(
        videoPlayerController: widget.videoPlayerController,
        looping: widget.loop,
        aspectRatio: 16 / 9,
        autoInitialize: true);
  }

  @override
  Widget build(BuildContext context) {
    return Chewie(
      controller: _chewieController,
    );
  }

  @override
  void dispose() {
    super.dispose();
    widget.videoPlayerController.dispose();
    _chewieController.dispose();
  }
}

class VideoPlayer extends StatefulWidget {
  // final String videoData;
  const VideoPlayer({Key? key, required this.movie}) : super(key: key);

  final MovieData movie;

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  @override
  Widget build(BuildContext context) {
    final bloc = HomeBloc();
    return FutureBuilder(
        future: bloc.getMovieData(),
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data != null) {
            return Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.black,
                  leading: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                body: Container(
                  color: Colors.black,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: MoviePlay(
                        videoPlayerController: VideoPlayerController.network(
                            "${widget.movie.tap?.first.videotap}"),
                        loop: true,
                      ),
                    ),
                  ),
                ));
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}
