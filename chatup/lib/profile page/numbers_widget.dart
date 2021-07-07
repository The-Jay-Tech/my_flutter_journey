import 'package:flutter/material.dart';

class NumbersWidget extends StatelessWidget {
  const NumbersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildButton(context, '3.1k', 'Views'),
            buildDivider(),
            buildButton(context, '99', 'Following'),
            buildDivider(),
            buildButton(context, '167', 'Followers'),
          ],
        ),
      );
  Widget buildDivider() => Container(
    height: 24,
    child: VerticalDivider(),
    );

  Widget buildButton(BuildContext context, String value, String text) =>
      MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 4),
        onPressed: () {},
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              value,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 2),
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
}
