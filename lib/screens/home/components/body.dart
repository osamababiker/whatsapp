import 'package:flutter/material.dart';
import 'contact_card.dart';
import 'header_bar.dart';
import 'package:whatsapp/screens/conversation/conversation_screen.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        HeaderBar(),
        Expanded(
          child: Container(
            width: double.infinity,
            height: 20,
            color: Colors.white,
            child: Column(
              children: [
                ContactCard(
                  image: "assets/images/avatar.png",
                  name: "عبد الله أحمد",
                  message: "نتقابل بكرة طيب",
                  date: "22/1/2021",
                  press: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ConversationScreen()));
                  },
                ),
                ContactCard(
                  image: "assets/images/user-placeholder.jpg",
                  name: "محمد علي ",
                  numOfMessage: 1,
                  message: "يا دفعة كيف الحال",
                  date: "28/2/2021",
                  press: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ConversationScreen()));
                  },
                  hasMessage: true,
                ),
                ContactCard(
                  image: "assets/images/avatar2.png",
                  name: "نجاة",
                  message: "السلام عليكم",
                  date: "26/2/2021",
                  press: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ConversationScreen()));
                  },
                ),
                ContactCard(
                  image: "assets/images/user-placeholder.jpg",
                  name: "حسن المليح",
                  message: "رسلت الملفات يا أسامة ؟",
                  date: "25/2/2021",
                  hasMessage: true,
                  numOfMessage: 2,
                  press: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ConversationScreen()));
                  },
                ),
              ],
            ),
          ),
        )
      ]
    );
  }
}
