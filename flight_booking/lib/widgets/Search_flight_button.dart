import 'package:flutter/material.dart';

class SearchFlight extends StatelessWidget {
  SearchFlight({Key? key, required this.text, required this.text2}) : super(key: key);
  final String text, text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.only(left: 12, top: 8, bottom: 4),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.flight_takeoff),
              hintText: '$text',
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.flight_takeoff),
              hintText: '$text2',
              border: UnderlineInputBorder(borderSide: BorderSide.none)
            ),
          ),
        ],
      ),
    );
  }
}
