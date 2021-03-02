import 'package:flutter/material.dart';


class NewStatusHeader extends StatelessWidget {
  const NewStatusHeader({
    Key key,

  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 30.0,
      color: Colors.grey.withOpacity(0.5),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
        child: Text(
          "الحالات الحديثة",
          style: TextStyle(
            fontFamily: "Jozoor"
          ),
        ),
      ),
    );
  }
}

