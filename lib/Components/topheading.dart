import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TopHeading extends StatelessWidget {
  final String text;
  final String text2;
  const TopHeading({super.key, required this.text, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 9.w, top: 26.h),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.asset(
                  'assets/images/Back.svg',
                  width: 26.w,
                  height: 26.h,
                  clipBehavior: Clip.antiAlias,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 6.w, top: 20.h),
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
          padding: EdgeInsets.only(left: 23.w, top: 20.h),
          child: Text(
            text2,
            style: TextStyle(
              color: const Color(0xFF9D9D9D),
              fontSize: 14.sp,
              fontFamily: 'Red Hat Display',
              fontWeight: FontWeight.w400,
              letterSpacing: -0.56,
            ),
          ),
        )
      ],
    );
  }
}
