import 'package:flutter/material.dart';

import '../../root_app_json.dart';

class HomeDownload extends StatelessWidget {
  const HomeDownload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 15),
          child: Text(
            "Tep tai xuong cho ban",
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
              children: [
                Container(
                  decoration: new BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/image2.jpg"),
                          fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.circular(7)
                  ),
                  margin: EdgeInsets.only(right: 0),
                  height: 120,
                  width: 208,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 180),
                        child: Icon(Icons.navigate_next,
                          size: 30,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                        child: Container(
                            child: Column(
                              children: [
                                Text(
                                  "Xem trong khi di chuyen",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),),
                                Text("Nhan de thiet lap tep da tai "
                                    "xuong cho ban va thuong thuc ngoai"
                                    "tuyen cac bo phim va chuong trinh de xuat",
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                ),
                Row(
                    children: List.generate(myList.length, (index) {
                      return Container(
                        margin: EdgeInsets.only(left: 8),
                        width: 100,
                        height: 120,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(myList[index]["img"]),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(7)
                        ),
                      );
                    })
                )

              ],
            ),
          ),
        )
      ],
    );
  }
}
