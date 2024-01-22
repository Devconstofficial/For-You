import 'package:flutter/material.dart';
import 'package:new_app3/Screens/boostpost.dart';
import 'package:new_app3/Screens/boostprofile.dart';
import 'package:new_app3/Screens/boostprofile2.dart';

class Empty2 extends StatefulWidget {
  const Empty2({super.key});

  @override
  State<Empty2> createState() => _EmptyState();
}

class _EmptyState extends State<Empty2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(unselectedWidgetColor: Colors.white),
      initialRoute: '/boostpost',
      routes: {
        '/boostpost': (context) => const BoostPost(),
        '/boostprofile': (context) => const BoostProfile(),
        '/boostprofile2': (context) => const BoostProfile2(),
      },
    );
  }
}
