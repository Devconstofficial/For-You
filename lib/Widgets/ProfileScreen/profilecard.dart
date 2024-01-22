import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 31.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30.w),
                child: Container(
                  width: 78.36,
                  height: 78.36,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Profile.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            width: 280.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 6.h, top: 8.h),
                      child: const Text(
                        'Posts',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Red Hat Display',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.72,
                        ),
                      ),
                    ),
                    const Text(
                      '180',
                      style: TextStyle(
                        color: Color(0xFF9D9D9D),
                        fontSize: 16,
                        fontFamily: 'Red Hat Display',
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.64,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 6.h, top: 8.h),
                      child: const Text(
                        'Subscribers',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Red Hat Display',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.72,
                        ),
                      ),
                    ),
                    const Text(
                      '350',
                      style: TextStyle(
                        color: Color(0xFF9D9D9D),
                        fontSize: 16,
                        fontFamily: 'Red Hat Display',
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.64,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 6.h, top: 8.h),
                      child: const Text(
                        'Following',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Red Hat Display',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.72,
                        ),
                      ),
                    ),
                    const Text(
                      '420',
                      style: TextStyle(
                        color: Color(0xFF9D9D9D),
                        fontSize: 16,
                        fontFamily: 'Red Hat Display',
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.64,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
