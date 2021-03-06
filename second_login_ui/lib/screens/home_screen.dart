import 'package:flutter/material.dart';
import 'package:second_login_ui/screens/main_screen.dart';
import 'package:second_login_ui/screens/practice_screen.dart';
import 'package:second_login_ui/screens/sign_up.dart';
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
    var materialButton = MaterialButton(
      onPressed: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => MainScreen()));
      },
      color: Colors.tealAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.fromLTRB(60, 20, 60, 20),
      child: Text(
        'LOGIN',
        style: TextStyle(
          fontSize: 22,
          color: Colors.indigo[900],
          height: 1.2,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.background), fit: BoxFit.cover),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 200),
                    Text(
                      'Login',
                      style: AppTextStyle().titleStyle,
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    Text('Please sign in to continue',
                        style: AppTextStyle().subStyle),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 30, 0, 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          fillColor: Colors.blueGrey[900],
                          focusColor: Colors.blueGrey[900],
                          prefixIcon: Icon(
                            Icons.mail,
                            color: Colors.white,
                          ),
                          hintText: 'EMAIL',
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        fillColor: Colors.black38,
                        prefixIcon: Icon(Icons.lock, color: Colors.white),
                        hintText: 'PASSWORD',
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        materialButton,
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Forget Password?',
                              style: AppTextStyle().forgetPass),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 30, 5, 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account? ",
                            style: AppTextStyle().subStyle,
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (_) => SignUp()));
                              },
                              child: Text(
                                'Sign Up',
                                style: AppTextStyle().forgetPass,
                              ))
                        ],
                      ),
                    )
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
