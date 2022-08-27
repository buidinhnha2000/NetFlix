import 'package:dropdownbutton/pages/game/game.dart';
import 'package:dropdownbutton/pages/root_app.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../router.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget _renderSignIn() {
    return Container(
      padding: const EdgeInsets.fromLTRB(60, 20, 60, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("MOVIE", style: TextStyle(color: Colors.red, fontWeight: FontWeight.w500, fontSize: 60)),
          const SizedBox(
            height: 70,
          ),
          TextField(
              controller: _emailController,
              autocorrect: false,
              autofocus: false,
              enableSuggestions: false,
              decoration: const InputDecoration(
                fillColor: Colors.white30,
                filled: true,
                labelText: 'Email',
                floatingLabelStyle: TextStyle(color: Colors.black),
                focusedBorder: InputBorder.none,
                border: InputBorder.none,
              )),
          const SizedBox(
            height: 20,
          ),
          TextField(
              controller: _passwordController,
              obscureText: true,
              autocorrect: false,
              autofocus: false,
              enableSuggestions: false,
              decoration: const InputDecoration(
                fillColor: Colors.white24,
                filled: true,
                labelText: 'Password',
                floatingLabelStyle: TextStyle(color: Colors.black),
                focusedBorder: InputBorder.none,
                border: InputBorder.none,
              )),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: signIn,
              style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  side: const BorderSide(width: 1, color: Colors.lime)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.keyboard_tab, color: Colors.lime,size:30,),
                  SizedBox(width: 10,),
                  Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.lime,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ],
              )
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          MaterialButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.white),
                ),
                const Text(
                  " Sign Up",
                  style: TextStyle(color: Colors.lime),
                ),
              ],
            ),
            onPressed: () {
              setState(() {
                _selectedIndex = 1;
              });
            },
          ),
          const SizedBox(
            height: 10.0,
          ),
          MaterialButton(
            child: const Text(
              "Forgot your password",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _renderSignUp() {
    return Container(
      padding: const EdgeInsets.fromLTRB(60, 20, 60, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("MOVIE", style: TextStyle(color: Colors.red, fontWeight: FontWeight.w500, fontSize: 60)),
          const SizedBox(
            height: 70,
          ),
          TextField(
              controller: _emailController,
              autocorrect: false,
              autofocus: false,
              enableSuggestions: false,
              decoration: const InputDecoration(
                fillColor: Colors.white30,
                filled: true,
                labelText: 'Email',
                floatingLabelStyle: TextStyle(color: Colors.black),
                focusedBorder: InputBorder.none,
                border: InputBorder.none,
              )),
          const SizedBox(
            height: 20,
          ),
          TextField(
              controller: _passwordController,
              obscureText: true,
              autocorrect: false,
              autofocus: false,
              enableSuggestions: false,
              decoration: const InputDecoration(
                fillColor: Colors.white24,
                filled: true,
                labelText: 'Password',
                floatingLabelStyle: TextStyle(color: Colors.black),
                focusedBorder: InputBorder.none,
                border: InputBorder.none,
              )),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: signUp,
              style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  side: const BorderSide(width: 1, color: Colors.tealAccent)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.keyboard_tab, color: Colors.tealAccent,size:30,),
                  SizedBox(width: 10,),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.tealAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ],
              )
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          MaterialButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Arealy have an account?",
                  style: TextStyle(color: Colors.white),
                ),
                const Text(
                  " Sign In",
                  style: TextStyle(color: Colors.tealAccent),
                ),
              ],
            ),
            onPressed: () {
              setState(() {
                _selectedIndex = 0;
              });
            },
          ),
          const SizedBox(
            height: 10.0,
          ),
          MaterialButton(
            child: const Text(
              "Forgot your password",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: StreamBuilder<User?> (
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot){
            if(snapshot.connectionState == ConnectionState.waiting){
              return const Center( child: CircularProgressIndicator(),
              );
            }
            else if(snapshot.hasError){
              return Center(child: Text('Something  went  wrong'),);
            }
            else if(snapshot.hasData) {
              return RootApp();
            }
            else{
              return IndexedStack(
                index: _selectedIndex,
                children: [
                  _renderSignIn(),
                  _renderSignUp(),
                ],
              );
            }
          },
        )
      ),
    );
  }

  Future signIn() async {
    // showDialog(
    //     context: context,
    //     barrierDismissible: false,
    //     builder: (context) => const Center(child: CircularProgressIndicator())
    // );
    // try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
    // } on FirebaseAuthException catch (e) {
    //   print(e);
    // }

  }
  Future signUp() async {
    // showDialog(
    //     context: context,
    //     barrierDismissible: false,
    //     builder: (context) => Center(child: CircularProgressIndicator())
    // );
    //
    // try{
       await FirebaseAuth.instance.createUserWithEmailAndPassword(
           email: _emailController.text.trim(),
           password: _passwordController.text.trim(),
       );
    // } on FirebaseAuthException  catch (e){
    //   print(e);
    // }
  }
}
