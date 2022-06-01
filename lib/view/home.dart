import 'package:bandi/view/pages/homepage.dart';
import 'package:bandi/view/pages/locationpage.dart';
import 'package:bandi/view/pages/profile.dart';
import 'package:bandi/view/pages/searchpage.dart';
import 'package:bandi/view/pages/test.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  int selectedIndex=0;
  void navigate(int index){
    setState(() {
      selectedIndex=index;
    });
  }
  final List pages=[
    HomePage(),
    SearchPage(),
    LocationPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold( 
        body: pages[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, 
          currentIndex: selectedIndex,
          onTap: navigate,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.place),label: 'Location'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
          ]
        ),
      ),
    );
  }
}