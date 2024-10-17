import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Instagram logo (replace with an image asset if you have one)
              Icon(Icons.camera_alt, color:  Color.fromARGB(255, 0, 9, 14)), // Placeholder for Instagram logo
              SizedBox(width: 8),
              Text(
                'Instagram',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            // Story Section
            Container(
              padding: EdgeInsets.all(10),
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildStory('Burikat 1'),
                  _buildStory('Burikat 2'),
                  _buildStory('Burikat 3'),
                  _buildStory('Burikat 4'),
                  _buildStory('Burikat 5'),
                ],
              ),
            ),
            // Post 1
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                color: Color.fromARGB(255, 57, 149, 202),
                child: Center(
                  child: Text(
                    'E post2',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
            ),
            // Divider
            Divider(thickness: 2),
            // Post 2
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                color: Color.fromARGB(255, 57, 149, 202),
                child: Center(
                  child: Text(
                    'E like ninyo',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Function to create a story circle
  Widget _buildStory(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: const BoxDecoration(
              color:Color.fromARGB(255, 57, 149, 202),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(label),
            ),
          ),
        ],
      ),
    );
  }
}
