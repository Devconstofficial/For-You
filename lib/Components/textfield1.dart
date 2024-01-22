import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextField1 extends StatefulWidget {
  final String label;

  const TextField1({super.key, required this.label});

  @override
  State<TextField1> createState() => _TextFieldState();
}

class _TextFieldState extends State<TextField1> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: const Color.fromRGBO(243, 243, 243, 1),
      style: const TextStyle(color: Color.fromRGBO(243, 243, 243, 1)),
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              width: 2, color: Color.fromRGBO(157, 157, 157, 1)),
          borderRadius: BorderRadius.circular(12.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              width: 1, color: Color.fromRGBO(157, 157, 157, 1)),
          borderRadius: BorderRadius.circular(12.r),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.r),
        ),
        hintText: widget.label,
        hintStyle: TextStyle(
          color: const Color.fromRGBO(243, 243, 243, 1),
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
