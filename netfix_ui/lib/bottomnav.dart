import 'package:flutter/material.dart';
import 'package:netfix_ui/comingsosn.dart';
import 'package:netfix_ui/download.dart';
import 'package:netfix_ui/fastlaghe.dart';
import 'package:netfix_ui/homepage.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int currentindex = 0;
  final bottomnavigatoritem = [
    BottomNavigationBarItem(
        icon: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                width: 1,
                color: Colors.black,
              )),
          child: const Icon(Icons.home),
        ),
        label: 'Home'),
    BottomNavigationBarItem(
        icon: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                width: 1,
                color: Colors.black,
              )),
          child: const Icon(Icons.collections_sharp),
        ),
        label: 'Coming Soon'),
    BottomNavigationBarItem(
        icon: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                width: 1,
                color: Colors.black,
              )),
          child: const Icon(Icons.emoji_emotions_rounded),
        ),
        label: 'Fast Laughs'),
    BottomNavigationBarItem(
        icon: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                width: 1,
                color: Colors.black,
              )),
          child: const Icon(Icons.download_for_offline_rounded),
        ),
        label: 'Downloads'),
  ];

  final List pages = const [
    Myhome(),
    ComingSoon(),
    Fastlaughs(),
    Screendownload(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        elevation: 0,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color.fromARGB(255, 103, 99, 99),
        items: bottomnavigatoritem,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentindex,
        onTap: (newindex) {
          setState(() {
            currentindex = newindex;
          });
        },
      ),
    );
  }
}
