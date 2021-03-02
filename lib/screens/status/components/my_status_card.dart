import 'package:flutter/material.dart';
import '../../../constants.dart';

class MyStatusCard extends StatelessWidget {
  const MyStatusCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(
            offset: Offset(0 , -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.4)
          )]
      ),
      child: Padding(
        padding: const EdgeInsets.all(kDefaultPadding / 2),
        child: Row(
          children: [
            Stack(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/avatar.png"),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: IconButton(
                      icon: Icon(Icons.add,color: Colors.white, size: 10,), 
                      onPressed: (){}
                    ),
                    ),
                ),
                
              ]
            ),
            SizedBox(width: 10.0),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "حالتي\n",
                    style: TextStyle(
                      fontFamily: "Jozoor",
                      color: Colors.black
                    )
                  ),
                  TextSpan(
                    text: "انقر لاضافة حالة",
                    style: TextStyle(
                      fontFamily: "Jozoor",
                      color: Colors.black
                    )
                  )
                ]
              )
            )
          ]
        ),
      )
    );
  }
}