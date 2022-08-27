import 'package:flutter/material.dart';

import '../pages/root_app_json.dart';

class BaseScaffold extends StatefulWidget {
  const BaseScaffold({
    Key? key,
    this.shouldShowBottomNavigation = true,
    this.body,
    this.appBar,
    this.resizeToAvoidBottomInsets,
    this.backgroundColor,
    this.onTabChanged,
  }) : super(key: key);

  final bool shouldShowBottomNavigation;
  final Widget? body;
  final PreferredSizeWidget? appBar;
  final bool? resizeToAvoidBottomInsets;
  final Color? backgroundColor;
  final Function(int)? onTabChanged;

  @override
  State<BaseScaffold> createState() => _BaseScaffoldState();
}

class _BaseScaffoldState extends State<BaseScaffold> {
  int activeTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.appBar,
      body: widget.body,
      bottomNavigationBar:
          widget.shouldShowBottomNavigation ? getFooter() : null,
      resizeToAvoidBottomInset: widget.resizeToAvoidBottomInsets,
      backgroundColor: widget.backgroundColor,
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
                      widget.onTabChanged?.call(index);
                    });
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
}
