import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
      leading: BackButton(),
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.nightlight)
          
        ),
      ]);
}
