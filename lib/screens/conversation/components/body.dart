import 'package:flutter/material.dart';
import 'package:whatsapp/constants.dart';

import 'message_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        child: ListView(
          children: [
            MessageCard(
              message: "السلام عليكم , كيف الحال يا هندسة",
            ),
            MessageCard(
              message: "تمام والله في نعم الحال , ماف اي عوجة",
              isSender: false,
            ),
            MessageCard(
              message: "الحمد لله \n كنت دايرك ترسل لي ملفات المشروع \n مفترض يتسلم بكرة",
            ),
          ],
        ),
      );
  }
}

