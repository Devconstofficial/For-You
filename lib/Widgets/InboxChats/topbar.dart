import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
          padding: EdgeInsets.only(left: 94.w, top: 20.h),
          child: Container(
            width: 38.w,
            height: 38.h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Profile.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20.h, left: 8.31.w),
          child: Text(
            'emily',
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
    );
  }
}
