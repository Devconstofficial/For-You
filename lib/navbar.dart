import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_app3/empty.dart';
import 'package:new_app3/empty2.dart';
import 'package:new_app3/Screens/profile.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBArState();
}

class _NavBArState extends State<NavBar> {
  List<Widget> screens = [
    const Text('ds'),
    const Empty2(),
    const Text('dfs'),
    const Empty(),
    const Profile(),
  ];

  int currentindex = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: screens[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/Home.svg'),
              label: '',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/Search.svg'),
              label: '',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/Add.svg'),
              label: '',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/Message.svg'),
              label: '',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/Profile.svg'),
              label: '',
              backgroundColor: Colors.black),
        ],
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
      ),
    );
  }
}
