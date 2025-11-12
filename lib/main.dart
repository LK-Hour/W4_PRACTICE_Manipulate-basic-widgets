import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(color: Colors.yellow, width: 100, height: 50),
                    Container(color: Colors.yellow, width: 100, height: 50),
                  ],
                ),
              ),
            ),

            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.green,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(color: Colors.white, width: 60, height: 60),
                          Container(color: Colors.white, width: 60, height: 60),
                          Container(color: Colors.white, width: 60, height: 60),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),
                  Expanded(flex: 3, child: Container(color: Colors.orange)),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
