import 'package:dropdownbutton/pages/home/components/home_child.dart';
import 'package:dropdownbutton/pages/home/components/home_download.dart';
import 'package:dropdownbutton/pages/home/components/home_game.dart';
import 'package:dropdownbutton/pages/home/components/home_header.dart';
import 'package:dropdownbutton/pages/home/components/home_avatar.dart';
import 'package:dropdownbutton/pages/home/components/home_new.dart';
import 'package:dropdownbutton/pages/home/components/home_seenext.dart';
import 'package:dropdownbutton/pages/home/components/home_top10.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: getBody(),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: '',
        backgroundColor: Colors.white,
        child: Icon(
          Icons.shuffle_rounded,
          color: Colors.redAccent,
        ),
      ),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: size.height - 80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const HomeAvatar(),
                    SizedBox(
                      height: 10,
                    ),
                    const HomeTop10(),
                    SizedBox(height: 20,),
                    const HomeChild(),
                    SizedBox(height: 20,),
                    const HomeSeeNext(),
                    SizedBox(height: 20,),
                    const HomeDownload(),
                    SizedBox(height: 20,),
                    const HomeGame(),
                    SizedBox(height: 20,),
                    const HomeNew(),
                  ],
                ),
              ),
              const HomeHeader(),
            ],
          ),
        ],
      ),
    );
  }
}
