import 'package:dropdownbutton/pages/download/download.dart';
import 'package:dropdownbutton/pages/game/game.dart';
import 'package:dropdownbutton/pages/home/home.dart';
import 'package:dropdownbutton/pages/news_and_hot/new_hot.dart';
import 'package:dropdownbutton/router.dart';
import 'package:flutter/material.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activeTab = 0;
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.generateRoute,
      theme: ThemeData.dark(),
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

}
