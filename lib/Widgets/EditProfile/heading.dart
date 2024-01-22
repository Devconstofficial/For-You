import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Heading extends StatelessWidget {
  const Heading({super.key});

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
                'Edit Profile',
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
        GestureDetector(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.only(right: 25.w, top: 26.h),
              child: Text(
                'Save',
                style: TextStyle(
                  color: const Color(0xFF468FE5),
                  fontSize: 16.sp,
                  fontFamily: 'Red Hat Display',
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.56,
                ),
              ),
            ))
      ],
    );
  }
}
