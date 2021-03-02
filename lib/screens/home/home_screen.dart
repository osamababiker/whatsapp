import 'package:flutter/material.dart';
import 'package:whatsapp/components/app_bar.dart';
import '../../constants.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: buildAppBar(),
        body: Body(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kSecondaryColor,
          onPressed: (){},
          child: Icon(Icons.message_outlined, color: Colors.white,),
        ),
      ),
    );
  }

}