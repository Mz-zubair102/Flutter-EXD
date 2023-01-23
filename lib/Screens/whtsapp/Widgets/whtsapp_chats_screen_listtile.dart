import 'package:flutter/material.dart';
import 'package:practise_app/Screens/whtsapp/Models/chats_models.dart';

class WhtsAppChatsListTile extends StatefulWidget {
  final ChatsModel chatsdetail;
  WhtsAppChatsListTile({Key? key, required this.chatsdetail}) : super(key: key);

  @override
  State<WhtsAppChatsListTile> createState() => _WhtsAppChatsListTileState();
}

class _WhtsAppChatsListTileState extends State<WhtsAppChatsListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(top:10,right: 10),
      leading: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: AssetImage(widget.chatsdetail.imagepath),
              fit: BoxFit.cover),
        ),
      ),
      title: Text(
        widget.chatsdetail.tittle,
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        widget.chatsdetail.subtittle,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 14,
          color: Color(0xff5D5D5D),
        ),
      ),
      trailing: Text(
        widget.chatsdetail.trailing,
        style: TextStyle(
            color: Color(0xff5D5D5D),
            fontSize: 14,
            fontWeight: FontWeight.w400),
      ),
    );
  }
}
