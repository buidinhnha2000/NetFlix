import 'package:dropdownbutton/widgets/popup.dart';
import 'package:flutter/material.dart';
import 'package:dropdownbutton/pages/root_app_json.dart';

class DownloadHeader extends StatelessWidget {
  const DownloadHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 15),
            child: const Text(
              "Tep tai xuong",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            )
        ),
        Row(
          children:const [
             IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 28,
                )),
             PopupMenu(),
            // IconButton(
            //     onPressed: null,
            //     icon: Image.asset(
            //       "assets/images/image3.jpg",
            //       width: 26,
            //       height: 26,
            //       fit: BoxFit.cover,
            //     ),
            //
            // )
          ],
        ),
      ],
    );
  }
}



