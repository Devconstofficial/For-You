import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_app3/Widgets/InboxChats/bluecontainer.dart';
import 'package:new_app3/Widgets/InboxChats/textcontainer.dart';
import 'package:new_app3/Widgets/InboxChats/topbar.dart';

class Inbox extends StatelessWidget {
  const Inbox({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            body: SingleChildScrollView(
              child: SizedBox(
                height: 750.h,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TopBar(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextContainer(
                            paddingTop: 41.h,
                          ),
                          const BlueContainer(),
                          TextContainer(
                            paddingTop: 8.h,
                          ),
                          const BlueContainer(),
                        ],
                      ),
                      SizedBox(
                        height: 330.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 11.w, right: 11.w),
                        child: SearchBar(
                          elevation: MaterialStateProperty.all(0),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          padding: MaterialStatePropertyAll(
                              EdgeInsets.only(left: 20.w)),
                          hintText: 'Search',
                          hintStyle: MaterialStateProperty.all<TextStyle>(
                              const TextStyle(color: Colors.white)),
                          leading: const Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                          ),
                          trailing: [
                            InkWell(
                                onTap: () {},
                                child: Padding(
                                  padding: EdgeInsets.only(right: 15.w),
                                  child: const Text(
                                    'Send',
                                    style: TextStyle(
                                      color: Color(0xFF468FE5),
                                      fontSize: 14,
                                      fontFamily: 'Red Hat Display',
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: -0.56,
                                    ),
                                  ),
                                ))
                          ],
                          backgroundColor:
                              const MaterialStatePropertyAll<Color>(
                                  Color.fromRGBO(75, 73, 73, 1)),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      )
                    ]),
              ),
            )));
  }
}
