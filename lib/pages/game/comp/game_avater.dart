import 'package:flutter/material.dart';

class GameAvatar extends StatelessWidget {
  const GameAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height:size.width,
      width: size.height,
      margin: const EdgeInsets.only(left: 10, right: 10,top: 10),
      child: Stack(
        children: [
          Container(
            height: size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/image2.jpg"),
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.80),
                        Colors.black.withOpacity(0),
                      ],
                      end: Alignment.bottomLeft,
                      begin: Alignment.topRight)),
            ),
          ),
          Container(
            height: size.height,
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/netflix.png", width: 45,),
                    Text(
                      "TRO CHOI",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                Container(
                  width: 300,
                  child: Column(
                  children: [
                    Text(
                      "Truy cap khong gioi han cac tro choi doc quyen",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Khong quang cao. Khong phu phi . Khong mua trong ung dung. Di kem voi goi thanh vien",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
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
