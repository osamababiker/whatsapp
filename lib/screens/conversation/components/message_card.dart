import 'package:flutter/material.dart';

import '../../../constants.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({
    Key key, 
    this.message, 
    this.isSender = true,
  }) : super(key: key);

  final String message;
  final bool isSender;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: isSender ? Row(
        children: [
          Container(
            width: size.width * 0.5,
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.22),
              borderRadius: BorderRadius.circular(5)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                message,
                style: TextStyle(
                  fontFamily: "Jozoor"
                ),
              ),
            )
          ),
        ],
      )
      : Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: size.width * 0.5,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(
                offset: Offset(0 , -15),
                blurRadius: 20,
                color: Color(0xFFDADADA).withOpacity(0.4)
              )],
              borderRadius: BorderRadius.circular(5)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                message,
                style: TextStyle(
                  fontFamily: "Jozoor"
                ),
              ),
            )
          ),
        ],
      ) ,
    );
  }
}