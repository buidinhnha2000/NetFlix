import 'package:flutter/material.dart';

class GameTrailer extends StatelessWidget {
  const GameTrailer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10),
          height: 270,
          width: size.width,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 8, right: 8),
                height: 200,
                width: size.width,
                child: Stack(
                  children: [
                    Container(
                      height: 200,
                      width: size.width,
                      decoration: BoxDecoration(
                          image:const  DecorationImage(
                              image: AssetImage(
                                "assets/images/image1.jpg",
                              ), fit: BoxFit.cover
                          ),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Padding(
                          padding: const EdgeInsets.only(top: 195),
                          child: LinearProgressIndicator(
                            backgroundColor: Colors.red,
                            valueColor: AlwaysStoppedAnimation(Colors.black),
                            value: 0,

                          )
                      ),
                    ),
                    const Center(
                      child: Icon(Icons.play_circle_outline_sharp, size: 50),
                    ),
                    Container(
                      height: 200,
                      width: size.width,
                      margin: const EdgeInsets.only(top: 10),
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
                          ),
                        ],
                      )
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5, left: 8, right: 8),
                height: 60,
                width: size.width,
                child: Row(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/image1.jpg",
                            ), fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(15)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Rise Pf dsf",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            "cccs sdfsd",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          height: 270,
          width: size.width,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 8, right: 8),
                height: 200,
                width: size.width,
                child: Stack(
                  children: [
                    Container(
                      height: 200,
                      width: size.width,
                      decoration: BoxDecoration(
                          image:const  DecorationImage(
                              image: AssetImage(
                                "assets/images/image2.jpg",
                              ), fit: BoxFit.cover
                          ),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Padding(
                          padding: const EdgeInsets.only(top: 195),
                          child: LinearProgressIndicator(
                            backgroundColor: Colors.red,
                            valueColor: AlwaysStoppedAnimation(Colors.black),
                            value: 0,

                          )
                      ),
                    ),
                    const Center(
                      child: Icon(Icons.play_circle_outline_sharp, size: 50),
                    ),
                    Container(
                        height: 200,
                        width: size.width,
                        margin: const EdgeInsets.only(top: 10),
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
                            ),
                          ],
                        )
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5, left: 8, right: 8),
                height: 60,
                width: size.width,
                child: Row(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/image2.jpg",
                            ), fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(15)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Rise Pf dsf",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            "cccs sdfsd",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          height: 270,
          width: size.width,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 8, right: 8),
                height: 200,
                width: size.width,
                child: Stack(
                  children: [
                    Container(
                      height: 200,
                      width: size.width,
                      decoration: BoxDecoration(
                          image:const  DecorationImage(
                              image: AssetImage(
                                "assets/images/image3.jpg",
                              ), fit: BoxFit.cover
                          ),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Padding(
                          padding: const EdgeInsets.only(top: 195),
                          child: LinearProgressIndicator(
                            backgroundColor: Colors.red,
                            valueColor: AlwaysStoppedAnimation(Colors.black),
                            value: 0,

                          )
                      ),
                    ),
                    const Center(
                      child: Icon(Icons.play_circle_outline_sharp, size: 50),
                    ),
                    Container(
                        height: 200,
                        width: size.width,
                        margin: const EdgeInsets.only(top: 10),
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
                            ),
                          ],
                        )
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5, left: 8, right: 8),
                height: 60,
                width: size.width,
                child: Row(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/image3.jpg",
                            ), fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(15)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Rise Pf dsf",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            "cccs sdfsd",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
