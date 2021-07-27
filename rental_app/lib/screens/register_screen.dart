import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rental_app/screens/sign_up.dart';
import 'package:rental_app/styles/images.dart';
import 'package:rental_app/styles/text.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
                      padding: const EdgeInsets.fromLTRB(16, 100, 16, 20),
                      child: Text(
                        'Login to your Account',
                        style: AppTextStyle().titleStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: textFormField(Icons.email, 'Email'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: passwordField(Icons.lock, 'Password'),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(90, 10, 90, 10),
                              child: MaterialButton(
                                onPressed: () {},
                                color: Colors.teal[900],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: EdgeInsets.fromLTRB(25, 10, 25, 5),
                                child: Text(
                                  'LOGIN',
                                  style: AppTextStyle().loginStyle,
                                ),
                              ),
                            ),
                            Text('Forgot Password?',
                                style: GoogleFonts.lora(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                )),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Text('Or log in with',
                              style: GoogleFonts.lora(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              )),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  socialIcon(context, AppImages.facebook),
                                  socialIcon(context, AppImages.google),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account? ",
                            style: GoogleFonts.lora(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            )),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => SignUp()));
                          },
                          child: Text(
                            'Sign Up',
                            style: GoogleFonts.lora(
                              fontSize: 18,
                              color: Colors.teal[200],
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

Widget socialIcon(BuildContext context, String imagepath) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(2, 10, 2, 20),
    child: Container(
      alignment: Alignment.bottomLeft,
      height: 40,
      width: 80,
      child: MaterialButton(
        height: 4,
        minWidth: 2,
        onPressed: () {},
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 60,
              height: MediaQuery.of(context).size.height,
              child: Image.asset(imagepath),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget textFormField(IconData icon, String text) {
  return TextFormField(
    decoration: InputDecoration(
      focusedBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
      focusColor: Colors.white,
      fillColor: Colors.white.withOpacity(0.5),
      filled: true,
      prefixIcon: Icon(icon),
      hintText: text,
      hintStyle: TextStyle(
        color: Colors.white,
      ),
    ),
  );
}

Widget passwordField(IconData icon, String text) {
  return TextFormField(
    decoration: InputDecoration(
      focusedBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
      focusColor: Colors.white,
      fillColor: Colors.white.withOpacity(0.5),
      filled: true,
      prefixIcon: Icon(icon),
      suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(Icons.remove_red_eye, color: Colors.white)),
      hintText: text,
      hintStyle: TextStyle(
        color: Colors.white,
      ),
    ),
  );
}
