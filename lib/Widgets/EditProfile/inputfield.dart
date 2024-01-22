import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputField extends StatefulWidget {
  final String text;
  final int minlines;
  final int maxlines;
  const InputField(
      {super.key,
      required this.text,
      required this.minlines,
      required this.maxlines});

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.w, right: 16.w),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsets.only(top: 5.h, bottom: 15.h),
          child: Text(
            widget.text,
            style:  TextStyle(
                color: const Color(0xFFF3F3F3),
                fontSize: 14.sp,
                fontFamily: 'Red Hat Display',
                fontWeight: FontWeight.w600),
          ),
        ),
        TextField(
          style: const TextStyle(color: Colors.white),
          minLines: widget.minlines,
          maxLines: widget.maxlines,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide:  BorderSide(
                  width: 1.w, color: const Color.fromRGBO(157, 157, 157, 1)),
              borderRadius: BorderRadius.circular(12.r),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide:
                    const BorderSide(color: Color.fromRGBO(157, 157, 157, 1))),
          ),
        ),
      ]),
    );
  }
}
