import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rental_app/models/category.dart';

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
              Colors.black,
              Colors.teal.shade900,
            ],
          ),
        ),
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
                        color: Colors.white,
                      )),
                  Text(
                    'Skip',
                    style: GoogleFonts.lora(
                      fontSize: 20,
                      color: Colors.white,
                      height: 1.0,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Choose a category',
              style: GoogleFonts.lora(
                fontSize: 24,
                color: Colors.white,
                height: 1.2,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              children: [
                buildCategory(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget buildCategory() {
  return ListView.builder(
      itemCount: rentCategory.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return MaterialButton(
          onPressed: () {},
          child: Container(
            height: 200,
            width: 50,
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
              borderRadius: BorderRadius.circular(22),
            ),
          ),
        );
      });
}
