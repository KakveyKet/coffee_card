import 'package:coffee_card/coffee_prefs.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Coffee card',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.brown[700],
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.brown[200],
              padding: EdgeInsets.all(20),
              child: Text(
                'How I Like Coffee...',
                style: TextStyle(
                    color: Colors.brown[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            Container(
              color: Colors.brown[100],
              padding: const EdgeInsets.all(20),
              child: const CoffeePrefs(),
            ),
            Expanded(
                child: Image.asset(
              "assets/coffee_bg.jpg",
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomCenter,
            ))
          ],
        ));
  }
}
