import 'package:dropdownbutton/screen/movie_infor/movie_infor.dart';
import 'package:flutter/material.dart';

class HomeFootter extends StatelessWidget {
  const HomeFootter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    routeMovie(){
      // Navigator.pushReplacement(context, MaterialPageRoute(
      //     builder: (context) => MovieInfor()
      // ));
    }
    return Padding(
      padding: const EdgeInsets.only(left: 7, right: 7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
              Icons.shuffle_rounded,
              color: Colors.redAccent,
              size: 40,
            ),
          Text(
            "Ban dan do khong biet nen xem gi",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Dua tren so thich cua ban, chung toi se xao tron va tim kiem noi dung tren netflix de ban thuong thuc",
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
          Container(
              width: 220,
              height: 45,
              margin: const EdgeInsets.only(top: 5),
              child: TextButton(
                onPressed: () => routeMovie(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shuffle_rounded,
                      color: Colors.redAccent,
                      size: 28,
                    ),
                    SizedBox(width: 5,),
                    Text(
                      "Kham pha bat ngo",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17
                      ),
                    ),
                  ],
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                ),
              )
          ),
        ],
      ),
    );
  }
}
