import 'dart:convert';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/splash_bg.png'),
              fit: BoxFit.cover, // Covers the entire screen
            ),
          ),

        child: Column(
          children: [
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 20),
                Image.asset(
                  'assets/appIcon.png', // Replace with your icon path
                  width: 60,
                  height: 60,
                ),
                const SizedBox(width: 10),
                Image.asset(
                  'assets/muzicvia_title.png',
                  height: 40,
                ),
              ],
            ),
            Divider(
              color: Colors.white, // Color of the line
              thickness: 1.0,     // Thickness of the line
              height: 20.0,       // Height of the divider widget, including the line and any surrounding space.
              indent: 16.0,       // Left padding of the line
              endIndent: 16.0,    // Right padding of the line
            ),
            Expanded(
              child: ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    height: 50,
                    color: index%2==0 ? Colors.amber[600] : Colors.amber[100],
                    child: const Center(child: Text('Entry A')),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}