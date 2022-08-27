import 'package:flutter/material.dart';

import '../../../pages/root_app.dart';
import '../../../widgets/popup.dart';

class CategoriHeader extends StatelessWidget {
  const CategoriHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                  ),
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) => RootApp(),
                    ));
                  },
                ),
              ),
              Text('Categories', style: TextStyle(fontSize: 20),)
            ],
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
      ),
    );
  }
}
