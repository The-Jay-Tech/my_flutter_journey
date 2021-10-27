import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rental_app/models/category.dart';
import 'package:rental_app/screens/homepage.dart';

class ChoicePage extends StatefulWidget {
  const ChoicePage({Key? key}) : super(key: key);

  @override
  _ChoicePageState createState() => _ChoicePageState();
}

class _ChoicePageState extends State<ChoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
            colors: [
              Colors.white10,
              Colors.teal.shade100,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back_ios_rounded,
                          color: Colors.teal.shade900,
                        )),
                    Text(
                      'Skip',
                      style: GoogleFonts.lora(
                        fontSize: 20,
                        color: Colors.teal.shade900,
                        height: 1.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Choose a category',
                style: GoogleFonts.lora(
                  fontSize: 28,
                  color: Colors.teal.shade900,
                  height: 1.2,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'Choose at least two categories',
                  style: GoogleFonts.lora(
                    fontSize: 18,
                    color: Colors.teal.shade900,
                    height: 1.2,
                    fontWeight: FontWeight.w700, // ngj
                  ),
                ),
              ),
              SizedBox(height: 40),
              //  Container(
              //     height: 200,
              //     width: MediaQuery.of(context).size.width,
              //     child:
              buildCategory(),
              SizedBox(height: 100),
              MaterialButton(
                onPressed: () {
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (_) => HomePage()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Next',
                    style: GoogleFonts.lora(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
                color: Colors.teal.shade800,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildCategory() {
  return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.9,
          crossAxisSpacing: 8,
          mainAxisSpacing: 5,
          mainAxisExtent: 3.5),
          scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: rentCategory.length,
      itemBuilder: (BuildContext context, int index) {
        //  ListView.builder(
        // itemCount: rentCategory.length,
        // shrinkWrap: true,
        // scrollDirection: Axis.vertical,
        // itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.red,
              // alignment: Alignment.center,
              height: 400,
              width: 120,
              padding: EdgeInsets.all(3),
              margin: EdgeInsets.only(left: 4, right: 5),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 3.0, // soften the shadow
                    spreadRadius: 2.0, //extend the shadow
                    offset: Offset(
                      6.0, // Move to right 10  horizontally
                      10.0, // Move to bottom 10 Vertically
                    ),
                  )
                ],
                image: DecorationImage(
                    image: AssetImage(rentCategory[index].img),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(18),
              ),
            ),
        );
      });
}
