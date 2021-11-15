import 'package:flight_booking/model/tour_model.dart';
import 'package:flight_booking/screens/flight_details.dart';
import 'package:flight_booking/style/colors.dart';
import 'package:flight_booking/style/text_style.dart';
import 'package:flight_booking/widgets/Search_flight_button.dart';
import 'package:flight_booking/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bg,
      endDrawer: Drawer(child: ListView()),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/backk.jpg'),
              fit: BoxFit.cover,
            ),
            // gradient: LinearGradient(
            //   begin: Alignment.centerLeft,
            //   end: Alignment.topLeft,
            //   colors: [Colors.white10, Colors.white],
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hi Josh!',
                        style: GoogleFonts.robotoSlab(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      IconButton(
                        onPressed: () =>
                            _scaffoldKey.currentState?.openEndDrawer(),
                        icon: Icon(Icons.menu),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Text(
                          'Find flights that suit your timing and budget',
                          style: AppTextStyle().wordStyle,
                        ),
                        SizedBox(height: 12),
                        SearchFlight(text: 'From', text2: 'To'),
                        Padding(padding: EdgeInsets.all(10)),
                        CustomButton(
                          text: 'Continue',
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => FlightDetails()));
                          },
                        ),
                        buildBestTours(),
                        Container(
                          height: 230,
                          color: Colors.transparent,
                          width: MediaQuery.of(context).size.width,
                          child: _buildTour(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  

  Widget buildBestTours() {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Best Tours',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Icon(Icons.arrow_right_alt, color: Colors.grey),
        ],
      ),
    );
  }
}
