import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social/UI/Likes.dart';
import 'package:social/UI/Location.dart';
import 'package:social/UI/Profile.dart';
import 'package:social/UI/mainPage.dart';
import 'package:social/UI/profilePro.dart';
import 'package:social/UI/search.dart';
import 'package:social/UI/searchResult.dart';
import 'package:social/direction.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _NavigationBarScreen();
  }
}

class _NavigationBarScreen extends State<NavigationBarScreen> {
  @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance!.addPostFrameCallback(
  //     (_) => showDialog(
  //       context: context,
  //       builder: (context) {
  //         return DialogWidget();
  //       },
  //     ),
  //   );
  // }

  int _currentIndex = 0;
  final List<Widget> _children = [
    MainPage(),
    Search(),
    Directions(),
    Likes(),
    Profile(),

    //   CLasses
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Color(0xff2b343b),
        onTap: onTabTapped, // new
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.grey.shade800,
        currentIndex: _currentIndex, // new
        items: [
          BottomNavigationBarItem(
            // icon: ImageIcon(AssetImage("assets/layers.png")),
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            // backgroundColor: Color(0xff2b343b),
            label: "Home",
            // title: Text(
            //   'Home',
            // ),
          ),
          new BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.search,
              size: 30,
            ),
            // backgroundColor: Color(0xff2b343b),
            label: "Search",
            // icon: ImageIcon(AssetImage("assets/trending-up.png")),
            // title: Text(
            //   'search',
            // ),
          ),
          new BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.location,
                size: 30,
              ),
              // backgroundColor: Color(0xff2b343b),

              // icon: ImageIcon(AssetImage("assets/pie-chart.png")),
              // title: Text(
              //   'Location',
              // )
            label: "Location",
          ),
          new BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today_outlined,
                size: 26,
              ),
              // backgroundColor: Color(0xff2b343b),

              // icon: ImageIcon(AssetImage("assets/gift.png")),

              // title: Text(
              //   'Notifications',
              // )
            label: "Notifications",
          ),
          new BottomNavigationBarItem(
              // icon: Icon(
              //   Icons.card_giftcard,
              //   size: 30,
              // ),
              // backgroundColor: Color(0xff2b343b),

              icon: ImageIcon(AssetImage("assets/images/share1.png")),
              // title: Text(
              //   'Profile',
              // )
            label: "Profile",
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
