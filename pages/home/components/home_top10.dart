import 'package:dropdownbutton/pages/root_app_json.dart';
import 'package:flutter/material.dart';


class HomeTop10 extends StatelessWidget {
  const HomeTop10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 7, right: 15),
          child: Text(
            "Top 10 hom nay",
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: List.generate(myList10.length, (index) {

                return Container(
                  margin: EdgeInsets.only(right: 0),
                  height: 100,
                  width: 100,
                  color: Colors.black,
                  child: Stack(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                image: DecorationImage(
                                  image: AssetImage(myList10[index]["img"]),
                                  fit: BoxFit.cover,
                                )
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: size.width,
                        child: Padding(padding: const EdgeInsets.only(top: 16,),
                            child: Stack(
                              children: <Widget>[
                                // Stroked text as border.
                                Text(
                                  myList10[index]['text'],
                                  style: TextStyle(
                                    fontSize: 90,
                                    fontWeight: FontWeight.w900,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 3
                                      ..color = Colors.white,
                                  ),
                                ),
                                // Solid text as fill.
                                Text(
                                  myList10[index]['text'],
                                  style: TextStyle(
                                    fontSize: 90,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black45,
                                  ),
                                ),
                              ],
                            )
                        ),
                      )
                    ],
                  ),
                );
              })
          ),
        )

      ],
    );
  }
}
