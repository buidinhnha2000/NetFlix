import 'package:dropdownbutton/widgets/popup.dart';
import 'package:flutter/material.dart';

class NewhotHeader extends StatelessWidget {
  const NewhotHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "New & Hot",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                )),
            Row(
              children: [
                const IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 28,
                    )),
                const PopupMenu(),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 40,
          width: size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: 130,
                    color: Colors.black,
                    child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white),
                        child: TextButton(
                          onPressed: null,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Expanded(
                                flex: 2,
                                child: Icon(
                                  Icons.access_alarms,
                                  color: Colors.deepOrange,
                                ),
                              ),
                              Expanded(
                                  flex: 5,
                                  child: Text(
                                    "Sap ra mat",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  )
                              )
                            ],
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: 190,
                    color: Colors.black,
                    child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.black),
                        child: TextButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Expanded(
                                  flex: 1,
                                  child: Icon(
                                    Icons.whatshot,
                                    color: Colors.orange,
                                  ),
                                ),
                                Expanded(
                                    flex: 4,
                                    child: Text(
                                      "Moi nguoi dang xem",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    )
                                )
                              ],
                            ))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: 100,
                    color: Colors.black,
                    child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.black),
                        child: TextButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Container(
                                      height: 25,
                                      decoration: BoxDecoration(
                                          image: const DecorationImage(
                                            image: AssetImage(
                                                "assets/images/image3.jpg"),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                    ),
                                  )),
                              const Expanded(
                                  flex: 4,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 2),
                                    child: Text(
                                      "Top 10",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                              )
                            ],
                          ),
                        )
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
