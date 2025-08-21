import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:project2/favourites.dart';
import 'package:project2/home.dart';
import 'package:project2/listview.dart';
import 'package:project2/login.dart';

class bottomnavbar extends StatefulWidget {
  const bottomnavbar({super.key});

  @override
  State<bottomnavbar> createState() => _bottomnavbarState();
}

class _bottomnavbarState extends State<bottomnavbar> {
  int _selectedIndex = 0;
  final List<Widget> _screen = [
    home(),
  listview(),
  ListTile(),
  favourites()
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFF6EE2F5),
            Color(0xFF08AEEA)
          ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )
        ),
        child: _screen[_selectedIndex],
      ),
      bottomNavigationBar: ConvexAppBar(
          style: TabStyle.react,
          backgroundColor: Colors.white,
          activeColor: Color(0xFF08AEEA),
          color: Color(0xFF08AEEA),
          items:  [
            TabItem(icon: Icons.lock_outline),
            TabItem(icon: Icons.notifications_outlined),
            TabItem(icon: Icons.delete_outlined),
            TabItem(icon: Icons.shopping_bag_outlined),
          ],
        initialActiveIndex: 0,
        onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
        },
      ),
    );
  }
}
