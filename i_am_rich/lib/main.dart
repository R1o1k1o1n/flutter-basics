import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('I Am Rich'),
          backgroundColor: Colors.blueGrey[900],
        ),
        backgroundColor: Colors.blueGrey[700],
        body: const Center(
          child: Image(
            image: AssetImage('images/diamond.png'),
            height: 300.0,
            width: 500.0,
            fit: BoxFit.cover,
          ),
        ),
      ),
    ),
  );
}
