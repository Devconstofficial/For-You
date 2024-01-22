import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Texte extends StatelessWidget {
  final String text;
  const Texte({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 9.w, top: 26.h),
              child: SvgPicture.asset(
                'assets/images/Back.svg',
                width: 26.w,
                height: 26.h,
                clipBehavior: Clip.antiAlias,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 6.w),
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.sp,
                  fontFamily: 'Red Hat Display',
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.96,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 26.h, right: 26.5.w),
          child: SvgPicture.asset(
            'assets/images/write.svg',
            width: 26.w,
            height: 26.h,
          ),
        )
      ],
    );
  }
}
