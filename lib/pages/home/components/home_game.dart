import 'package:dropdownbutton/pages/game/comp/game_listgame.dart';
import 'package:flutter/material.dart';

import '../../root_app_json.dart';

class HomeGame extends StatelessWidget {
  const HomeGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: 170,
          width: size.height,
          color: Colors.brown,
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                      width: 218,
                      height: 170,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10, ),
                                child: Image.asset("assets/images/netflix.png", width: 45,),
                              ),
                              Text(
                                "TRO CHOI",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 10),
                            child: Column(
                              children: [
                                Text(
                                  "Khong co quang cao, phu phi hoac mua trong ung dung."
                                      "Quyen truy cap khong gioi han cac tro choi doc quyen"
                                      "Quyen truy cap khong gioi han cac tro choi doc quyen. "
                                      "Quyen truy cap khong gioi han cac tro choi doc quyen"
                                      "Quyen truy cap khong gioi han cac tro choi doc quyen. ",
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),

                              ],
                            ),
                          )
                        ],
                      )
                  ),
                  const GameList(),
                ],
              )
          ),
        ),
      ],
    );
  }
}
