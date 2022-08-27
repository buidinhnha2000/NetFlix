import 'package:flutter/material.dart';

class NewhotSeenext extends StatelessWidget {
  const NewhotSeenext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10),
          width: size.width,
          color: Colors.black,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Icon(
                  Icons.whatshot,
                  color: Colors.deepOrange,
                ),
              ),
              Expanded(
                  flex: 15,
                  child: Text(
                    "Moi nguoi dang xem",
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
          margin: const EdgeInsets.only(left: 10, right: 10),
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
                          Icons.check_outlined,
                          color: Colors.yellowAccent,
                          size: 30,
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "Danh sach",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.yellowAccent),
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
                height: 80,
                width: size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    SizedBox(height: 5,),
                    Text("ASIA jsdgashjdajsdgashjdajsdgashjdajsdgashjdajsdgashjdajsdgashjdajsdgashjdajsdgashjdajsdgashjdajsdgashjd"),
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
      ],
    );
  }
}
