
import 'package:dropdownbutton/screen/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

enum Menu { itemOne, itemTwo, itemThree, itemFour }

class PopupMenu extends StatelessWidget {
  const PopupMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<Menu>(
        onSelected: (choice) async {
          switch (choice) {
            case Menu.itemFour:
              return await FirebaseAuth.instance.signOut();
          }
        },
        color: Colors.black87,
        itemBuilder: (BuildContext context) =>
        <PopupMenuEntry<Menu>>[
          const PopupMenuItem<Menu>(
              value: Menu.itemOne,
              child: ListTile(
                leading: Icon(Icons.add_alert, color: Colors.lime),
                title: Text(
                  'Notification', style: TextStyle(color: Colors.limeAccent),),
              )
          ),
          const PopupMenuItem<Menu>(
              value: Menu.itemTwo,
              child: ListTile(
                leading: Icon(Icons.person, color: Colors.lime),
                title: Text(
                    'Profile', style: TextStyle(color: Colors.limeAccent)),
              )
          ),
          const PopupMenuItem<Menu>(
              value: Menu.itemThree,
              child: ListTile(
                leading: Icon(Icons.settings, color: Colors.lime),
                title: Text(
                    'Settings', style: TextStyle(color: Colors.limeAccent)
                ),
              )
          ),
          const PopupMenuItem<Menu>(
              value: Menu.itemFour,
              child: ListTile(
                leading: Icon(
                    Icons.subdirectory_arrow_right, color: Colors.blue),
                title: Text('Sign Out', style: TextStyle(color: Colors.blue)),
              )
          ),
        ]
    );
  }
}