import 'package:flutter/material.dart';
import 'package:new_app3/Widgets/BoostPost/boostimagestack.dart';
import 'package:new_app3/Components/mainheadingtext.dart';

class BoostPost extends StatelessWidget {
  const BoostPost({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            body: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  MainHeadingText(text: 'Posts'),
                  BoostImageStack()
                ]))));
  }
}
