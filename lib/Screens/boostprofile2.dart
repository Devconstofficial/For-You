import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_app3/Widgets/BoostProfile/simplebutton.dart';
import 'package:new_app3/Screens/boostprofile3.dart';
import 'package:new_app3/Components/mainbutton.dart';

import 'package:new_app3/Components/mainheadingtext.dart';
import 'package:new_app3/Components/steper.dart';

class BoostProfile2 extends StatefulWidget {
  const BoostProfile2({super.key});

  @override
  State<BoostProfile2> createState() => _BoostProfileState();
}

class _BoostProfileState extends State<BoostProfile2> {
  List buttonname = [
    'Special Requirements',
    'Automatic',
    'Add',
    'Create your own'
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
                        const Text(
                          'Define your audience',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Red Hat Display',
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.18,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 58.h),
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
                          height: 122.h,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const BoostProfile3()),
                              );
                            },
                            child: const MainButton(text: 'Next')),
                        SizedBox(
                          height: 67.h,
                        ),
                      ],
                    ),
                  ),
                ]))));
  }
}
