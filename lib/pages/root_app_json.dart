import 'package:flutter/material.dart';

const List<FooterItem> items = [
  FooterItem(Icons.home, "Trang chu"),
  FooterItem(Icons.videogame_asset_sharp, "Game"),
  FooterItem(Icons.create_new_folder_outlined, "New"),
  FooterItem(Icons.download_outlined, "Download"),
];
class FooterItem {
  final String text;
  final IconData icon;

  const FooterItem(this.icon, this.text);
}
const List<Interactive> items1 =[
  Interactive(Icons.add, "Danh sách"),
  Interactive(Icons.thumb_up_alt_outlined, "Xếp hạng"),
  Interactive(Icons.share, "Chia sẻ"),
  Interactive(Icons.download_done_sharp, "Tải xuống"),

];
class Interactive{
  final String text1;
  final IconData icon1;
  const Interactive(this.icon1, this.text1);
}


const List<GameLi> myListGame = [
  GameLi('assets/images/image1.jpg', 'Rise of Kingdom', 'Giai tri'),
  GameLi('assets/images/image2.jpg', 'Garena', 'Study'),
  GameLi('assets/images/image3.jpg', 'RChess', 'Chien thuat'),
  GameLi('assets/images/image4.jpg', 'Dream language Soccer', 'Hanh dong'),
  GameLi('assets/images/image2.jpg', 'Fife football', 'Vien tuong'),
  GameLi('assets/images/image3.jpg', 'Free Fire', 'CHay'),
];
class GameLi {
  final String img;
  final String name;
  final String title;

  const GameLi(this.img, this.name,this.title);
}

const List myList = [
  {"img": "assets/images/image1.jpg"},
  {"img": "assets/images/image2.jpg"},
  {"img": "assets/images/image3.jpg"},
  {"img": "assets/images/image4.jpg"},
  {"img": "assets/images/image1.jpg"},
  {"img": "assets/images/image2.jpg"},
  {"img": "assets/images/image3.jpg"},
  {"img": "assets/images/image4.jpg"},
];

const List myList10 = [
  {"img": "assets/images/image1.jpg", "text": "1"},
  {"img": "assets/images/image2.jpg", "text": "2"},
  {"img": "assets/images/image3.jpg", "text": "3"},
  {"img": "assets/images/image4.jpg", "text": "4"},
  {"img": "assets/images/image1.jpg", "text": "5"},
  {"img": "assets/images/image2.jpg", "text": "6"}
];

class MenuItem {
  final String text;
  final IconData icon;

  MenuItem({
    required this.text,
    required this.icon,
  });
}
