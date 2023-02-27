import 'package:flutter/material.dart';

class Orders extends StatelessWidget
{
  const Orders({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body:
      Center(
        child: Text('Orders',
          style: TextStyle(
            fontFamily: 'Caveat',
            color: Colors.white, // change the text color to white
            fontSize: 30.0, // change the font size to 20
          ),),
      ),
    );
  }
}
