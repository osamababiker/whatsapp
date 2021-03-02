import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'my_status_card.dart';
import 'new_status_header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        MyStatusCard(),
        NewStatusHeader(),
        StatusCard(
          image: "assets/images/avatar2.png",
          name: "نجاة",
          date: "أمس 6:23م",
        ),
        StatusCard(
          image: "assets/images/user-placeholder.jpg",
          name: "محمد على",
          date: "أمس 6:2",
        ),
        StatusCard(
          image: "assets/images/avatar.png",
          name: "عماد عبد الله",
          date: "أمس 5:2",
        )
      ],
    );
  }
}

class StatusCard extends StatelessWidget {
  const StatusCard({
    Key key, this.image, this.name, this.date,
  }) : super(key: key);

  final String image, name, date;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: kSecondaryColor),
        ),
        child: CircleAvatar(
          backgroundImage: AssetImage(image),
        ),
      ),
      title: Text(
        name,
        style: TextStyle(
          fontFamily: "Jozoor"
        ),
      ),
      subtitle: Text(
        date,
        style: TextStyle(
          fontFamily: "Jozoor"
        ),
      ),
    );
  }
}
