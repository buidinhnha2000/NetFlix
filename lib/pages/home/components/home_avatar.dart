import 'package:flutter/material.dart';

class HomeAvatar extends StatelessWidget {
  const HomeAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
            height: 500,
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/image2.jpg"),
                  fit: BoxFit.cover,
                ))),
        Container(
          height: 500,
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
          height: 500,
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 68),
                child: Image.asset(
                  "assets/images/image_logo_1.webp",
                  width: 400,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Hành động - Tình cảm - Hoạt hình",
                style:
                TextStyle(fontSize: 11, color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.add, color: Colors.white,),
                      SizedBox(height: 5,),
                      Text(
                        "My List",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: Colors.white),
                      )
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 13, left: 8, top: 2, bottom: 2),
                      child: Row(
                        children: [
                          Icon(
                              Icons.play_arrow,
                              color: Colors.black
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Play",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Icon(Icons.info_outline, color: Colors.white,),
                      SizedBox(height: 5,),
                      Text(
                        "Info",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
