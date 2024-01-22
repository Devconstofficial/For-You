import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginButton extends StatelessWidget {
   final String text;
  const LoginButton({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 368.w,
      height: 48.h,
      decoration: ShapeDecoration(
        color: const Color(0xFF4790E5),
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
            fontWeight: FontWeight.w600,
            letterSpacing: 0.18,
          ),
        ),
      ),
    );
  }
}
