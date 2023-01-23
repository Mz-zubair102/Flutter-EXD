import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practise_app/Screens/splash_screen.dart';
import 'package:practise_app/Screens/welcome.dart';
import 'package:practise_app/Screens/whtsapp/Models/recent_status_model.dart';
import 'package:practise_app/Screens/whtsapp/Screens/whtsapp_call_screen.dart';
import 'package:practise_app/Screens/whtsapp/Screens/whtsapp_chat_screen.dart';
import 'package:practise_app/Screens/whtsapp/Screens/whtsapp_status_screen.dart';
import 'package:practise_app/Screens/whtsapp/Widgets/whtsapp_chats_screen_listtile.dart';

import '../../Models/chats_models.dart';

class WhtsappTabBarScreen extends StatelessWidget {
  WhtsappTabBarScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            resizeToAvoidBottomInset: true,
            appBar: AppBar(
              elevation: 10,
              backgroundColor: Colors.teal,
              title: const Text("WhatsApp"),
              actions: [
                IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.camera)),
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.ellipsis_vertical))
              ],
              bottom: TabBar(indicatorColor: Colors.white, tabs: [
                Tab(child: Icon(Icons.groups)),
                Tab(
                    child: Text("CHATS",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w900))),
                Tab(
                    child: Text("STATUS",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w900))),
                Tab(
                    child: Text("CALLS",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w900))),
              ]),
            ),
            body: SafeArea(
              child: TabBarView(
                children: [
                  Center(child: Text("Tab Bar view 1")),
                  WhtsappChatScreen(),
                  WhtsappStatusScreen(),
                  WhtsappCallScreen(),
                ],
              ),
            )));
  }
}
