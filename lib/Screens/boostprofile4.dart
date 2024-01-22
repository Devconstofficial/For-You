import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_app3/Components/mainbutton.dart';
import 'package:new_app3/Components/mainheadingtext.dart';
import 'package:new_app3/Components/steper.dart';

class BoostProfile4 extends StatelessWidget {
  const BoostProfile4({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            body: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MainHeadingText(text: 'Review'),
                const MySteper(),
                Padding(
                  padding: EdgeInsets.only(left: 15.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ad goal',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontFamily: 'Red Hat Display',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.64,
                        ),
                      ),
                      Text(
                        'More profile visits',
                        style: TextStyle(
                          color: const Color(0xFF9D9D9D),
                          fontSize: 14.sp,
                          fontFamily: 'Red Hat Display',
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.56,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 26.h, bottom: 7.h),
                        child: Text(
                          'Audience',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontFamily: 'Red Hat Display',
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.64,
                          ),
                        ),
                      ),
                      Text(
                        'Locations ',
                        style: TextStyle(
                          color: const Color(0xFFF3F3F3),
                          fontSize: 14.sp,
                          fontFamily: 'Red Hat Display',
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.56,
                        ),
                      ),
                      Text(
                        'United Kingdom, Canada',
                        style: TextStyle(
                          color: const Color(0xFF9D9D9D),
                          fontSize: 14.sp,
                          fontFamily: 'Red Hat Display',
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.56,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.h),
                        child: Text(
                          'Interests',
                          style: TextStyle(
                            color: const Color(0xFFF3F3F3),
                            fontSize: 14.sp,
                            fontFamily: 'Red Hat Display',
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.56,
                          ),
                        ),
                      ),
                      Text(
                        'Photography, Blogging',
                        style: TextStyle(
                          color: const Color(0xFF9D9D9D),
                          fontSize: 14.sp,
                          fontFamily: 'Red Hat Display',
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.56,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.h),
                        child: Text(
                          'Payments',
                          style: TextStyle(
                            color: const Color(0xFFF3F3F3),
                            fontSize: 14.sp,
                            fontFamily: 'Red Hat Display',
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.56,
                          ),
                        ),
                      ),
                      Text(
                        'emilypritchet',
                        style: TextStyle(
                          color: const Color(0xFF9D9D9D),
                          fontSize: 14.sp,
                          fontFamily: 'Red Hat Display',
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.56,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 26.h),
                        child: Text(
                          'Ads are reviewed within 24 hours, although in some cases it might take longer. Once it’s running, you can pause spending anytime ',
                          style: TextStyle(
                            color: const Color(0xFF9D9D9D),
                            fontSize: 16.sp,
                            fontFamily: 'Red Hat Display',
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.64,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 138.h,
                      ),
                      const MainButton(text: 'Boost Post'),
                      SizedBox(
                        height: 73.h,
                      ),
                    ],
                  ),
                ),
              ],
            ))));
  }
}
