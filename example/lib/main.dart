import 'package:auto_scroll_image/auto_scroll_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Auto Scroll Image'),
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Your other widgets can go here

            // Example usage of AutoScrollImage
            AutoScrollImage(
              itemCount: 10, // Customize itemCount
              itemWidth: 50.0, // Customize itemWidth
              autoScrollDuration:
                  Duration(seconds: 2), // Customize autoScrollDuration
              timerInterval: Duration(seconds: 2), // Customize timerInterval
            ),

            // More of your widgets can follow here
          ],
        ),
      ),
    );
  }
}
