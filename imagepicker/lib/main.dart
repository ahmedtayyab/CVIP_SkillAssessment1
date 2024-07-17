import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _imageAssets = [
    'assets/CodeWire 1.jpg',
    'assets/CodeWire 2.jpg',
    'assets/Delizia.png',
    'assets/ssb banner.jpg',
    'assets/ssb char.jpg',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _imageAssets.isNotEmpty
            ? GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0,
                ),
                itemCount: _imageAssets.length,
                itemBuilder: (context, index) {
                  return Image.asset(_imageAssets[index]);
                },
              )
            : const Text("No Images Found"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // You can add a function to add more images to the _imageAssets list
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
    );
  }
}