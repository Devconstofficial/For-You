import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_app3/Components/greytextfield.dart';
import 'package:new_app3/Components/loginbutton.dart';
import 'package:new_app3/Components/topheading.dart';
import 'package:new_app3/Screens/username.dart';

class Birthday extends StatefulWidget {
  const Birthday({super.key});

  @override
  State<Birthday> createState() => _BirthdayState();
}

class _BirthdayState extends State<Birthday> {
  void _showDatePicker() {
    showDatePicker(
      
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(2090));
  }

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
                              text: 'Birthday',
                              text2:
                                  'Use your own birthday even if this account is for business or something else'),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 72,
                            ),
                            child: GreyTextField(
                                label: 'Birthday',
                                icon: Padding(
                                  padding: EdgeInsets.all(12.sp),
                                  child: InkWell(
                                    onTap: _showDatePicker,
                                    child: SvgPicture.asset(
                                        'assets/images/calender.svg'),
                                  ),
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 86.h),
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const UserName()),
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
