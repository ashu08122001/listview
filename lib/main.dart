

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var arrName = [
    'Ashu',
    'Shekhar',
    'Ankit',
    'Anant',
    'Rana',
    'Arpita',
    'Rahul',
    'kunal'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body:
        ListView.separated(itemBuilder: (context, index) {
          return Text(arrName[index],
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),);
        },
          itemCount: arrName.length,
          separatorBuilder: (context,index){
          return Divider(height: 100,thickness: 2,);
          },

        )
    );
  }
}
