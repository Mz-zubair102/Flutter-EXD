import 'package:flutter/material.dart';
import 'package:practise_app/Screens/whtsapp/Widgets/whtsapp_calls_screen_listtile.dart';

import '../Models/calls_models.dart';

class WhtsappCallScreen extends StatefulWidget {
   WhtsappCallScreen({Key? key}) : super(key: key);

  List<CallsModel> callslist=[
    CallsModel(imagepath: "Assets/Images/profileImages3.jpg", tittle: "Flutter Exd", datetime: "December 5, 12:05PM"),
    CallsModel(imagepath: "Assets/Images/profileImages6.jpg", tittle: "James", datetime: "November 5, 3:00AM"),
    CallsModel(imagepath: "Assets/Images/profileImages4.jpg", tittle: "Robert", datetime: "Today, 12:00PM"),
  ];

  @override
  State<WhtsappCallScreen> createState() => _WhtsappCallScreenState();
}

class _WhtsappCallScreenState extends State<WhtsappCallScreen> {
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
                    contentPadding: EdgeInsets.only(left:0, top: 8),
                    leading: Container(
                      height: 70,
                      width: 70,
                      child: Icon(Icons.link,color: Colors.white,),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.teal,
                        // image: DecorationImage(
                        //     image: AssetImage("Assets/Images/profileImage1.jpg"),
                        //     fit: BoxFit.cover),
                      ),
                    ),
                    title: Text(
                      "Create call Link",
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                    ),
                    subtitle: Text(
                      "Share a link for your WhtsApp call",
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
                    "Recent",
                    style: TextStyle(
                      color: Color(0xff5D5D5D),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ListView.builder(
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: widget.callslist.length,
                      itemBuilder: (context,int index){
                        CallsModel callslistpass=widget.callslist[index];
                        return WhtsAppCallScreenListTile(callsdetail: callslistpass);
                      }),
                ],
              ),
            ),
          ),
        ));
  }
}
