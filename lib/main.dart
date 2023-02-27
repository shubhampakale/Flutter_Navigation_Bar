import 'package:flutter/material.dart';
import 'package:googlenav/home.dart';
import 'package:googlenav/items.dart';
import 'package:googlenav/orders.dart';
import 'package:googlenav/profile.dart';

import 'package:line_icons/line_icons.dart';
import 'package:google_nav_bar/google_nav_bar.dart';




void main() => runApp(MaterialApp(
  builder: (context,child)
  {
    return Directionality(textDirection: TextDirection.ltr, child: child!);
  },
  title: "Gnav",
  theme: ThemeData(
    primarySwatch: Colors.blueGrey,
  ),
  home: MyHomePage(),
  debugShowCheckedModeBanner: false,
  ),);

class MyHomePage extends StatefulWidget
{

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  int _selectedindex  = 0;

  static final List<Widget> _NavScreens = <Widget>[
    Home(),
    Items(),
    Orders(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            leading: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('assets/images/download.png',
                  width: 50.0,
                  height: 60.0,
                ),
              ],
            ),
            title: const Text('PCCOE Canteen Katta',
              style: TextStyle(
                fontFamily: 'Caveat',
                color: Colors.white, // change the text color to white
                fontSize: 30.0, // change the font size to 20
              ),
            ),

            // leading: Icon(Icons.account_circle_rounded),
            backgroundColor: Colors.black,


          ),
          body: Center(child: _NavScreens.elementAt(_selectedindex),),
          backgroundColor: Colors.black,
          bottomNavigationBar:

              Container(
                decoration: BoxDecoration(color: Colors.black),//bottom container
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 22.0, vertical: 10),
                  child: GNav(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                    duration: Duration(milliseconds: 100),
                    gap: 13,
                    tabs: [
                      GButton(
                        iconActiveColor: Colors.deepPurpleAccent,
                        iconColor: Colors.white,
                        textColor: Colors.deepPurpleAccent,
                        backgroundColor: Colors.purple.withOpacity(.3),
                        iconSize: 24,
                        icon: LineIcons.home,
                        text: 'Home',

                      ),
                      GButton(
                        iconActiveColor: Colors.pink,
                        iconColor: Colors.white,
                        textColor: Colors.pink,
                        backgroundColor: Colors.pink.withOpacity(.2),
                        iconSize: 24,
                        icon: LineIcons.list,
                        text: 'Items',
                      ),
                      GButton(
                        iconActiveColor: Colors.amber[600],
                        iconColor: Colors.white,
                        textColor: Colors.amber[600],
                        backgroundColor: Colors.amber[600]!.withOpacity(
                            .2),
                        iconSize: 24,
                        icon: LineIcons.shoppingCartArrowDown,
                        text: 'Orders',
                      ),
                      GButton(
                        iconActiveColor: Colors.teal,
                        iconColor: Colors.white,
                        textColor: Colors.teal,
                        backgroundColor: Colors.teal.withOpacity(.2),
                        iconSize: 24,
                        icon: LineIcons.user,
                        text: 'Profile',
                      )
                    ],
                    selectedIndex: _selectedindex,
                    onTabChange: (index){
                      setState(() {
                        _selectedindex=index;
                      });
                    },


                  ),
                ),
              ),





    );
  }
}





