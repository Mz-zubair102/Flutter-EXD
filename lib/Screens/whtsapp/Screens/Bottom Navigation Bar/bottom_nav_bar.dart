import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../whtsapp_call_screen.dart';
import '../whtsapp_chat_screen.dart';
import '../whtsapp_status_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedindex = 1;
  List<Widget> bodyList = [
    Center(child: Text("Tab Bar view 1")),
    WhtsappChatScreen(),
    WhtsappStatusScreen(),
    WhtsappCallScreen(),
  ];
  void _onNevBarTapped(int TappedIndex) {
    _selectedindex = TappedIndex;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.teal,
        title: const Text("WhatsApp"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.camera)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {}, icon: Icon(CupertinoIcons.ellipsis_vertical))
        ],
      ),
      body: bodyList[_selectedindex],
      // body: bodyList.elementAt(_selectedindex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.values.first,
        backgroundColor: Colors.teal,
        elevation: 10,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.groups), label: "GROUPS"),
          BottomNavigationBarItem(icon: Icon(Icons.chat_sharp), label: "CHATS"),
          BottomNavigationBarItem(icon: Icon(Icons.signal_wifi_statusbar_4_bar_outlined), label: "STATUS"),
          BottomNavigationBarItem(
              icon: Icon(Icons.call_sharp), label: "CALLS"),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedindex,
        onTap: _onNevBarTapped,
        /*onTap: (int tappedIndex) {
          _selectedindex = tappedIndex;
          setState(() {});
        },*/
      ),
    ));
  }
}
