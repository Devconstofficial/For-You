import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextContainer extends StatelessWidget {
  final double paddingTop;

  const TextContainer({super.key, required this.paddingTop});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.w, top: paddingTop),
      child: Container(
        width: 338.w,
        decoration: ShapeDecoration(
          color: const Color(0xFF4B4949),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 12.w, top: 10.h, bottom: 10.h),
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
