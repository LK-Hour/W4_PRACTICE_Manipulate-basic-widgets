import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Column(
        children: [
          Container(
            child: CustomCard(text: "OOP", color: Colors.blue[100]),
          ),
          Container(
            child: CustomCard(text: "DART", color: Colors.blue[300]),
          ),
          Container(
            child: CustomCard(text: "FLUTTER", color: Colors.blue[600]),
          ),
        ],
      ),
    ),
  );
}

class CustomCard extends StatelessWidget {
  final String text;
  final Color? color;
  const CustomCard({super.key, required this.text, this.color = Colors.blue});

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
