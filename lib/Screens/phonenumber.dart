import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_app3/Components/greytextfield.dart';
import 'package:new_app3/Components/loginbutton.dart';
import 'package:new_app3/Components/topheading.dart';
import 'package:new_app3/Screens/fullname.dart';

class PhoneNumber extends StatelessWidget {
  const PhoneNumber({super.key});

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
                              text: 'Phone Number',
                              text2:
                                  'Enter your phone number you wnat to use with this account'),
                          const Padding(
                            padding: EdgeInsets.only(
                              top: 72,
                            ),
                            child: GreyTextField(label: 'Enter Phone Number'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 86.h),
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const FullName()),
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
