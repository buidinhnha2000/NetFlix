import 'package:flutter/material.dart';

import '../../root_app_json.dart';

class HomeChild extends StatelessWidget {
  const HomeChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 7, right: 15),
          child: Text(
            "Chuong trinh quoc te thieu nhi",
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: List.generate(myList.length, (index) {
                  return Container(
                    margin: EdgeInsets.only(right: 8),
                    width: 100,
                    height: 120,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(myList[index]['img']),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(7)
                    ),
                  );
                }),
              ),
            )
        )
      ],
    );
  }
}
