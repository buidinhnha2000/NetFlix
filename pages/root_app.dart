import 'package:dropdownbutton/pages/download/download.dart';
import 'package:dropdownbutton/pages/game/game.dart';
import 'package:dropdownbutton/pages/home/home.dart';
import 'package:dropdownbutton/pages/news_and_hot/new_hot.dart';
import 'package:dropdownbutton/pages/root_app_json.dart';
import 'package:flutter/material.dart';

class RootApp extends StatefulWidget {
  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activeTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: getFooter(),
      body: getBody(),

    );
  }

  Widget getBody() {
    return IndexedStack(
      index: activeTab,
      children: const [
        HomePage(),
        GamePage(),
        NewhotPage(),
        DownloadPage(),
      ],
    );
  }

  Widget getFooter() {
    return Container(
        height: 50,
        decoration: const BoxDecoration(
          color: Colors.white12,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(items.length, (index) {
                return GestureDetector(
                  onTap: () async {
                    setState(() {
                      activeTab = index;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(
                        items[index].icon,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        items[index].text,
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                );
              })),
        ));
  }
}
