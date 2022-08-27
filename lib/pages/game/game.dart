import 'package:dropdownbutton/base_screen.dart';
import 'package:dropdownbutton/pages/game/comp/game_avater.dart';
import 'package:dropdownbutton/pages/game/comp/game_haeder.dart';
import 'package:dropdownbutton/pages/game/comp/game_listgame.dart';
import 'package:dropdownbutton/pages/game/comp/game_trailer.dart';
import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      backgroundColor: Colors.black,
      body: getBody(),
    );
  }
  Widget getBody(){
    var size = MediaQuery.of(context).size;
    return ListView(
      children: [
        GameHeader(),
        GameAvatar(),
        Padding(
            padding: const EdgeInsets.only(left: 10, top: 20),
          child: Text(
            "Tat ca tro choi tren dien thoai",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SingleChildScrollView(
          child: GameList(),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Text(
            "Tro choi tren dien thoai",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 0,),
        GameTrailer(),
      ],
    );
  }
}
