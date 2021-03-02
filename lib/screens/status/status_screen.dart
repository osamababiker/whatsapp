import 'package:flutter/material.dart';
import 'package:whatsapp/components/app_bar.dart';
import 'package:whatsapp/constants.dart';
import 'components/body.dart';

class StatusScreen extends StatelessWidget {
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
          child: IconButton(
            icon: Icon(Icons.camera_alt), 
            onPressed: (){}
          ),
        ),
      )
    );
  }
}