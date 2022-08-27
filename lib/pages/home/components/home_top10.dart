import 'package:dropdownbutton/pages/home/home_bloc.dart';
import 'package:dropdownbutton/routes.dart';
import 'package:flutter/material.dart';

import '../../../api/models/movie_data.dart';

class HomeTop10 extends StatelessWidget {
  const HomeTop10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    routerMovie(MovieData movie) {
      Navigator.of(context).pushNamed(details, arguments: movie);
    }

    final bloc = HomeBloc();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FutureBuilder<List<MovieData>>(
          future: bloc.getMovieData(),
          builder: (context, snapshot) {
            return SizedBox(
              height: 130,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: snapshot.data?.length ?? 0,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    // return Text('$index');
                    return GestureDetector(
                      onTap: () => routerMovie(snapshot.data![index]),
                      child: Container(
                        height: 130,
                        width: 120,
                        margin: const EdgeInsets.only(right: 0),
                        color: Colors.black,
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Container(
                                height: 130,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          snapshot.data?[index].img ?? ''),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: 130,
                              width: 100,
                              child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 35,
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      // Stroked text as border.
                                      Text(
                                        snapshot.data?[index].top ?? '',
                                        style: TextStyle(
                                          fontSize: 100,
                                          fontWeight: FontWeight.w900,
                                          foreground: Paint()
                                            ..style = PaintingStyle.stroke
                                            ..strokeWidth = 3
                                            ..color = Colors.white,
                                        ),
                                      ),
                                      // Solid text as fill.
                                      Text(
                                        snapshot.data?[index].top ?? '',
                                        style: const TextStyle(
                                          fontSize: 100,
                                          fontWeight: FontWeight.w900,
                                          color: Colors.black45,
                                        ),
                                      ),
                                    ],
                                  )),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            );
          },
        )
      ],
    );
  }
}
