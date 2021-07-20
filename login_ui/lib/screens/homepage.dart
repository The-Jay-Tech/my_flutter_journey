import 'dart:html' as html;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui/screens/sign_in.dart';
import 'package:login_ui/styles/images.dart';
import 'package:login_ui/styles/text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
        // padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.bacground), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 25, bottom: 25),
          child: Center(
            child: Card(
              elevation: 1,
              color: Color(0xFF251734).withOpacity(0.3),
              margin: EdgeInsets.only(left: 32, right: 32),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23),
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(12, 16, 12, 32),
                width: 320,
                decoration: BoxDecoration(
                  color: Color(0xFF251734).withOpacity(0.3),
                  borderRadius: BorderRadius.circular(23),
                  image: DecorationImage(
                      image: AssetImage('assets/background.png'),
                      fit: BoxFit.cover),
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'HELLO',
                      style: AppTextStyle().titleStyle,
                    ),
                    Text(
                      'You will find whatever you are looking for',
                      style: AppTextStyle().subTitleStyle,
                    ),
                    Spacer(),
                    MaterialButton(
                      minWidth: double.infinity,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => SignIn(),
                          ),
                        );
                      },
                      color: Colors.blue[900],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 14, vertical: 24),
                      child: Text(
                        'GET STARTED',
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 12),
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Welcome to safeyroad!!! Order your ride and get busted :(',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(fontSize: 12),
                    ),
                    SizedBox(height: 12),
                    Center(
                      child: Text.rich(
                        TextSpan(
                          text: 'Create by ',
                          style: TextStyle(fontSize: 12),
                          children: [
                            TextSpan(
                                text: 'Joshua',
                                style: GoogleFonts.sanchez(
                                  color: Colors.white54,
                                  decoration: TextDecoration.underline,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    html.window.open(
                                        'https://github.com/Josh-cyber09',
                                        'Github');
                                  }),
                            TextSpan(text: '  and  '),
                            TextSpan(
                              text: 'Samuel',
                              style: GoogleFonts.sanchez(
                                color: Colors.white70,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  html.window.open(
                                      'https://github.com/techwithsam',
                                      'Github');
                                },
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 30)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
