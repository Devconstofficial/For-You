import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_app3/Widgets/MessagesScreen/chats.dart';
import 'package:new_app3/Widgets/MessagesScreen/offlinechats.dart';
import 'package:new_app3/Widgets/MessagesScreen/texte.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            body: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Texte(text: 'Messages'),
                Padding(
                  padding: EdgeInsets.only(left: 14.w, right: 8.w, top: 19.h),
                  child: SearchBar(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                    padding:
                        MaterialStatePropertyAll(EdgeInsets.only(left: 20.w)),
                    hintText: 'Search',
                    hintStyle: MaterialStateProperty.all<TextStyle>(
                        const TextStyle(color: Colors.white)),
                    leading: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    backgroundColor: const MaterialStatePropertyAll<Color>(
                        Color.fromRGBO(75, 73, 73, 1)),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/inbox');
                  },
                  child: const Chats(
                      text1: 'emily',
                      text2: 'I love it!!!!',
                      text3: '2 min ago'),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/inbox');
                  },
                  child: const Chats(
                      text1: 'em', text2: 'Where are you?', text3: '1 min ago'),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/inbox');
                  },
                  child: const OfflineChats(
                      text1: 'emma', text2: 'Okay i will', text3: '8 days ago'),
                )
              ],
            ))));
  }
}
