
import 'package:flutter/material.dart';

import '../../../pages/root_app_json.dart';

class MovieInteractive extends StatelessWidget {
  const MovieInteractive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        child: Padding(
          padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(items1.length, (index) {
                return GestureDetector(
                  onTap: null,
                  child: Column(
                    children: [
                      Icon(
                        items1[index].icon1,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        items1[index].text1,
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.white54,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                );
              })),
        ));
  }
}
