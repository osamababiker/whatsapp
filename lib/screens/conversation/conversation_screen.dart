import 'package:flutter/material.dart';
import 'package:whatsapp/components/convirsation_app_bar.dart';
import 'package:whatsapp/components/custom_bottom_nav.dart';
import 'components/body.dart';


class ConversationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: buildConvirsationAppBar(context),
        body: Body(),
        bottomNavigationBar: CustomBottomNav(),
      ),
    );
  }
}

