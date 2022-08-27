import 'package:flutter/material.dart';

import '../../root_app_json.dart';

class GameList extends StatelessWidget {
  const GameList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: List.generate(myList.length, (index) {
              return Container(
                height: 170,
                width: 100,
                margin: EdgeInsets.only(left: 8, top: 8),
                child: Column(
                  children: [
                    Container(
                      decoration: new BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(myList[index]["img"]),
                              fit: BoxFit.cover
                          ),
                          borderRadius: BorderRadius.circular(7)
                      ),
                      height: 100,
                      width: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Rise Of KingDom of thing",
                            style: TextStyle(fontSize: 13, ),
                          ),
                          Text(
                            "Giai tri",
                            style: TextStyle(fontSize: 13,fontWeight: FontWeight.w300 ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            })
        ),
      ),
    );
  }
}
