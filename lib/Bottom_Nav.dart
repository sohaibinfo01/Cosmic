import 'package:flutter/material.dart';

import 'custom_bottom_nav_bar_dash.dart';

class bottomnavbar extends StatefulWidget {
  const bottomnavbar({super.key});

  @override
  State<bottomnavbar> createState() => _bottomnavbarState();
}

class _bottomnavbarState extends State<bottomnavbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBarDash(
        onChange: (index) {
          // cubit.changeBottomNavBar(index);
          //or BlocProvider.of<NavbarCubit>(context).changeBottomNavBar(index);
        }, // To change items

        defaultSelectedIndex: 0, //The default selected item from the navigation bar
        backgroundColor: Colors.grey.shade100, //Background color of navigation bar
        radius: 25, //Radius navigation bar
        showLabel: true, //To show or hide the label
        textList: [
          'Home',
          'Camera',
          'Messenger',
          'User',
        ],//Label list for each item in the navigation bar
        iconList: [
          Icons.home_outlined,
          Icons.camera,
          Icons.mail_outline,
          Icons.person_outline,
        ],//Icon list for each item in the navigation bar
      ),
    );
  }
}
