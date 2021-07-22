import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui/auth/sign_in.dart';
import 'package:login_ui/styles/images.dart';
import 'package:login_ui/styles/text.dart';
import 'package:url_launcher/url_launcher.dart';

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
              margin: EdgeInsets.only(left: 25, right: 25),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23),
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(12, 25, 12, 32),
                width: 320,
                decoration: BoxDecoration(
                  color: Color(0xFF251734).withOpacity(0.3),
                  borderRadius: BorderRadius.circular(23),
                  image: DecorationImage(
                      image: AssetImage('assets/background.png'),
                      fit: BoxFit.cover),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Safey Road', style: AppTextStyle().titleStyle),
                    Text(
                      'You will find whatever you are looking for',
                      style: AppTextStyle().subTitleStyle,
                    ),
                    Spacer(),
                    MaterialButton(
                      minWidth: double.infinity,
                      onPressed: () {
                        Navigator.pushNamed(context, '/get-started');
                      },
                      color: Colors.blue[900],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 14, vertical: 20),
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
                          style: GoogleFonts.galada(fontSize: 12),
                          children: [
                            TextSpan(
                              text: 'Joshua',
                              style: TextStyle(
                                letterSpacing: 1.0,
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                                decorationStyle: TextDecorationStyle.wavy,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  launch('https://github.com/Josh-cyber09');
                                },
                            ),
                            TextSpan(text: '  and  '),
                            TextSpan(
                              text: 'Samuel!',
                              style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1.0,
                                decoration: TextDecoration.underline,
                                decorationStyle: TextDecorationStyle.wavy,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  launch('https://github.com/techwithsam');
                                },
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 10)
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
