import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlueContainer extends StatelessWidget {
  const BlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 72.w,
        top: 8.h,
        right: 8.w,
      ),
      child: Container(
        padding: EdgeInsets.only(bottom: 10.h, top: 10.h),
        width: 338.w,
        decoration: ShapeDecoration(
          color: const Color(0xFF4790E5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: 12.w,
          ),
          child: Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            style: TextStyle(
              color: const Color(0xFFF3F3F3),
              fontSize: 12.sp,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
