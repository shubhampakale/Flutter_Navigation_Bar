
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  int badge = 0;

  List<GButton> tabs = [];
  List<Color> colors = [
    Colors.deepPurpleAccent,
    Colors.pink,
    Colors.amber[600]!,
    Colors.teal,
    Colors.lightBlue
  ];

  @override
  void initState() {
    super.initState();
  }

  void _tabChanged(int index)
  {
    badge = badge + 1;
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        color: colors[selectedIndex],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[

              Container(
                decoration: BoxDecoration(color: Colors.black),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 10),
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
                        backgroundColor: Colors.amber[600]!.withOpacity(.2),
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
                    selectedIndex: selectedIndex,
                    onTabChange: _tabChanged,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}