import 'package:web/home_page.dart';
import 'package:web/pages/historia.dart';
import 'package:flutter/material.dart';

void main() {
  //setUrlStrategy(PathUrlStrategy());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Site MTB',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.blue, bottomAppBarColor: Colors.black12),
        routes: {
          '/': (context) => HomePage(),
          '/Historia': (context) => const Historia(),
        });
  }
}
