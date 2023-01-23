import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practise_app/Screens/whtsapp/Models/calls_models.dart';

class WhtsAppCallScreenListTile extends StatefulWidget {
  final CallsModel callsdetail;
   WhtsAppCallScreenListTile({Key? key,required this.callsdetail}) : super(key: key);


  @override
  State<WhtsAppCallScreenListTile> createState() => _WhtsAppCallScreenListTileState();
}

class _WhtsAppCallScreenListTileState extends State<WhtsAppCallScreenListTile> {
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
              image: AssetImage(widget.callsdetail.imagepath),
              fit: BoxFit.cover),
        ),
      ),
      title: Text(
        widget.callsdetail.tittle,
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        widget.callsdetail.datetime,
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
