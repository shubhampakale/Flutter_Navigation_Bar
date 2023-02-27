import 'package:flutter/material.dart';

class Profile extends StatelessWidget
{
  const Profile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body:
      Center(
        child: Text('Profile',
          style: TextStyle(
            fontFamily: 'Caveat',
            color: Colors.white, // change the text color to white
            fontSize: 30.0, // change the font size to 20
          ),),
      ),
    );
  }
}
