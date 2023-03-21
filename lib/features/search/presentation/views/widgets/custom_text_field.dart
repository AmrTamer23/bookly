import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.onChanged,
      this.hint,
      this.obscure = false,
      this.maxlines = 1,
      this.onSubmitted,
      this.initialValue = '',
      this.suffIcon});

  final Function(String)? onChanged;
  final String? hint;
  final bool? obscure;
  final int? maxlines;
  final String? initialValue;
  final void Function(String?)? onSubmitted;
  final Widget? suffIcon;
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return TextField(
      obscureText: obscure!,
      onSubmitted: onSubmitted,
      onChanged: onChanged,
      maxLines: maxlines,
      cursorColor: Colors.amber,
      decoration: InputDecoration(
        hintText: hint,
        suffixIcon: suffIcon,
        suffixIconColor: Colors.white.withOpacity(0.4),
        hintStyle: const TextStyle(color: Colors.white54),
        focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.amberAccent)),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Colors.white),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Colors.redAccent),
        ),
      ),
    );
  }
}
