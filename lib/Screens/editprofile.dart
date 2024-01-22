import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:new_app3/Widgets/EditProfile/heading.dart';
import 'package:new_app3/Widgets/EditProfile/inputfield.dart';
import 'package:new_app3/Widgets/EditProfile/stackimage.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            body: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Heading(),
                    const StackImage(),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 8.h),
                        child: Text(
                          'emilily',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19.sp,
                            fontFamily: 'Red Hat Display',
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.76,
                          ),
                        ),
                      ),
                    ),
                    const InputField(text: 'Name', minlines: 1, maxlines: 1),
                    const InputField(
                        text: 'UserName', minlines: 1, maxlines: 1),
                    const InputField(text: 'Bio', minlines: 2, maxlines: 6),
                    Padding(
                      padding: const EdgeInsets.all(60.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              getImage(true);
                            },
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
                                  'Camera',
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
                          Padding(
                            padding: EdgeInsets.only(left: 20.w),
                            child: InkWell(
                              onTap: () {
                                getImage(false);
                              },
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
                                    'Gallery',
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
                        ],
                      ),
                    ),
                  ]),
            )));
  }
}
