import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GreyTextField extends StatefulWidget {
  final Widget? icon;
  final String label;

  const GreyTextField({super.key, required this.label, this.icon});

  @override
  State<GreyTextField> createState() => _TextFieldState();
}

class _TextFieldState extends State<GreyTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: const Color.fromRGBO(243, 243, 243, 1),
      style: const TextStyle(color: Color.fromRGBO(243, 243, 243, 1)),
      decoration: InputDecoration(
        suffixIcon: widget.icon,
        fillColor: const Color.fromRGBO(75, 73, 73, 1),
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(width: 2, color: Color.fromRGBO(75, 73, 73, 1)),
          borderRadius: BorderRadius.circular(12.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(width: 1, color: Color.fromRGBO(75, 73, 73, 1)),
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
