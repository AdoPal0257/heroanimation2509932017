import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     title: 'Material App',
     home: Scaffold(
       appBar: AppBar(
         title: const Text('Material'),
       ),
     body: Center(
       child: Container(
         child:const Text('Hello world'),
       ),
     ),
     ),
    );
  }
}

