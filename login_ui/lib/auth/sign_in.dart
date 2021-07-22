import 'package:flutter/material.dart';
import 'package:login_ui/styles/colors.dart';
import 'package:login_ui/styles/images.dart';
import 'package:login_ui/widgets/textfield.dart';

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
                  padding: EdgeInsets.fromLTRB(6, 25, 6, 32),
                  width: 320,
                  decoration: BoxDecoration(
                    color: Color(0xFF251734).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(23),
                    image: DecorationImage(
                      image: AssetImage(AppImages.secondBackground),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 140, left: 10, right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppTextField(
                          controller: null,
                          label: 'Email Address',
                          hintText: 'Enter your email address',
                        ),
                        SizedBox(height: 14),
                        AppTextField(
                          controller: null,
                          label: 'Password',
                          hintText: 'Enter password',
                          obscureText: true,
                        ),
                        SizedBox(height: 30),
                        MaterialButton(
                          onPressed: () {},
                          minWidth: double.infinity,
                          color: AppColor.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: List.generate(
                            150 ~/ 1,
                            (index) => Expanded(
                              child: Container(
                                color: index % 5 == 0
                                    ? Colors.transparent
                                    : AppColor.blue,
                                height: 1,
                              ),
                            ),
                          ),
                        ),
                        // Row(
                        //   children: [
                        //     socialIcon(),
                        //     googleIcon(),
                        //   ],
                        // ),
                        MaterialButton(
                          onPressed: () {},
                          color: AppColor.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Row(  
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                    AssetImage(AppImages.facebookIcon),
                              ),
                              Text('Google'),
                            ],
                          ),
                        )
                        // Container(
                        //   child: Text('Forget Password?',
                        //       style: TextStyle(color: Colors.blue[900])),
                        // ),
                        // Container(
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.center,
                        //     children: [
                        //       Text("Don't have an account? ",
                        //           style: TextStyle(
                        //             color: Colors.grey,
                        //           )),
                        //       Text('Sign Up',
                        //           style: TextStyle(color: Colors.blue[900])),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
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
  return Container(
    height: 40,
    width: 120,
    child: MaterialButton(
      onPressed: () {},
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      child: FittedBox(
        child: Row(
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
  return Container(
    height: 40,
    width: 120,
    child: MaterialButton(
      onPressed: () {},
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      child: FittedBox(
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
