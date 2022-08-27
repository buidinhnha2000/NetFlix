// import 'package:dropdownbutton/pages/root_app.dart';
// import 'package:dropdownbutton/screen/register.dart';
// import 'package:flutter/material.dart';
//
// class Splash extends StatefulWidget {
//   const Splash({Key? key}) : super(key: key);
//
//   @override
//   State<Splash> createState() => _SplashState();
// }
//
// class _SplashState extends State<Splash> {
//
//   @override
//   void initState() {
//     super.initState();
//     _navigatetohome();
//   }
//   _navigatetohome() async {
//     await Future.delayed(Duration(seconds: 3),() {});
//     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RootApp()));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData.dark(),
//       home: Scaffold(
//         body: Center(
//           child: Container(
//             child: Text(
//               'Movie Play',
//               style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
