import 'package:flutter/material.dart';

AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: (){},
        ),
        IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: (){},
        ),
      ],
      title: Text("واتساب"),
    );
  }