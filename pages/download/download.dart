import 'package:dropdownbutton/pages/download/components/download_header.dart';
import 'package:flutter/material.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({Key? key}) : super(key: key);

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: getBody(),
    );
  }
  Widget getBody(){
    var size = MediaQuery.of(context).size;
    return ListView(
      children: [
        DownloadHeader(),
        Container(
          margin: const EdgeInsets.only(top:10, left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.settings,
                    size: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      "Tai xuong thong minh",
                      style: TextStyle(
                          fontSize: 15
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 40,),
              Text(
                  "Gioi thieu tep tai xuong cho ban",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(height: 7,),
              Text(
                  "Material ancestor, then the opaque widget will obscure the material widget and its background tileColor, etc. If this a problem, one can wrap a material widget around the list tile, e.g.:",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300
                  ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20,),
        Container(
          margin: const EdgeInsets.only(left: 10, right: 10),
          height: 250,
          width: size.width,
          child: Stack(
            children: [
              Center(
                child: CircleAvatar(
                  radius: 130,
                  backgroundColor: Colors.white12,
                )
              ),
              Center(
                child: Container(
                  height: 190,
                  width: 140,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/image3.jpg"),
                        fit: BoxFit.cover
                      ),
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 20,),
        Container(
          width: 300,
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: TextButton(
            onPressed: null,
            child: Text("Thiet lap"),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
          )
        ),
        SizedBox(height: 20,),
        Container(
            width: 300,
            margin: const EdgeInsets.only(left: 50, right: 50),
            child: TextButton(
              onPressed: null,
              child: Text(
                "Tim them noi dung tai xuong",
                style: TextStyle(
                  fontWeight: FontWeight.w600
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
            )
        ),
      ],
    );
  }

}
