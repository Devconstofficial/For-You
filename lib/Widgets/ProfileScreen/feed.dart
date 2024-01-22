import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Feed extends StatelessWidget {
  const Feed({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w, right: 10.w),
      child: Wrap(spacing: 6.0, runSpacing: 6.0, children: [
        Container(
          width: 179,
          height: 159,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/1.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          width: 179,
          height: 159,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/2.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          width: 179,
          height: 159,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/3.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          width: 179,
          height: 159,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/4.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          width: 179,
          height: 159,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/1.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          width: 179,
          height: 159,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/2.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          width: 179,
          height: 159,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/3.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          width: 179,
          height: 159,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/4.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ]),
    );
  }
}
