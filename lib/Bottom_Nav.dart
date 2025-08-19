import 'package:flutter/material.dart';
import 'package:project2/favourites.dart';
import 'package:project2/home.dart';
import 'package:project2/profile.dart';


class bottombar extends StatefulWidget {
  const bottombar({super.key});

  @override
  State<bottombar> createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {

  int selectedindex = 0;
  List myscreens = [
    home(),
    favourites(),
    profile()
  ];

  ontapfuction(int index){
    setState(() {
      selectedindex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: myscreens.elementAt(selectedindex),
    bottomNavigationBar: ClipRRect(
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(35),
    topRight: Radius.circular(35),
    ),
      child: BottomNavigationBar(
          currentIndex: selectedindex,
              backgroundColor: Colors.black45,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: const TextStyle(color: Colors.white),
          unselectedLabelStyle: const TextStyle(color: Colors.grey),
          onTap: ontapfuction,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                height: 20,
                width: 30,
                child: Image.asset('assets/internet.png',
                color: selectedindex == 0 ? Color(0xff11DCE8) : Colors.grey,
                  scale: 5,
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border,
                  color: selectedindex == 1 ?  const Color(0xff11DCE8) : Colors.grey),
              label: "Favourites",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz,
                  color: selectedindex == 2 ?  const Color(0xff11DCE8) : Colors.grey),
              label: "More",
            ),
          ]),
        ),
    );

  }
}