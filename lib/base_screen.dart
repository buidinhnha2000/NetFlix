import 'package:dropdownbutton/pages/root_app_json.dart';
import 'package:dropdownbutton/routes.dart';
import 'package:flutter/material.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key, required this.body, this.floatingActionButton, this.backgroundColor}) : super(key: key);
  final Widget body;
  final Widget? floatingActionButton;
  final Color? backgroundColor;

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.body,
      bottomNavigationBar: getFooter(),
      backgroundColor: widget.backgroundColor,
      floatingActionButton: widget.floatingActionButton,
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
                    _onBottomAppBarClicked(index);
                  },
                  child: Column(
                    children: [
                      Icon(
                        items[index].icon,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        items[index].text,
                        style: const TextStyle(
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

  void _onBottomAppBarClicked(int index) {
    switch (index) {
      case 0:
        Navigator.of(context).pushNamed(home);
        break;
      case 1:
        Navigator.of(context).pushNamed(game);
        break;
      case 2:
        Navigator.of(context).pushNamed(news);
        break;
      case 3:
        Navigator.of(context).pushNamed(download);
        break;
      default:
        Navigator.of(context).pushNamed(home);
        break;
    }
  }
}
