
import 'package:dropdownbutton/api/models/movie_data.dart';
import 'package:dropdownbutton/pages/home/home_bloc.dart';
import 'package:flutter/material.dart';
import '../../movie_play.dart';

class MovieTitle extends StatelessWidget {
  const MovieTitle({Key? key, required this.movie}) : super(key: key);

  final MovieData movie;

  @override
  Widget build(BuildContext context) {
    final bloc = HomeBloc();
    routerVideo() {
      // Navigator.pushReplacement(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => VideoPlayer(videoData: 'https://aa.nguonphimmoi.com/20220212/17_19d01bec/index.m3u8',)
      //     ));
      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>VideoPlayer(movie: movie,)));
    }
    return FutureBuilder<List<MovieData>>(
      future: bloc.getMovieData(),
      builder: (context, snapshot) {
        if (snapshot.hasData && snapshot.data != null) {
          return Container(
            margin: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                    children: [
                      Image.asset(
                        "assets/images/netflix.png",
                        height: 35,
                        fit: BoxFit.cover,
                      ),
                      const Text('LOAT PHIM',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500,color: Colors.white54
                        ),
                      )
                    ]
                ),
                Text("${movie.name}",
                  style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w500,),
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "${movie.year}", style: TextStyle(color: Colors.white54, fontSize: 13),
                    ),
                    const SizedBox(width: 10,),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(2),
                      child: Stack(
                        children: [
                          Container(
                              height: 15,
                              color: Colors.white24,
                              child: Text("${movie.episodetotal}", style: TextStyle(fontSize: 13, color: Colors.white54),)
                          ),

                        ],
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Text(
                      '${movie.time}', style: TextStyle(color: Colors.white54, fontSize: 13),
                    ),
                    SizedBox(width: 10,),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(2),
                      child: Stack(
                        children: [
                          Container(
                              height: 15,
                              color: Colors.white54,
                              child: Text("${movie.quality}", style: TextStyle(fontSize: 13, color: Colors.black),)
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Container(
                    height: 45,
                    margin: const EdgeInsets.only(top: 5),
                    child: TextButton(
                      onPressed: routerVideo,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.play_arrow,
                            color: Colors.black,
                            size: 30,
                          ),
                          SizedBox(width: 5,),
                          Text(
                            "Phat",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 17
                            ),
                          ),
                        ],
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                      ),
                    )
                ),
                SizedBox(height: 5,),
                Container(
                    height: 45,
                    margin: const EdgeInsets.only(top: 5),
                    child: TextButton(
                      onPressed: null,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.file_download_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(width: 5,),
                          Text(
                            "Tai xuong T1",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 17
                            ),
                          ),
                        ],
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white24),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      ),
                    )
                ),
                SizedBox(height: 10,),
                Text(
                  '${movie.content}',
                  style: TextStyle(
                      fontSize: 13,
                      height: 1.5,
                      color: Colors.white60
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  'Dien vien: ${movie.actor}',
                  style: TextStyle(
                      fontSize: 13,
                      height: 1.5,
                      color: Colors.white60
                  ),
                )
              ],
            ),
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
