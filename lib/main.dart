import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Assignment 1',
      theme: ThemeData(
        fontFamily: 'OpenSans',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Open Sans Font Example',
            style: TextStyle(fontSize: 24),
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.all(20),
          child: HomeScreen(),
        ),
      ),
    );

    // home: const HomeScreen(),
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
          alignment: Alignment.bottomLeft,
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ListView(
              children: const [
                // network images here
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              title: Text(
                'Open Sans Light',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              title: Text(
                'Open Sans Regular',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              title: Text(
                'Open Sans Bold',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(0),
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Image.asset(
                    'assets/images/bird1.jpg',
                    height: 300,
                    width: 400, 
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Image.asset(
                    'assets/images/bird1.jpg',
                    height: 300,
                    width: 400, 
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Image.asset(
                    'assets/images/bird1.jpg',
                    height: 300,
                    width: 400, 
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

