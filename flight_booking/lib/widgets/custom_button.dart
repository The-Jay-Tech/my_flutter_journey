import 'package:flight_booking/style/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const CustomButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: onPressed,
        color: AppColor.black,
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
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            Icon(
              Icons.double_arrow_outlined,
              color: Colors.white,
              size: 18,
            ),
          ],
        ));
  }
}
