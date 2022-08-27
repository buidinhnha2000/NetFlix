import 'package:dropdownbutton/pages/home/home_bloc.dart';
import 'package:flutter/material.dart';
import '../../../api/models/movie_data.dart';
import '../../../pages/root_app_json.dart';

class MovieSelect extends StatefulWidget {
  const MovieSelect({super.key, required this.movie});

  final MovieData movie;

  @override
  State<MovieSelect> createState() => _MovieSelectState();
}

class _MovieSelectState extends State<MovieSelect>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final bloc = HomeBloc();
    return FutureBuilder(
        future: bloc.getMovieData(),
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data != null) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: TabBar(
                    controller: _tabController,
                    tabs: [
                      Tab(
                        child: Text(
                          "TAP PHIM",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "TRAILER",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "TUONG TU",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                  height: 400,
                  width: double.maxFinite,
                  child: TabBarView(
                    controller: _tabController,
                    children: <Widget>[
                      ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: widget.movie.tap?.length ?? 0,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {},
                              child: Container(
                                  padding: EdgeInsets.only(bottom: 10),
                                  height: 130,
                                  width: size.width,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: NetworkImage(widget.movie
                                                        .tap?[index].imgtap ??
                                                    ''),
                                                fit: BoxFit.cover,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(7)),
                                          width: 50,
                                          height: 100,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                            padding: EdgeInsets.only(top: 8),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  height: 87,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        widget.movie.tap?[index].nametap ?? '',
                                                        style: const TextStyle(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                      const SizedBox(
                                                        height: 2,
                                                      ),
                                                      Text(
                                                        widget.movie.tap?[index]?.contenttap ?? '',
                                                        style: const TextStyle(
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            color:
                                                                Colors.white54),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      widget.movie.tap?[index].ghichutap ?? '',
                                                      style: const TextStyle(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color:
                                                              Colors.white70),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ))
                                    ],
                                  )),
                            );
                          }),
                      GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio: 0.75,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(myList[index]["img"]),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(7),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                      Center(
                        child: Text("It's sunny here"),
                      ),
                    ],
                  ),
                )
              ],
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}
