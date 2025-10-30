import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Container(
        padding: const EdgeInsets.all(40),
        color: Colors.grey[300],
        child: Column(
          children: [
            MyWidget(text: "OOP", color: Colors.blue[100]),
            MyWidget(text: "DART", color: Colors.blue[300]),
            MyWidget(text: "FLUTTER", color: Colors.blue[600]),
          ],
        ),
      ),
    ),
  );
}

class MyWidget extends StatelessWidget {
  final String text;
  final Color? color;
  const MyWidget({super.key, required this.text, this.color = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.symmetric(horizontal: 0, vertical: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }
}
