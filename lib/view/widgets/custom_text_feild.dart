import 'package:flutter/material.dart';

import '../../constant/constant.dart';

class CustomTextFeild extends StatelessWidget {
  final String hintText;
  final int maxLines;

  const CustomTextFeild({
    Key? key,
    required this.hintText,
    this.maxLines = 1,
    this.onSaved,
  }) : super(key: key);
  final Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (val) {
        if (val?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      textAlign: TextAlign.start,
      maxLines: maxLines,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: kPrimaryColor),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(color: kPrimaryColor)),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: kPrimaryColor,
            ),
          )),
    );
  }
}
