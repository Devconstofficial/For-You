import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MySteper extends StatefulWidget {
  const MySteper({super.key});

  @override
  State<MySteper> createState() => _MyStepperState();
}

class _MyStepperState extends State<MySteper> {
  int activeStep = 0;
  int activeStep2 = 0;
  int reachedStep = 0;
  int upperBound = 5;
  Set<int> reachedSteps = <int>{0, 2, 4, 5};

  List<String> easySteps = [
    '0Goal',
    '1Audience',
    '2Budget & Duration',
    '3Review'
  ];

  @override
  Widget build(BuildContext context) {
    return EasyStepper(
      dashPattern: const [3, 0],
      lineSpace: 0,
      lineThickness: 2,
      defaultLineColor: const Color.fromRGBO(75, 73, 73, 1),
      activeLineColor: const Color.fromRGBO(71, 144, 229, 1),
      finishedLineColor: const Color.fromRGBO(71, 144, 229, 1),
      activeStep: activeStep,
      lineLength: 30.w,
      stepShape: StepShape.circle,
      stepBorderRadius: 10.r,
      borderThickness: 2.h,
      padding: EdgeInsets.all(20.sp),
      stepRadius: 20.r,
      finishedStepBorderColor: Colors.black,
      finishedStepTextColor: Colors.black,
      finishedStepBackgroundColor: Colors.black,
      activeStepIconColor: Colors.black,
      showLoadingAnimation: false,
      steps: easySteps.map((steps) {
        return EasyStep(
            customStep: Container(
              width: 19.w,
              height: 19.h,
              decoration: const ShapeDecoration(
                color: Color(0xFFF3F3F3),
                shape: CircleBorder(),
              ),
              child: Container(
                margin: EdgeInsets.all(3.sp),
                decoration: ShapeDecoration(
                  color: (int.parse(steps.substring(0, 1)) + 1) <= activeStep
                      ? const Color(0xFF4790E5)
                      : const Color.fromRGBO(157, 157, 157, 1),
                  shape: const CircleBorder(),
                ),
                child: Center(
                  child: Text(
                    '${int.parse(steps.substring(0, 1)) + 1}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8.sp,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.10,
                    ),
                  ),
                ),
              ),
            ),
            customTitle: Container(
              margin: steps.substring(0, 1) != '2'
                  ? EdgeInsets.symmetric(horizontal: 15.w)
                  : EdgeInsets.symmetric(horizontal: 1.w),
              width: 12.w,
              height: 14.h,
              decoration: ShapeDecoration(
                color: (int.parse(steps.substring(0, 1)) + 1) <= activeStep
                    ? const Color(0xFF4790E5)
                    : const Color.fromRGBO(157, 157, 157, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 2.h),
                child: Text(
                  steps.substring(1),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFFF3F3F3),
                    fontSize: 7.67.sp,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.08,
                  ),
                ),
              ),
            ));
      }).toList(),
      onStepReached: (index) => setState(() => activeStep = index),
    );
  }
}
