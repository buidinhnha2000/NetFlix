import 'package:dropdownbutton/pages/home/home_bloc.dart';
import 'package:flutter/material.dart';
import '../../api/models/movie_data.dart';
import '../../widgets/popup.dart';
import '../movie_infor/component/movie_interactive.dart';

class SearchMovie extends StatefulWidget {
  const SearchMovie({Key? key}) : super(key: key);

  @override
  State<SearchMovie> createState() => _SearchMovieState();
}

class _SearchMovieState extends State<SearchMovie> {
  String _searchQuery = '';
  final bloc = HomeBloc();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return IconButton(
        onPressed: () {
          showGeneralDialog(
              context: context,
              barrierDismissible: false,
              transitionDuration: const Duration(milliseconds: 500),
              transitionBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity: animation,
                  child: ScaleTransition(
                    scale: animation,
                    child: child,
                  ),
                );
              },
              pageBuilder: (context, animation, secondaryAnimation) {
                return StatefulBuilder(
                  builder: (context, setState) => Scaffold(
                    backgroundColor: Colors.black,
                    appBar: AppBar(
                      backgroundColor: Colors.black,
                      actions: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                PopupMenu(),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    body: ListView(
                      children: [
                        Container(
                          height: 50,
                          width: size.width,
                          color: Colors.white24,
                          child: Row(
                            children: [
                              const Expanded(
                                flex: 1,
                                child: Icon(Icons.search_rounded,
                                    color: Colors.white54),
                              ),
                              Expanded(
                                flex: 3,
                                child: TextField(
                                  decoration: const InputDecoration(
                                    hintText:
                                        'Search for programme film, movie,...',
                                    border: InputBorder.none,
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      _searchQuery = value;
                                    });
                                  },
                                  style: const TextStyle(color: Colors.white54),
                                ),
                              ),
                              const Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.keyboard_voice,
                                  color: Colors.white54,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 2,
                            ),
                            FutureBuilder<List<MovieData>>(
                              initialData: const [],
                                future: bloc.getMovieData(),
                                builder: (context, snapshot) {
                                  var list = (snapshot.data ?? [])
                                      .where((element) =>
                                          element.name
                                              ?.toLowerCase()
                                              .contains(_searchQuery) ??
                                          false)
                                      .toList();
                                  return ListView.builder(
                                      scrollDirection: Axis.vertical,
                                      itemCount: list.length,
                                      shrinkWrap: true,
                                      itemBuilder: (context, index) {
                                        return GestureDetector(
                                          onTap: () {
                                            showModalBottomSheet(
                                                context: context,
                                                builder: (BuildContext context) {
                                                  return Container(
                                                    padding:
                                                        const EdgeInsets.all(10),
                                                    height: 250,
                                                    color: Colors.black26,
                                                    child: Column(
                                                      children: [
                                                        SizedBox(
                                                            height: 130,
                                                            width: size.width,
                                                            child: Row(
                                                              children: [
                                                                Expanded(
                                                                  flex: 1,
                                                                  child:
                                                                      Container(
                                                                    width: 100,
                                                                    height: 100,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            borderRadius: BorderRadius.circular(
                                                                                10),
                                                                            image:
                                                                                const DecorationImage(
                                                                              image:
                                                                                  NetworkImage("snapshot."),
                                                                              fit:
                                                                                  BoxFit.cover,
                                                                            )),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  flex: 3,
                                                                  child: Padding(
                                                                    padding: const EdgeInsets
                                                                            .only(
                                                                        left: 10),
                                                                    child: Column(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        const Text(
                                                                          "Ngoi nha xac song",
                                                                          style: TextStyle(
                                                                              fontSize:
                                                                                  20,
                                                                              color:
                                                                                  Colors.deepOrange),
                                                                        ),
                                                                        const SizedBox(
                                                                          height:
                                                                              5,
                                                                        ),
                                                                        Row(
                                                                          children: const [
                                                                            Text(
                                                                                "HD"),
                                                                            SizedBox(
                                                                              width:
                                                                                  5,
                                                                            ),
                                                                            Text(
                                                                                "12"),
                                                                            SizedBox(
                                                                              width:
                                                                                  5,
                                                                            ),
                                                                            Text(
                                                                                "Lang man"),
                                                                            SizedBox(
                                                                              width:
                                                                                  5,
                                                                            ),
                                                                            Text(
                                                                                "60 phut"),
                                                                          ],
                                                                        ),
                                                                        const SizedBox(
                                                                          height:
                                                                              5,
                                                                        ),
                                                                        const Text(
                                                                            "sdhfgsd fsdfjhsdf sdfjsdhfsd fsdhjfvbsdjf sdfjsdhfhvsdbjf sdfhjsdfj sdfghsd"),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            )),
                                                        Column(
                                                          children: [
                                                            const SizedBox(
                                                              height: 70,
                                                              child:
                                                                  MovieInteractive(),
                                                            ),
                                                            const LinearProgressIndicator(
                                                              backgroundColor:
                                                                  Colors.white54,
                                                              minHeight: 1,
                                                              value: 0,
                                                            ),
                                                            const SizedBox(
                                                              height: 5,
                                                            ),
                                                            Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: const [
                                                                Expanded(
                                                                    flex: 4,
                                                                    child: Text(
                                                                        'Thong tin & gioi thieu')),
                                                                Expanded(
                                                                  flex: 1,
                                                                  child: Icon(Icons
                                                                      .navigate_next),
                                                                )
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                });
                                          },
                                          child: Column(
                                            children: [
                                              Container(
                                                  height: 70,
                                                  width: size.width,
                                                  color: Colors.white10,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        width: 100,
                                                        height: 70,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(10),
                                                            image:
                                                                DecorationImage(
                                                              image: NetworkImage(
                                                                  list[
                                                                              index]
                                                                          .img ??
                                                                      ''),
                                                              fit: BoxFit.cover,
                                                            )),
                                                      ),
                                                      SizedBox(
                                                        width: 250,
                                                        child: Text(
                                                          list[index]
                                                                  .name ??
                                                              '',
                                                          style: const TextStyle(
                                                              fontSize: 17,
                                                              color: Colors
                                                                  .deepPurpleAccent),
                                                        ),
                                                      ),
                                                      const Icon(Icons.more_vert)
                                                    ],
                                                  )),
                                              const SizedBox(
                                                height: 2,
                                              )
                                            ],
                                          ),
                                        );
                                      });
                                })
                          ],
                        )
                      ],
                    ),
                  ),
                );
              });
        },
        icon: const Icon(
          Icons.search,
          color: Colors.white,
          size: 28,
        ));
  }
}
