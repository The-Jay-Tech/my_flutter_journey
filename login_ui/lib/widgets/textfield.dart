import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? hintText, label;
  final String? Function(String?)? onFieldSubmit, validator;
  final bool? obscureText;
  final FocusNode? focusNode;
  const AppTextField(
      {Key? key,
      required this.controller,
      this.keyboardType,
      this.hintText,
      required this.label,
      this.onFieldSubmit,
      this.validator,
      this.focusNode,
      this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      focusNode: focusNode,
      obscureText: obscureText == null ? false : obscureText!,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onFieldSubmitted: onFieldSubmit,
      validator: validator,
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
        fillColor: Colors.blueGrey[50],
        isDense: true,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(23),
          borderSide: BorderSide(color: Color(0xFFEEEEEE)),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(style: BorderStyle.none),
          borderRadius: const BorderRadius.all(
            Radius.circular(23),
          ),
        ),
      ),
    );
  }
}
