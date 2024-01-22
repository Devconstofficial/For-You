import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SimpleButton extends StatefulWidget {
  final String text;

  final String selected;
  final Function onTap;
  const SimpleButton(
      {super.key,
      required this.text,
      required this.onTap,
      required this.selected});

  @override
  State<SimpleButton> createState() => _SimpleButtonState();
}

class _SimpleButtonState extends State<SimpleButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 14.w, right: 8.w),
      child: InkWell(
        onTap: () {
          widget.onTap();
        },
        child: Container(
          width: 368.w,
          height: 48.h,
          decoration: ShapeDecoration(
            color: widget.selected == widget.text
                ? const Color(0xFF4790E5)
                : const Color(0xFF4B4949),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
          ),
          child: Center(
            child: Text(
              widget.text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.sp,
                fontFamily: 'Red Hat Display',
                fontWeight: FontWeight.w500,
                letterSpacing: 0.14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
