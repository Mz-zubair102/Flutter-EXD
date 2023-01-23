import 'package:flutter/material.dart';
import '../Models/calls_models.dart';
import '../Models/chats_models.dart';
import '../Widgets/whtsapp_chats_screen_listtile.dart';

class WhtsappChatScreen extends StatefulWidget {
  WhtsappChatScreen({Key? key}) : super(key: key);
  List<ChatsModel> chatslist = [
    ChatsModel(
        imagepath: "Assets/Images/profileImage1.jpg",
        tittle: "james",
        subtittle: "Hi",
        trailing: "10:05 AM"),
    ChatsModel(
        imagepath: "Assets/Images/profileImages2.jpg",
        tittle: "John",
        subtittle: "How are you",
        trailing: "30/11/22"),
    ChatsModel(
        imagepath: "Assets/Images/profileImages3.jpg",
        tittle: "Abdullah",
        subtittle:
        "Flutter Challenges will attempt to recreate a particular app UI or design in Flutter",
        trailing: "3:00 PM"),
    ChatsModel(
        imagepath: "Assets/Images/profileImages4.jpg",
        tittle: "John",
        subtittle: "UI or design in Flutter",
        trailing: "2:00 AM"),
    ChatsModel(
        imagepath: "Assets/Images/profleImages5.jpg",
        tittle: "Robert",
        subtittle: "Are you Fine",
        trailing: "6:45 AM"),
    ChatsModel(
        imagepath: "Assets/Images/welcomeimage.png",
        tittle: "Michel",
        subtittle: "Good",
        trailing: "28/11/2022"),
    ChatsModel(
        imagepath: "Assets/Images/profileImages6.jpg",
        tittle: "Flutter Exd",
        subtittle: "How Possible",
        trailing: "1/12/2022"),
    ChatsModel(
        imagepath: "Assets/Images/profileImages7.jpg",
        tittle: "BSCS",
        subtittle: "Can I know u",
        trailing: "1:13 AM"),
    ChatsModel(
        imagepath: "Assets/Images/profileImage1.jpg",
        tittle: "james",
        subtittle: "Hi",
        trailing: "10:05 AM"),
    ChatsModel(
        imagepath: "Assets/Images/profleImages5.jpg",
        tittle: "Michel",
        subtittle: "Good",
        trailing: "28/11/2022"),
  ];

  @override
  State<WhtsappChatScreen> createState() => _WhtsappChatScreenState();
}

class _WhtsappChatScreenState extends State<WhtsappChatScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        itemCount:widget.chatslist.length,
        itemBuilder: (context, int index) {
          ChatsModel chatslistpass = widget.chatslist[index];
          return WhtsAppChatsListTile(chatsdetail: chatslistpass);
        },
      ),
    );
  }
}
