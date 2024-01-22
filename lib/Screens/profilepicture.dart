import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_app3/Components/greybutton.dart';
import 'package:new_app3/Components/loginbutton.dart';
import 'package:new_app3/navbar.dart';
import 'package:new_app3/Components/topheading.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            body: SingleChildScrollView(
                child: Padding(
                    padding: EdgeInsets.only(left: 16.w, right: 16.w),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TopHeading(
                              text: 'Profile Picture',
                              text2:
                                  'Add a profile picture so your friends know it’s you'),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.only(top: 100.h),
                              child: SizedBox(
                                  width: 131,
                                  height: 131,
                                  child: SvgPicture.asset(
                                    'assets/images/Group.svg',
                                  )),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 199.h),
                            child: InkWell(
                                onTap: () {},
                                child: const LoginButton(text: 'Next')),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 26.h),
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const NavBar()),
                                  );
                                },
                                child: const GreyButton(text: 'Skip')),
                          ),
                          SizedBox(
                            height: 110.h,
                          )
                        ])))));
  }
}
