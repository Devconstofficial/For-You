import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

class StackImage extends StatefulWidget {
  const StackImage({super.key});

  @override
  State<StackImage> createState() => _StackImageState();
}

class _StackImageState extends State<StackImage> {
  File _image = File('');
  Future getImage(bool isCamera) async {
    XFile? image;

    if (isCamera) {
      image = await ImagePicker().pickImage(source: ImageSource.camera);
    } else {
      image = await ImagePicker().pickImage(source: ImageSource.gallery);
    }
    File? file = File(image!.path);
    setState(() {
      _image = file;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(top: 21.h),
        child: Stack(
          children: [
            Container(
              width: 68.w,
              height: 68.h,
              decoration: ShapeDecoration(
                shape: const CircleBorder(),
                image: DecorationImage(
                  image: FileImage(_image),
                ),
              ),
            ),
            Positioned(
              right: 0,
              child: InkWell(
                onTap: () {
                  getImage(true);
                },
                child: SvgPicture.asset(
                  'assets/images/camera.svg',
                  width: 24.w,
                  height: 24.h,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
