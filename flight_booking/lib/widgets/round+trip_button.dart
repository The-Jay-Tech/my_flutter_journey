import 'package:flight_booking/style/colors.dart';
import 'package:flutter/material.dart';

class RoundTrip extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const RoundTrip({Key? key, required this.text, required this.onPressed }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: onPressed,
        color: AppColor.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
            Icon(
              Icons.play_arrow,
              color: Colors.black,
              size: 18,
            ),
          ],
        ));
  }
}
