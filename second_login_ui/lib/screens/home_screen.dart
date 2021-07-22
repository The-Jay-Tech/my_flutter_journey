import 'package:flutter/material.dart';
import 'package:second_login_ui/styles/images.dart';
import 'package:second_login_ui/styles/text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.background), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 10, 90),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: AppTextStyle().titleStyle,
                ),
                Padding(padding: EdgeInsets.all(5)),
                Text('Please sign in to continue',
                    style: AppTextStyle().subStyle),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget emailButton() {
  return Container(
    child: Column(
      children[
        
      ],
    ),
  );
}
