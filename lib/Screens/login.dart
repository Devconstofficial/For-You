import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_app3/Components/greybutton.dart';
import 'package:new_app3/Components/loginbutton.dart';
import 'package:new_app3/Components/textfield1.dart';
import 'package:new_app3/Screens/phonenumber.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 40.h),
                        child: Container(
                          width: 245,
                          height: 138,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/logo.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Email, Username or Phone Number',
                      style: TextStyle(
                        color: const Color(0xFFF3F3F3),
                        fontSize: 14.sp,
                        fontFamily: 'Red Hat Display',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15.h, bottom: 15.h),
                      child: const TextField1(
                          label: 'Enter your Email, Username or Phone Number'),
                    ),
                    const Text(
                      'Password',
                      style: TextStyle(
                        color: Color(0xFFF3F3F3),
                        fontSize: 14,
                        fontFamily: 'Red Hat Display',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15.h, bottom: 16.h),
                      child: const TextField1(label: 'Enter your password'),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Color(0xFF9D9D9D),
                            fontSize: 14,
                            fontFamily: 'Red Hat Display',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 85.h, bottom: 22.h),
                      child: const LoginButton(
                        text: 'Login',
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PhoneNumber()),
                          );
                        },
                        child: const GreyButton(text: 'Create New Account')),
                    SizedBox(
                      height: 130.h,
                    )
                  ]),
            ))));
  }
}
