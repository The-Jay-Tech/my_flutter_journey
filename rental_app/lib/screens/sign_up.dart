import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rental_app/screens/choice_page.dart';
import 'package:rental_app/screens/register_screen.dart';
import 'package:rental_app/styles/images.dart';
import 'package:rental_app/styles/text.dart';

class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.login), fit: BoxFit.cover),
          ),
          child: Center(
            child: SingleChildScrollView(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 150, 16, 20),
                  child: Text(
                    'Signup a new Account',
                    style: AppTextStyle().titleStyle,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(6),
                    child: textFormField(Icons.email, 'Email')),
                Padding(
                    padding: const EdgeInsets.all(6),
                    child: textFormField(Icons.phone, 'Phone Number')),
                Padding(
                    padding: const EdgeInsets.all(6),
                    child: passwordField(Icons.lock, 'Password')),
                Padding(
                    padding: const EdgeInsets.all(6),
                    child: passwordField(Icons.lock, 'Confirm Password')),
                Padding(
                  padding: const EdgeInsets.fromLTRB(90, 20, 90, 20),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (_) => ChoicePage()));
                    },
                    color: Colors.teal[900],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'SIGN UP',
                          style: AppTextStyle().loginStyle,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text('Or sign up with',
                          style: GoogleFonts.lora(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          socialIcon(context, AppImages.facebook),
                          socialIcon(context, AppImages.google),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account? ",
                        style: GoogleFonts.lora(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        )),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (_) => SignIn()));
                      },
                      child: Text(
                        'Sign In',
                        style: GoogleFonts.lora(
                          fontSize: 18,
                          color: Colors.teal[200],
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )),
          ),
        ),
      ),
    );
  }
}