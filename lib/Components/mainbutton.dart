import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainButton extends StatelessWidget {
  final String text;
  const MainButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 14.w, right: 17.w),
      child: Container(
        width: 359.w,
        height: 36.h,
        decoration: ShapeDecoration(
          color: const Color(0xFF4790E5),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.sp,
              fontFamily: 'Red Hat Display',
              fontWeight: FontWeight.w600,
              letterSpacing: -0.72,
            ),
          ),
        ),
      ),
    );
  }
}
