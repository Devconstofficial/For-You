import 'package:flutter/material.dart';
import 'package:new_app3/Screens/inbox.dart';
import 'package:new_app3/Screens/messages.dart';

class Empty extends StatefulWidget {
  const Empty({super.key});

  @override
  State<Empty> createState() => _EmptyState();
}

class _EmptyState extends State<Empty> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/messages',
      routes: {
        '/messages': (context) => const Messages(),
        '/inbox': (context) => const Inbox(),
        


      },
    );
  }
}
