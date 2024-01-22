import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GreyButton extends StatelessWidget {
  final String text;
  const GreyButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 368.w,
      height: 48.h,
      decoration: ShapeDecoration(
        color: const Color(0xFF4B4949),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color(0xFFF3F3F3),
            fontSize: 18.sp,
            fontFamily: 'Red Hat Display',
            fontWeight: FontWeight.w500,
            letterSpacing: 0.18,
          ),
        ),
      ),
    );
  }
}
