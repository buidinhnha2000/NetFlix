
import 'package:dropdownbutton/pages/home/home.dart';
import 'package:dropdownbutton/widgets/popup.dart';
import 'package:flutter/material.dart';

import '../../../pages/root_app.dart';

class MovieHeader extends StatelessWidget {
  const MovieHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
              ),
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) => RootApp(),
                ));
              },
            ),
          ),
          Row(
            children: [
              const IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 28,
                  )),
              PopupMenu(),
            ],
          ),
        ],
      ),
    );
  }
}
