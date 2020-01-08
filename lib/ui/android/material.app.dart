import 'package:flutter/material.dart';
import 'package:linhaf/bloc/Constants.dart';
import 'package:linhaf/ui/android/pages/home.page.dart';

class MyMaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: Constants.title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData( backgroundColor: Colors.blueAccent),
      home: HomePage(),
    );

  }
}
