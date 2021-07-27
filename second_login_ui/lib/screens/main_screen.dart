import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:second_login_ui/models/movie_models.dart';
import 'package:second_login_ui/styles/images.dart';
import 'package:second_login_ui/styles/text.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.thirdScreen), fit: BoxFit.cover),
          ),
          child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.movie,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Moviez',
                          style: AppTextStyle().movieFont,
                        ),
                        Spacer(),
                        Icon(Icons.search),
                      ]),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.local_movies),
                            Text('Today',
                                style: GoogleFonts.prompt(
                                  fontSize: 38,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                )),
                          ],
                        ),
                        Container(
                          height: 300,
                          width: MediaQuery.of(context).size.width,
                          child: movieList(),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.video_label, color: Colors.black),
                                  Text(
                                    'Popular Reviews',
                                    style: GoogleFonts.prompt(
                                      fontSize: 25,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                MaterialButton(
                                    onPressed: () {},
                                    child: Container(
                                      width: 50,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          color: Colors.white.withOpacity(0.5)),
                                      child: Icon(
                                        Icons.filter_list,
                                        color: Colors.black,
                                      ),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: MaterialButton(
                                      onPressed: () {},
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 90,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color:
                                                Colors.white.withOpacity(0.5)),
                                        child: Text('Action',
                                            style: GoogleFonts.prompt(
                                              fontSize: 20,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                            )),
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: MaterialButton(
                                      onPressed: () {},
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 90,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color:
                                                Colors.white.withOpacity(0.5)),
                                        child: Text('Drama',
                                            style: GoogleFonts.prompt(
                                              fontSize: 20,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                            )),
                                      )),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}

Widget movieList() {
  return ListView.builder(
      itemCount: movieData.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return MaterialButton(
          onPressed: () {},
          child: Container(
            height: 400,
            width: 200,
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
                  image: AssetImage(movieData[index].img), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(22),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 100, 250),
              child: Container(
                width: 0.7,
                height: 0.5,
                alignment: Alignment.topCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white.withOpacity(0.5)),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                      ),
                      Text('92%',
                          style: GoogleFonts.notoSans(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      });
}
