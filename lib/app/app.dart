import 'package:counterapp/screen/counter_app.dart';
import 'package:counterapp/screen/student_view.dart';
import 'package:flutter/material.dart';
// import 'package:hive_starter/view/dashboard_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riverpod State Management',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StudentView(),
    );
  }
}
