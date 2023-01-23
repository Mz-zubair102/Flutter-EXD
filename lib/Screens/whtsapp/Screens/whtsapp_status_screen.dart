import 'package:flutter/material.dart';
import 'package:practise_app/Screens/whtsapp/Widgets/whtsapp_status_screen_listtile.dart';

import '../Models/recent_status_model.dart';

class WhtsappStatusScreen extends StatefulWidget {
  WhtsappStatusScreen({Key? key,}) : super(key: key);
  List<StatusModel> statuslist=[
    StatusModel(imagepath: "Assets/Images/profileImages7.jpg", tittle: "john", subtittle: "5 minutes ago"),
    StatusModel(imagepath: "Assets/Images/profileImages3.jpg", tittle: "Robert", subtittle: "10 hours ago"),
    StatusModel(imagepath: "Assets/Images/profileImages4.jpg", tittle: "Robert", subtittle: "1 hour ago")
  ];

  @override
  State<WhtsappStatusScreen> createState() => _WhtsappStatusScreenState();
}

class _WhtsappStatusScreenState extends State<WhtsappStatusScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                contentPadding: EdgeInsets.only(left:0, top: 8.0),
                leading: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("Assets/Images/profileImage1.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
                title: Text(
                  "My status",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
                subtitle: Text(
                  "Tap to add status update",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff5D5D5D),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "Recent Updates",
                style: TextStyle(
                  color: Color(0xff5D5D5D),
                  fontWeight: FontWeight.bold,
                ),
              ),
              ListView.builder(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemCount: widget.statuslist.length,
                  itemBuilder: (context,int index){
                    StatusModel statuslistpass=widget.statuslist[index];
                    return WhtsappStatusListTile(statusdetail: statuslistpass);
                  }),
              SizedBox(height: 10,),
              Text(
                "Viewed Updates",
                style: TextStyle(color: Color(0xff5D5D5D),fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
