import 'package:flight_booking/style/text_style.dart';
import 'package:flight_booking/widgets/custom_button.dart';
import 'package:flight_booking/widgets/find_class.dart';
import 'package:flight_booking/widgets/flight_date.dart';
import 'package:flutter/material.dart';

class FlightDetails extends StatefulWidget {
  const FlightDetails({Key? key}) : super(key: key);

  @override
  _FlightDetailsState createState() => _FlightDetailsState();
}

class _FlightDetailsState extends State<FlightDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('SFO', style: AppTextStyle().cityStyle),
                        Text(
                          'San Francisco',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('LCY', style: AppTextStyle().cityStyle),
                        Text(
                          'London',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: ListTile(
                    leading: Icon(Icons.compare_arrows_sharp),
                    title: Text('Round-Trip'),
                    trailing: Switch(
                      value: true,
                      activeColor: Colors.black,
                      onChanged: (value) {},
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.all(10),
                ),
                FlightDate(text: 'Mar 5, Fri', text2: 'Mar 14, Sun'),
                Padding(
                  padding: EdgeInsetsDirectional.all(10),
                ),
                FindClass(text: 'Business Class', text2: '1 Passenger'),
                Padding(
                  padding: EdgeInsetsDirectional.all(100),
                ),
                CustomButton(text: 'Search Flights', onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
