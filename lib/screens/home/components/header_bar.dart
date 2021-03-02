

import 'package:flutter/material.dart';
import 'package:whatsapp/screens/status/status_screen.dart';

import '../../../constants.dart';

class HeaderBar extends StatelessWidget {
  const HeaderBar({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size  = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.08,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        boxShadow: [BoxShadow(
          offset: Offset(0 , 10),
          blurRadius: 100,
          color: Colors.black
        )],
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.camera_alt,color: Colors.white.withOpacity(0.23),),
            onPressed: (){},
          ),
          FlatButton(
            onPressed: (){}, 
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    children: [
                      Text(
                        "الدردشات",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: "Jozoor"
                        ),
                      ),
                      SizedBox(width: 3.0),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text(
                            "71",
                            style: TextStyle(
                              color: kPrimaryColor
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 4,
                    color: Colors.white,
                  ),
                ),
              ]
            )
          ),
          FlatButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => StatusScreen()));
            }, 
            child: Row(
              children: [
                Text(
                  "الحالة",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: "Jozoor"
                  )
                ),
                Container(
                  child: Text(
                    ".",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 24
                    ),
                  ),
                ), 
              ],
            )
          ),
          FlatButton(
            onPressed: (){}, 
            child: Text(
              "المكالمات",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: "Jozoor"
              )
            )
          ),
        ]
      ),
      ),
    );
  }


}