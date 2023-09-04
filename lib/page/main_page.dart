import 'package:flutter/material.dart';
import 'package:kp_ahmadbakeri_note_app/page/note_page.dart';
import 'package:kp_ahmadbakeri_note_app/page/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.title});

  final String title;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final pages = [const NotePage(), ProfilePage()];

  var index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        backgroundColor: Colors.grey.shade800, // Set the background color
        selectedItemColor: Colors.green, // Set the selected item color
        unselectedItemColor: Colors.grey, // Set the unselected item color
        items: const [
          BottomNavigationBarItem(
            label: 'Note',
            icon: Icon(Icons.note_add_rounded),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person),
          ),
        ],
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
      ),
    );
  }
}
