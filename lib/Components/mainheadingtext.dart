import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MainHeadingText extends StatelessWidget {
  final String text;
  const MainHeadingText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 11.h),
      child: Row(
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
          )
        ],
      ),
    );
  }
}
