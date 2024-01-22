import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_app3/Screens/boostprofile4.dart';
import 'package:new_app3/Components/mainbutton.dart';
import 'package:new_app3/Components/mainheadingtext.dart';
import 'package:new_app3/Components/steper.dart';

class BoostProfile3 extends StatefulWidget {
  const BoostProfile3({super.key});

  @override
  State<BoostProfile3> createState() => _BoostProfile3State();
}

class _BoostProfile3State extends State<BoostProfile3> {
  double _currentSliderValue = 1;
  double _currentSliderValue1 = 2;

  String _selectedradio = '1';

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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '\$30 over 7 days',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontFamily: 'Red Hat Display',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.20,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 27.w),
                          child: Text(
                            'Total spend',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: const Color(0xFF9D9D9D),
                              fontSize: 18.sp,
                              fontFamily: 'Red Hat Display',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.18,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18.w, right: 18.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 26.h, bottom: 30.h),
                          child: Text(
                            'Budget',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                              fontFamily: 'Red Hat Display',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.18,
                            ),
                          ),
                        ),
                        SliderTheme(
                          data: customSliderTheme(context),
                          child: Slider(
                              value: _currentSliderValue,
                              onChanged: (double value) {
                                setState(() {
                                  _currentSliderValue = value;
                                });
                              },
                              max: 100,
                              divisions: 100,
                              label:
                                  '\$${_currentSliderValue.round().toString()} daily',
                              inactiveColor:
                                  const Color.fromRGBO(157, 157, 157, 1)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 25.h, bottom: 13.h),
                          child: Text(
                            'Duration',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                              fontFamily: 'Red Hat Display',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.18,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Run this ad until I pause it',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.sp,
                                fontFamily: 'Red Hat Display',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.14,
                              ),
                            ),
                            Radio(
                                value: '1',
                                groupValue: _selectedradio,
                                onChanged: (value) {
                                  setState(() {
                                    _selectedradio = '1';
                                  });
                                }),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Set duration',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.sp,
                                fontFamily: 'Red Hat Display',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.14,
                              ),
                            ),
                            Radio(
                                value: '2',
                                groupValue: _selectedradio,
                                onChanged: (value) {
                                  setState(() {
                                    _selectedradio = '2';
                                  });
                                }),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 40.h),
                          child: SliderTheme(
                            data: customSliderTheme(context),
                            child: Slider(
                                value: _currentSliderValue1,
                                onChanged: (double value) {
                                  setState(() {
                                    _currentSliderValue1 = value;
                                  });
                                },
                                max: 30,
                                divisions: 30,
                                label:
                                    '${_currentSliderValue1.round().toString()} days',
                                inactiveColor:
                                    const Color.fromRGBO(157, 157, 157, 1)),
                          ),
                        ),
                        SizedBox(
                          height: 45.h,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const BoostProfile4()),
                              );
                            },
                            child: const MainButton(text: 'Next')),
                        SizedBox(
                          height: 67.h,
                        )
                      ],
                    ),
                  ),
                ]))));
  }
}

SliderThemeData customSliderTheme(BuildContext context) {
  return const SliderThemeData(
    valueIndicatorColor: Colors.black,
    valueIndicatorTextStyle: TextStyle(color: Colors.white),
  );
}
