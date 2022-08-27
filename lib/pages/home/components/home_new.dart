import 'package:flutter/material.dart';

import '../../root_app_json.dart';

class HomeNew extends StatelessWidget {
  const HomeNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 7, right: 15),
          child: Text(
            "Chi co tren NetFlix",
            style: TextStyle(
              fontSize: 20,
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
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                  children: List.generate(myList.length, (index) {
                    return Container(
                      margin: EdgeInsets.only(right: 8, ),
                      width: 180,
                      height: 240,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(myList[index]["img"]),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(7)
                            ),
                          ),
                          Container(
                            height: 240,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.black.withOpacity(0.95),
                                      Colors.black.withOpacity(0),
                                    ],
                                    end: Alignment.topCenter,
                                    begin: Alignment.bottomCenter)),
                          ),
                          Container(
                            height: 240,
                            width: size.width,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 30, bottom: 10),
                                  child: Image.asset(
                                    "assets/images/image_logo_1.webp",
                                    width: 150,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  })
              ),
            )
        )
      ],
    );
  }
}
