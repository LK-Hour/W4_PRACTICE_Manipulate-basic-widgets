import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Column(
        children: [
          CustomCard(text: "OOP", color: Colors.blue[100]),
          CustomCard(text: "DART", color: Colors.blue[300]),
          CustomCard.blue(text: "FLUTTER"),
        ],
      ),
    ),
  );
}

class CustomCard extends StatelessWidget {
  final String text;
  final Color? color;
  final Gradient? gradient;
  const CustomCard({
    super.key,
    required this.text,
    this.color = Colors.blue,
    this.gradient,
  });

  const CustomCard.blue({super.key, required this.text})
    : gradient = const LinearGradient(
        colors: [Colors.blue, Colors.lightBlue],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      color = null;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Center(
        child: Text(text, style: TextStyle(color: Colors.white, fontSize: 30)),
      ),
    );
  }
}
