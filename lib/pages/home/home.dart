import 'package:dropdownbutton/base_screen.dart';
import 'package:dropdownbutton/pages/home/components/home_child.dart';
import 'package:dropdownbutton/pages/home/components/home_download.dart';
import 'package:dropdownbutton/pages/home/components/home_footter.dart';
import 'package:dropdownbutton/pages/home/components/home_game.dart';
import 'package:dropdownbutton/pages/home/components/home_header.dart';
import 'package:dropdownbutton/pages/home/components/home_avatar.dart';
import 'package:dropdownbutton/pages/home/components/home_new.dart';
import 'package:dropdownbutton/pages/home/components/home_seenext.dart';
import 'package:dropdownbutton/pages/home/components/home_top10.dart';
import 'package:dropdownbutton/pages/home/home_bloc.dart';
import 'package:dropdownbutton/screen/movie_infor/movie_infor.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final bloc = HomeBloc();
    return BaseScreen(
      backgroundColor: Colors.black,
      body: getBody(),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: '',
        backgroundColor: Colors.white,
        child: Icon(
          Icons.shuffle_rounded,
          color: Colors.redAccent,
        ),
      ),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: ListView(
        children: [
          Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  HomeAvatar(),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 7, right: 15),
                    child: Text(
                      "Top 10 hom nay",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  HomeTop10(),
                  SizedBox(
                    height: 20,
                  ),
                  HomeChild(),
                  SizedBox(
                    height: 20,
                  ),
                  HomeSeeNext(),
                  SizedBox(
                    height: 20,
                  ),
                  HomeDownload(),
                  SizedBox(
                    height: 20,
                  ),
                  HomeGame(),
                  SizedBox(
                    height: 20,
                  ),
                  HomeNew(),
                  SizedBox(
                    height: 20,
                  ),
                  HomeFootter(),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
              HomeHeader(),
            ],
          ),
        ],
      ),
    );
  }
}
