import 'package:flutter/material.dart';
import 'package:my_insta/Screen/dash_screen.dart';
import 'package:my_insta/Screen/like_screen.dart';
import 'package:my_insta/Screen/profile_screen.dart';
import 'package:my_insta/Screen/search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int i=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: IndexedStack(
              index: i,
              children: [
                DashScreen(),
                SearchScreen(),
                LikeScreen(),
                ProfileScreen(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: i,
        selectedItemColor: Colors.black,
        // backgroundColor: Colors.black,
        unselectedItemColor: Colors.black54,
        type: BottomNavigationBarType.shifting,
        onTap: (value) {
          setState(() {
            i=value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: ""),
        ],
      ),
    ),
    );
  }
}
