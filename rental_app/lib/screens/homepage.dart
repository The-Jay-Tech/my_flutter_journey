import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rental_app/models/category.dart';
import 'package:rental_app/styles/images.dart';

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
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.homePage), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rent Naija',
                      style: GoogleFonts.livvic(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(AppImages.sampleImage),
                      backgroundColor: Colors.transparent,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(2, 0, 2, 30),
                  child: Text('Make renting easier',
                      style: GoogleFonts.livvic(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black12,
                      ),
                      hintText: 'What are you looking for?',
                      hintStyle: GoogleFonts.roboto(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      )),
                ),
                // homeViewList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget homeViewList() {
  return Container(
    height: 400,
    width: 450,
    color: Colors.white,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ListView.builder(
          itemCount: housePic.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 70,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                  image: AssetImage(housePic[index].img),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ],
    ),
  );
}
