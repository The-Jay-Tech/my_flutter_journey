import 'package:flutter/material.dart';
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
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppImages.secondPage,
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 30),
              child: Card(
                elevation: 1,
                color: Color(0xFF251734).withOpacity(1.0),
                margin: EdgeInsets.only(left: 32, right: 32),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32)),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppImages.secondBackground),
                      fit: BoxFit.fill,
                    ),
                  ),
                  height: MediaQuery.of(context).size.height,
                  width: 320,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 120, bottom: 0, left: 20, right: 20),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blueGrey[50],
                            borderRadius: BorderRadius.circular(25),
                          ),
                          padding: EdgeInsets.fromLTRB(
                            20,
                            5,
                            20,
                            5,
                          ),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  hintText: 'Email',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blueGrey[50],
                            borderRadius: BorderRadius.circular(25),
                          ),
                          padding: EdgeInsets.fromLTRB(
                            20,
                            5,
                            20,
                            5,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
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
