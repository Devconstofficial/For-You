import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:new_app3/Components/greytextfield.dart';
import 'package:new_app3/Components/loginbutton.dart';
import 'package:new_app3/Components/topheading.dart';
import 'package:new_app3/Screens/password.dart';

class FullName extends StatelessWidget {
  const FullName({super.key});

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
                              text: 'Full Name', text2: 'Enter your full name'),
                          const Padding(
                            padding: EdgeInsets.only(
                              top: 72,
                            ),
                            child: GreyTextField(label: 'Enter your full name'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 86.h),
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Password()),
                                  );
                                },
                                child: const LoginButton(text: 'Next')),
                          ),
                          SizedBox(
                            height: 100.h,
                          )
                        ])))));
  }
}
