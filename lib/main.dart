import 'package:camera/pro.dart';
import 'package:flutter/material.dart';
import 'camera.dart';
import 'pro.dart';
import 'get.dart';





void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  int _currentpage =0;
  List<Widget> ListView=[

    Prov(),
    Upload(),
    Upl(),

  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body:ListView[_currentpage],

        bottomNavigationBar: NavigationBar(height: 120,
            selectedIndex:_currentpage, onDestinationSelected: (int index) { setState(() {
              _currentpage=index;
            });

            },
            destinations: [  NavigationDestination(icon: Icon(Icons.home_outlined,size: 40,), label: 'Provider'),
              NavigationDestination(icon: Icon(Icons.group_work_outlined,size: 40,), label: 'GetX')  ,
              NavigationDestination(icon: Icon(Icons.photo_outlined,size: 40,), label: 'Upload'),
            ]),

      ),
    );

  }}