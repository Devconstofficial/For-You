import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_app3/Widgets/ProfileScreen/actionbutton.dart';
import 'package:new_app3/Widgets/ProfileScreen/feed.dart';
import 'package:new_app3/Widgets/ProfileScreen/headingtext.dart';
import 'package:new_app3/Widgets/ProfileScreen/profilecard.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeadingText(text: 'emilily'),
              const ProfileCard(),
              Padding(
                padding: EdgeInsets.only(top: 11.64.h, left: 23.w, bottom: 8.h),
                child: const Text(
                  'Emily Pritchet',
                  style: TextStyle(
                    color: Color(0xFFF3F3F3),
                    fontSize: 18,
                    fontFamily: 'Red Hat Display',
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.72,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.w),
                child: const Text(
                  'The best things come from living outside of your comfort zone.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Red Hat Display',
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.64,
                  ),
                ),
              ),
              const ActionButton(),
              const Feed(),
            ],
          ))),
    );
  }
}
