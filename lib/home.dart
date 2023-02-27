import 'package:flutter/material.dart';

class Home extends StatelessWidget
{
 const Home({Key? key}) : super(key: key);
 @override
 Widget build(BuildContext context) {
  return const Scaffold(
      backgroundColor: Colors.black,
      body:
      Center(
        child: Text('Home',
        style: TextStyle(
         fontFamily: 'Caveat',
         color: Colors.white, // change the text color to white
         fontSize: 30.0, // change the font size to 20
        ),),
      ),
  );
 }
}

