import 'package:dooit/pages/main_list_page.dart';
import 'package:dooit/pages/new_list.dart';
import 'package:dooit/pages/start.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const StartPage(),
        '/continue': (context) => const MainListPage(),
        '/new_list': (context) => const NewListPage(),
      },
    );
  }
}
