import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyLayout(),
    );
  }
}

class MyLayout extends StatelessWidget {
  const MyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 15,
            child: Center(
              child: Container(
                width: screenWidth * 0.5, 
                color: Colors.red,
              ),
            ),
          ),
          Expanded(
            flex: 70,
            child: Center(
              child: Container(
                width: screenWidth * 0.5,
                color: Colors.green,
              ),
            ),
          ),
          Expanded(
            flex: 15,
            child: Center(
              child: Container(
                width: screenWidth * 0.5,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}