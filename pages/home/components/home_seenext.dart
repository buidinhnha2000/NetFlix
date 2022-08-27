
import 'package:flutter/material.dart';

import '../../root_app_json.dart';

class HomeSeeNext extends StatelessWidget {
  const HomeSeeNext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 15),
          child: Text(
            "Danh sach tiep tuc xem cua ban",
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 8,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
                children: List.generate(myList.length, (index) {
                  return Container(
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white12,
                    ),
                    margin: EdgeInsets.only(right: 8),
                    height: 125,
                    width: 100,
                    child: Stack(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 25),
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(myList[index]['img']),
                                      fit: BoxFit.cover
                                  ),
                                  borderRadius: BorderRadius.circular(7)
                              ),
                            ),
                          ),
                        ),
                        Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30, top: 30),
                              child: Icon(
                                Icons.play_circle_outline_sharp,
                                color: Colors.white,
                                size: 40,

                              ),
                            )
                        ),
                        Container(
                          height: 125,
                          width: size.width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(padding: const EdgeInsets.only(bottom: 3),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.info_outlined, size: 20,),

                                    Icon(Icons.thumb_up_alt_outlined, size: 20),
                                  ],
                                ),)
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 97),
                            child: LinearProgressIndicator(
                              backgroundColor: Colors.red,
                              valueColor: AlwaysStoppedAnimation(Colors.black),
                              value: 0,
                            )
                        )

                      ],
                    ),
                  );
                })
            ),
          ),
        )
      ],
    );
  }
}
