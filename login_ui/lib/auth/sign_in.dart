import 'package:flutter/material.dart';
import 'package:login_ui/styles/colors.dart';
import 'package:login_ui/styles/images.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.secondPage),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
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
                      image: AssetImage(AppImages.secondBackground),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 140, left: 10, right: 10),
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Email Address',
                                hintText: 'Enter your email address',
                                fillColor: Colors.blueGrey[50],
                                isDense: true,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(23),
                                  borderSide:
                                      BorderSide(color: Color(0xFFEEEEEE)),
                                ),
                                filled: true,
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(style: BorderStyle.none),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(23),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 14),
                            TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                hintText: 'Password',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50, 30, 50, 60),
                        child: MaterialButton(
                          onPressed: () {},
                          color: Colors.blue[900],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Sign In',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Text('Forget Password?',
                            style: TextStyle(color: Colors.blue[900])),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            socialIcon(),
                            googleIcon(),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account? ",
                                style: TextStyle(
                                  color: Colors.grey,
                                )),
                            Text('Sign Up',
                                style: TextStyle(color: Colors.blue[900])),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget socialIcon() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(2, 10, 2, 20),
    child: Container(
      alignment: Alignment.bottomLeft,
      height: 40,
      width: 120,
      child: MaterialButton(
        height: 4,
        minWidth: 2,
        onPressed: () {},
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 70,
              width: 70,
              child: Image.asset(
                AppImages.facebookIcon,
                fit: BoxFit.fill,
              ),
            ),
            Text(
              'Sign In',
              style: TextStyle(fontSize: 10, color: Colors.blue[900]),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget googleIcon() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(2, 10, 2, 20),
    child: Container(
      alignment: Alignment.centerLeft,
      height: 40,
      width: 120,
      child: MaterialButton(
        height: 4,
        minWidth: 2,
        onPressed: () {},
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topLeft,
              height: 70,
              width: 70,
              child: Image.asset(
                AppImages.googleIcon,
                fit: BoxFit.fill,
              ),
            ),
            Text(
              'Sign In',
              style: TextStyle(fontSize: 10, color: Colors.blue[900]),
            ),
          ],
        ),
      ),
    ),
  );
}
