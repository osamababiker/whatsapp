import 'package:flutter/material.dart';

import '../../../constants.dart';


class ContactCard extends StatelessWidget {
  const ContactCard({
    Key key, 
    this.image, 
    this.name, 
    this.message, 
    this.date, 
    this.press, 
    this.hasMessage = false, 
    this.numOfMessage,
  }) : super(key: key);

  final String image, name, message, date;
  final Function press;
  final bool hasMessage;
  final int numOfMessage;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(image),
          ),
          title: Text(
            name,
            style: TextStyle(
              fontFamily: "Jozoor"
            ),
          ),
          subtitle: Text(
            message,
            style: TextStyle(
              fontFamily: "Jozoor"
            ),
          ),
          trailing: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                hasMessage ? Text(
                  date,
                  style: TextStyle(
                    fontFamily: "Jozoor",
                    color: kSecondaryColor
                  ),
                )
                : Text(
                  date,
                  style: TextStyle(
                    fontFamily: "Jozoor",
                  ),
                ),
                hasMessage ?  
                  Container(
                    decoration: BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                      child: Text(
                        "$numOfMessage",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Jozoor"
                        ),
                      ),
                    ),
                  )
                : 
                  Text("")
              ],
            ),
          ),
        ),
      ),
    );
  }
}

