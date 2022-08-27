
import 'package:dropdownbutton/api/models/movie_data.dart';
import 'package:dropdownbutton/screen/movie_infor/component/movie_interactive.dart';
import 'package:dropdownbutton/screen/search/Search.dart';
import 'package:dropdownbutton/widgets/popup.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../routes.dart';
import '../home_bloc.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = HomeBloc();
    routerCategories() {
      Navigator.of(context).pushNamed(categories);
    }
    var size = MediaQuery.of(context).size;
    final user = FirebaseAuth.instance.currentUser!;
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
                SearchMovie(),
                PopupMenu()
              ],
            ),
          ],
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
            TextButton(
                onPressed: (){
                  showGeneralDialog(
                      context: context,
                      barrierDismissible: false,
                      transitionDuration: Duration(milliseconds: 500),
                      transitionBuilder: (context, animation, secondaryAnimation, child) {
                        return FadeTransition(
                          opacity: animation,
                          child: ScaleTransition(
                            scale: animation,
                            child: child,
                          ),
                        );
                      },
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return Center(
                          child: Container(
                            width: 250,
                            height: 550,
                            padding: EdgeInsets.all(0),
                            color: Colors.black87,
                            child: Center(
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children:<Widget> [
                                  Container(
                                    height: 470,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        TextButton(
                                            onPressed: () => routerCategories(),
                                            child: Center(
                                              child: Text('Khoa hoc-Vien tuong', style: TextStyle(fontSize: 17, color: Colors.white),),
                                        )),
                                        TextButton(onPressed: null, child: Center(
                                          child: Text('Hanh Dong', style: TextStyle(fontSize: 17, color: Colors.white),),
                                        )),
                                        TextButton(onPressed: null, child: Center(
                                          child: Text('Hai Huoc', style: TextStyle(fontSize: 17, color: Colors.white),),
                                        )),
                                        TextButton(onPressed: null, child: Center(
                                          child: Text('Tình cảm & lãng mạn', style: TextStyle(fontSize: 17, color: Colors.white),),
                                        )),
                                        TextButton(onPressed: null, child: Center(
                                          child: Text('Kinh dị', style: TextStyle(fontSize: 17, color: Colors.white),),
                                        )),
                                        TextButton(onPressed: null, child: Center(
                                          child: Text('Thiếu nhi & trẻ em', style: TextStyle(fontSize: 17, color: Colors.white),),
                                        )),
                                        TextButton(onPressed: null, child: Center(
                                          child: Text('Hoạt hình Âu mỹ', style: TextStyle(fontSize: 17, color: Colors.white),),
                                        )),
                                        TextButton(onPressed: null, child: Center(
                                          child: Text('Phiêu lưu', style: TextStyle(fontSize: 17, color: Colors.white),),
                                        )),
                                        TextButton(onPressed: null, child: Center(
                                          child: Text('Chính kịch', style: TextStyle(fontSize: 17, color: Colors.white),),
                                        )),
                                      ],
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text("DISMISS",
                                      style: TextStyle(color: Colors.lime),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }
                  );
                },
                child: Row(
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
            )
          ],
        ),
      ]),
    );
  }
}
