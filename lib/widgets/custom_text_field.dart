import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextInputWidget extends StatelessWidget {
  CustomTextInputWidget({
    super.key,
    this.hintTxt,
    this.onChange,
    this.textInputType,
    this.obscure = false,
  });
  Function(String)? onChange;
  final String? hintTxt;
  final bool obscure;
  final TextInputType? textInputType;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      obscureText: obscure,
      onChanged: onChange,
      style: const TextStyle(
        color: Colors.grey,
      ),
      decoration: InputDecoration(
        hintText: hintTxt,
        hintStyle: const TextStyle(color: Colors.grey),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
