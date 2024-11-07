import 'package:flutter/material.dart';
import 'package:flutter_assignment_1/image_item.dart';
import 'package:flutter_assignment_1/list_tile.dart';

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
        colorScheme: const ColorScheme.highContrastLight(),
        fontFamily: 'Roboto',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Images and Assets',
            style: TextStyle(fontSize: 24),
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.all(20),
          child: HomeScreen(),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double imageWidth = screenWidth - (2 * 20);
    double imageHeight = imageWidth * (600 / 800);

    return Scaffold(
        body: ListView(
      children: [
        SizedBox(
          height: imageHeight,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              ImageItem(
                path: "https://storage.googleapis.com/bird-photo/Barn800600.png", padding: EdgeInsets.only(right: 10), isImageNetwork: true),
              ImageItem(
                path: "https://storage.googleapis.com/bird-photo/chickadee800600.png", padding: EdgeInsets.only(right: 10), isImageNetwork: true),
              ImageItem(
                path: "https://storage.googleapis.com/bird-photo/goose800600.png", padding: EdgeInsets.only(right: 0), isImageNetwork: true),
            ],
          ),
        ),
        const SizedBox(height: 10),
        const FontListTile(title: "Open Sans Light", fontWeight: FontWeight.w300, leadingIcon: (Icons.light_mode)),
        const SizedBox(height: 10),
        const FontListTile(title: "Open Sans Regular", fontWeight: FontWeight.w400, leadingIcon: (Icons.access_alarm)),
        const SizedBox(height: 10),
        const FontListTile(title: "Open Sans Bold", fontWeight: FontWeight.w700, leadingIcon: (Icons.format_align_left)),
        const SizedBox(height: 10),
        Container(
          color: const Color.fromARGB(255, 229, 229, 229),
          child: const ListTile(
            title: Text(
              'Roboto',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),
            ),
            leading: Icon(Icons.hail),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: imageHeight,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(0),
            children: const [
              ImageItem(path: "assets/images/bird1.jpg", padding: EdgeInsets.only(right: 10), isImageNetwork: false),
              ImageItem(path: "assets/images/bird2.png", padding: EdgeInsets.only(right: 10), isImageNetwork: false),
              ImageItem(path: "assets/images/bird3.jpg", padding: EdgeInsets.only(right: 0), isImageNetwork: false),
            ],
          ),
        ),
      ],
    ));
  }
}
