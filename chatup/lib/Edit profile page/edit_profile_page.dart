// import 'package:chatup/profile%20page/appbarwidget.dart';
// import 'package:chatup/profile%20page/profilewidget.dart';
// import 'package:chatup/utilis/user_peferences.dart';
// import 'package:flutter/material.dart';
// import 'package:chatup/model/user.dart';

// class EditProfilePage extends StatefulWidget {
//   const EditProfilePage({Key? key}) : super(key: key);

//   @override
//   _EditProfilePageState createState() => _EditProfilePageState();
// }

// class _EditProfilePageState extends State<EditProfilePage> {
//   User user = UserPeferences.myUser;

//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: buildAppBar(context),
//         body: ListView(
//           padding: EdgeInsets.symmetric(horizontal: 32),
//           physics: BouncingScrollPhysics(),
//           children: [
//             ProfileWidget(imagepath: user.imagepath, isEdit: true, onClicked: () async {}),
//             const SizedBox(height: 24,),
//             TextFieldWidget(
//               label: 'Full Name',
//               text: user.name,
//               onChanged: (name) {},
//             )
//           ],
//         ),
//       );
// }
