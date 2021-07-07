// import 'dart:html';
import 'package:chatup/profile page/button_widget.dart';
import 'package:chatup/profile%20page/appbarwidget.dart';
import 'package:chatup/profile%20page/numbers_widget.dart';
import 'package:chatup/utilis/user_peferences.dart';
import 'package:chatup/profile page/profilewidget.dart';
import 'package:chatup/model/user.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPeferences.myUser;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(context),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(imagepath: user.imagepath, onClicked: () async {}),
          const SizedBox(height: 24),
          buildUserName(user),
          const SizedBox(height: 24),
          Center(
            child: buildFollowButton(),
          ),
          const SizedBox(height: 24),
          NumbersWidget(),
          const SizedBox(height: 48),
          buildAbout(user),
        ],
      ),
    );
  }

  Widget buildUserName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            user.number,
            style: TextStyle(color: Colors.grey),
          ),
        ],
      );
  Widget buildFollowButton() => ButtonWidget(text: 'Follow', onClicked: () {});
  Widget buildAbout(User user) => Container(
    padding: EdgeInsets.symmetric(horizontal: 48),
    child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bio',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              user.bio,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
  );
}
