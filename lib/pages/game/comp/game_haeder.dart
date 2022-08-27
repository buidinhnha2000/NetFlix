import 'package:dropdownbutton/widgets/popup.dart';
import 'package:flutter/material.dart';
class GameHeader extends StatelessWidget {
  const GameHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 15),
            child: const Text(
            "Game Best",
            style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.white,
            ),
            )
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
    );
  }
}
