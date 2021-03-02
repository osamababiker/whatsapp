import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar buildConvirsationAppBar(BuildContext context) {
    return AppBar(
        actions: [
          Row(  
            children: [
              IconButton(
                icon: SvgPicture.asset("assets/icons/arrow_right.svg"), 
                onPressed: () {
                  Navigator.pop(context);
                }
              ),
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/avatar2.png"),
              ),
              SizedBox(width: 5.0),
              Text(
                "نجاة",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Jozoor",
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
          Spacer(),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.video_call, color: Colors.white), 
                onPressed: (){}
              ),
              IconButton(
                icon: Icon(Icons.call, color: Colors.white), 
                onPressed: (){}
              ),
              IconButton(
                icon: Icon(Icons.more_vert, color: Colors.white), 
                onPressed: (){}
              )
            ],
          )
        ],
      );
  }
