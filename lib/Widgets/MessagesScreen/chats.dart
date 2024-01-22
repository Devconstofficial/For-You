import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';


class Chats extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  const Chats(
      {super.key,
      required this.text1,
      required this.text2,
      required this.text3});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 365.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 18.w, top: 21.h),
                child: Column(
                  children: [
                    Container(
                      width: 39,
                      height: 39,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/chat1.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.w, top: 19.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          text1,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.52.sp,
                            fontFamily: 'Red Hat Display',
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.56,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          text2,
                          style: TextStyle(
                            color: const Color(0xFFF3F3F3),
                            fontSize: 14.sp,
                            fontFamily: 'Red Hat Display',
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.56,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 42.h),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 4.w),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/Circle.svg',
                        width: 7.w,
                        height: 7.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.w),
                        child: Text(
                          text3,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontFamily: 'Red Hat Display',
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.56,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
