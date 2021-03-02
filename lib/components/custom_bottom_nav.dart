import 'package:flutter/material.dart';

import '../constants.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 2.0),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(  
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(
                offset: Offset(0 , -15),
                blurRadius: 20,
                color: Color(0xFFDADADA).withOpacity(0.4)
              )]
            ),
            child: 
              TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  prefixIcon: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.emoji_emotions), 
                        onPressed: (){}
                      ),
                      Text(
                        "أكتب رسالتك",
                        style: TextStyle(
                          fontFamily: "Jozoor"
                        ),
                      )
                    ],
                  ),
                  suffixIcon: Row(
                    children: [
                      Spacer(),
                      IconButton(
                        icon: Icon(Icons.attach_file), 
                        onPressed: (){}
                      ),
                      IconButton(
                        icon: Icon(Icons.camera_alt), 
                        onPressed: (){}
                      ),
                    ],
                  )
                ),
            ),
          ),
        ),
        FlatButton(
          shape: CircleBorder(),
          color: kSecondaryColor,
          onPressed: () {}, 
          child: Icon(Icons.mic_none, color: Colors.white),
        )
      ],
    );
  }
}