import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 23.w, top: 15.h, bottom: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 87.w,
            height: 28.h,
            decoration: ShapeDecoration(
              color: const Color(0xFF4790E5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r)),
            ),
            child: Center(
              child: Text(
                'Subscribe',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontFamily: 'Red Hat Display',
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.64,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Container(
              width: 87.w,
              height: 28.h,
              decoration: ShapeDecoration(
                color: const Color(0xFF4790E5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r)),
              ),
              child: Center(
                child: Text(
                  'Message',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontFamily: 'Red Hat Display',
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.64,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
