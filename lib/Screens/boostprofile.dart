import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_app3/Widgets/BoostProfile/simplebutton.dart';
import 'package:new_app3/Screens/boostprofile2.dart';
import 'package:new_app3/Components/mainbutton.dart';
import 'package:new_app3/Components/mainheadingtext.dart';
import 'package:new_app3/Components/steper.dart';

class BoostProfile extends StatefulWidget {
  const BoostProfile({super.key});

  @override
  State<BoostProfile> createState() => _BoostProfileState();
}

class _BoostProfileState extends State<BoostProfile> {
  List buttonname = [
    'More Profile Visists',
    'More Website Visits',
    'More Messages'
  ];
  String selected1 = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            body: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  const MainHeadingText(text: 'Boost Profile'),
                  const MySteper(),
                  Center(
                    child: Column(
                      children: [
                        Text(
                          'Select a goal',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontFamily: 'Red Hat Display',
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.18,
                          ),
                        ),
                        Text(
                          'What results would you like from this ad?',
                          style: TextStyle(
                            color: const Color(0xFF9D9D9D),
                            fontSize: 14.sp,
                            fontFamily: 'Red Hat Display',
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.56,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 40.h),
                          child: Column(
                            children: buttonname.map((name) {
                              return Padding(
                                padding: EdgeInsets.only(bottom: 26.h),
                                child: SimpleButton(
                                  text: name,
                                  onTap: () {
                                    setState(() {
                                      selected1 = name;
                                    });
                                  },
                                  selected: selected1,
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        SizedBox(
                          height: 190.h,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const BoostProfile2()),
                              );
                            },
                            child: const MainButton( text: 'Next')),
                        SizedBox(
                          height: 67.h,
                        ),
                      ],
                    ),
                  ),
                ]))));
  }
}
