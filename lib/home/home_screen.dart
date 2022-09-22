import 'package:flutter/material.dart';
import 'package:movies_app/home/searsh_widget.dart';
import 'package:movies_app/home/watchlist_widget.dart';


import 'browse_widget.dart';
import 'home_widget.dart';

class HomeScreen extends StatefulWidget {
  static const String routename = ' Home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    HomeWidget(),
    SearshWidget(),
    BrowseWidget(),
    WatchListWidget(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:currentIndex ,
          type: BottomNavigationBarType.fixed,
          onTap: (index){
            setState(() {
              currentIndex=index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(
                  color: Colors.black,
                  AssetImage('assets/images/ic_home.png'),
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  color: Colors.black,
                  AssetImage('assets/images/searsh@2x.png'),
                ),
                label: 'Searsh'),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  color: Colors.black,
                  AssetImage('assets/images/ic_browse.png'),
                ),
                label: 'BROWSE'),

            BottomNavigationBarItem(
                icon: ImageIcon(
                  color: Colors.black,
                  AssetImage('assets/images/ic_watchlist.png'),
                ),
                label: 'WATHCLIST'),
          ]),
    );
  }
}
