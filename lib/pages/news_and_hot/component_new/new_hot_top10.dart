import 'package:flutter/material.dart';

class NewhotTop10 extends StatelessWidget {
  const NewhotTop10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size =MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          Padding(padding: const EdgeInsets.only(left: 0),
            child: Container(
              width: size.width,
              color: Colors.black,
              child: new Container(
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.black
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Container(
                              height: 25,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/image3.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(5)
                              ),
                            ),
                          )
                      ),
                      Expanded(
                          flex: 15,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 2),
                            child: Text(
                              "Top 10",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          )
                      )
                    ],
                  )
              ),
            ),
          ),
          Container(
            height: 395,
            width: size.width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Text(
                      "1",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w700
                      ),
                    )
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
                                    Icons.share_outlined,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  SizedBox(height: 5,),
                                  Text(
                                    "Chia se",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(height: 10,),
                                  Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  SizedBox(height: 5,),
                                  Text(
                                    "Danh sach",
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
                                      Icons.play_arrow_rounded,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    SizedBox(height: 5,),
                                    Text(
                                      "Phat",
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
          ),
        ],
      ),
    );
  }
}
