import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Image.asset(
                  "assets/images/netflix.png",
                  width: 60,
                  fit: BoxFit.cover,
                )),
            Row(
              children: [
                const IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 28,
                    )),
                IconButton(
                    onPressed: null,
                    icon: Image.asset(
                      "assets/images/image3.jpg",
                      width: 26,
                      height: 26,
                      fit: BoxFit.cover,
                    ))
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "TV Shows",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text(
              "Movies",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              children: const [
                Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                )
              ],
            )
          ],
        ),
      ]),
    );
  }
}
