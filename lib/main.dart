// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_declarations

import 'dart:math';

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
        useMaterial3: false,
        primarySwatch: Colors.blueGrey,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CoffeeTea'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'COFFEE OR TEA?',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Find out!'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => SecondPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final random = Random();
    final result = random.nextBool();
    return Scaffold(
      appBar: AppBar(
        title: Text('CoffeeTea'),
        backgroundColor: result == true ? Colors.brown : Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (result == true)
              Text(
                'COFFEE!',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            if (result == false)
              Text(
                'TEA!',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor:
                      result == true ? Colors.brown : Colors.green),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Try it again'),
            ),
          ],
        ),
      ),
    );
  }
}
