import 'package:flutter/material.dart';

class InputTextWidgetComponent extends StatelessWidget {
  final Function(String?) onChanged;
  final TextEditingController textEditingController;
  final String? Function(String?)? validator;
  final String hintText;
  final String labelText;
  final bool obscureText;
  final bool readOnly;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final TextInputAction? textInputAction;
  final Color? cursorColor;

  // ignore: use_key_in_widget_constructors
  const InputTextWidgetComponent({
    required this.textEditingController,
    required this.onChanged,
    required this.labelText,
    required this.hintText,
    required this.readOnly,
    this.validator,
    this.obscureText = false,
    this.keyboardType,
    this.suffixIcon,
    this.textInputAction,
    this.cursorColor,
    // required InputDecoration decoration,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly,
      obscureText: obscureText,
      validator: validator,
      onChanged: onChanged,
      controller: textEditingController,
      keyboardType: keyboardType ?? TextInputType.text,
      textInputAction: textInputAction,
      cursorColor: cursorColor,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        contentPadding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
        hintText: hintText,
        fillColor: Colors.black.withOpacity(0.1),
        filled: true,
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.white),
        focusColor: Colors.white,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        border: const OutlineInputBorder(),
        errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 1.0)),
      ),
      style: const TextStyle(fontSize: 16, color: Colors.white),
    );
  }
}
