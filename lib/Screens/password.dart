import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:new_app3/Components/greytextfield.dart';
import 'package:new_app3/Components/loginbutton.dart';
import 'package:new_app3/Components/topheading.dart';
import 'package:new_app3/Screens/birthday.dart';

class Password extends StatelessWidget {
  const Password({super.key});

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
                              text: 'Password',
                              text2:
                                  'Create a strong password with atleast 8 letters'),
                          const Padding(
                            padding: EdgeInsets.only(
                              top: 72,
                            ),
                            child: GreyTextField(label: 'Password'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 86.h),
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Birthday()),
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
