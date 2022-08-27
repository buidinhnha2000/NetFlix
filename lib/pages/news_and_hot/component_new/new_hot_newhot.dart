import 'package:flutter/material.dart';

class NewhotNewhot extends StatelessWidget {
  const NewhotNewhot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 200,
                color: Colors.black,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.access_alarms,
                        color: Colors.deepOrange,
                      ),
                    ),
                    Expanded(
                        flex: 7,
                        child: Text(
                          "Sap ra mat",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500
                          ),
                        )
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 395,
                width: size.width,
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Column(
                            children: [
                              Text(
                                  "THG 7"
                              ),
                              Text(
                                "21",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600
                                ),
                              )
                            ],
                          ),
                        )
                    ),
                    Expanded(
                      flex: 8,
                      child: Container(
                        width: size.width,
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 200,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage( "assets/images/image1.jpg",),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                  child: const Center(
                                    child: Icon(Icons.play_circle_outline_sharp, size: 50),
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(top: 199),
                                    child: LinearProgressIndicator(
                                      backgroundColor: Colors.red,
                                      valueColor: AlwaysStoppedAnimation(Colors.black),
                                      value: 0,

                                    )
                                ),
                                Container(
                                  height: 200,
                                  width: size.width,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      IconButton(
                                          onPressed: null,
                                          icon: Icon(
                                            Icons.volume_up_rounded,
                                            color: Colors.white,
                                          )
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Container(
                              height: 60,
                              width: size.width,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Image.asset("assets/images/image_name2.webp"),
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(height: 10,),
                                      Icon(
                                        Icons.notifications_none_outlined,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                      SizedBox(height: 5,),
                                      Text(
                                        "Nhac toi",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Column(
                                      children: [
                                        SizedBox(height: 10,),
                                        Icon(
                                          Icons.info_outlined,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                        SizedBox(height: 5,),
                                        Text(
                                          "Thong tin",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 20,),
                            Container(
                              height: 100,
                              width: size.width,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Mua 5 ra mat vao 21 thang 7",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Text("ajsdgashjdajsdgashjdajsdgashjdajsdgashjdajsdgashjdajsdgashjdajsdgashjdajsdgashjdajsdgashjdajsdgashjd"),
                                  SizedBox(height: 5,),
                                  Text(
                                    "Ly thu - Tre em - Thieu nhi - Bui Dinh Nha dep trai",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      )
    );
  }
}
