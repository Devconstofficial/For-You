import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_app3/Screens/boostprofile.dart';

class BoostImageStack extends StatelessWidget {
  const BoostImageStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 390.w,
          height: 680.h,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/BoostImage.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 9.w, top: 16.86.h),
              child: Container(
                width: 32.w,
                height: 59.94.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/stack.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 7.w, top: 22.48.h),
              child: Text(
                'chris.martin',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontFamily: 'Red Hat Display',
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.64,
                ),
              ),
            ),
          ],
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.only(top: 38.h),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BoostProfile()),
                );
              },
              child: Container(
                width: 93.w,
                height: 28.h,
                decoration: ShapeDecoration(
                  color: const Color(0xFF4790E5),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r)),
                ),
                child: Center(
                  child: Text(
                    'Boost Post',
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
          ),
        )
      ],
    );
  }
}
