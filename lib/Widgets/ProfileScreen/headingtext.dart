import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HeadingText extends StatelessWidget {
  final String text;
  const HeadingText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 9.w, top: 26.h),
          child: SvgPicture.asset(
            'assets/images/Back.svg',
            width: 26,
            height: 26,
            clipBehavior: Clip.antiAlias,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20.h, left: 6.w),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: 'Red Hat Display',
              fontWeight: FontWeight.w600,
              letterSpacing: -0.96,
            ),
          ),
        )
      ],
    );
  }
}
