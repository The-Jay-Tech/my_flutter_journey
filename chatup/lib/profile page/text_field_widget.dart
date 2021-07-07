// import 'package:flutter/material.dart';

// class TextFieldWidget extends StatefulWidget {
//   final String label;
//   final String text;
//   final ValueChanged<String> onChanged;

//   const TextFieldWidget({
//     Key? key,
//     required this.label,
//     required this.text,
//     required this.onChanged,
//   }) : super(key: key);

//   @override
//   _TextFieldWidgetState createState() => _TextFieldWidgetState();
// }

// late final TextEditingController controller;
// @override
// void initState() {
//   super.initState();

//   controller = TextEditingController(text: widget.text);
// }

// class _TextFieldWidgetState extends State<TextFieldWidget> {
//   @override
//   Widget build(BuildContext context) => Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             widget.label,
//             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//           ),
//           const SizedBox(
//             height: 8,
//           ),
//           TextField(
//             controller: controller,
//           )
//         ],
//       );
// }
