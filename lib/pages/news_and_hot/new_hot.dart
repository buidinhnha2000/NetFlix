import 'package:dropdownbutton/base_screen.dart';
import 'package:dropdownbutton/pages/news_and_hot/component_new/new_hot_header.dart';
import 'package:dropdownbutton/pages/news_and_hot/component_new/new_hot_newhot.dart';
import 'package:dropdownbutton/pages/news_and_hot/component_new/new_hot_seenext.dart';
import 'package:dropdownbutton/pages/news_and_hot/component_new/new_hot_top10.dart';
import 'package:flutter/material.dart';

class NewhotPage extends StatefulWidget {
  const NewhotPage({Key? key}) : super(key: key);

  @override
  State<NewhotPage> createState() => _NewhotPageState();
}

class _NewhotPageState extends State<NewhotPage> {
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      backgroundColor: Colors.black,
      body: getBody(),
    );
  }
  Widget getBody(){
    return ListView(
      children: const [
        NewhotHeader(),
        SizedBox(height: 10,),
        NewhotNewhot(),
        SizedBox(height: 10,),
        NewhotSeenext(),
        SizedBox(height: 10,),
        NewhotTop10(),
      ],
    );
  }
}
