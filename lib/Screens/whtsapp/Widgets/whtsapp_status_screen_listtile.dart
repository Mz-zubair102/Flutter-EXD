import 'package:flutter/material.dart';
import 'package:practise_app/Screens/whtsapp/Models/recent_status_model.dart';

class WhtsappStatusListTile extends StatefulWidget {
  final StatusModel statusdetail;
   WhtsappStatusListTile({Key? key,required this.statusdetail}) : super(key: key);

  @override
  State<WhtsappStatusListTile> createState() => _WhtsappStatusListTileState();
}

class _WhtsappStatusListTileState extends State<WhtsappStatusListTile> {
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
              image: AssetImage(widget.statusdetail.imagepath),
              fit: BoxFit.cover),
        ),
      ),
      title: Text(
        widget.statusdetail.tittle,
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        widget.statusdetail.subtittle,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 14,
          color: Color(0xff5D5D5D),
        ),
      ),
    );
  }
}
