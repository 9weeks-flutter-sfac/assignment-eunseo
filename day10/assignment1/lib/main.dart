import 'package:assignment1/Photo.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  XFile? selectedImage;

  @override
  Widget build(BuildContext context) {
    var imagePicker = ImagePicker();
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('포토네컷'),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Center(
          child: Column(
            children: List.generate(
              4,
              (index) => Photo(
                imagePicker: imagePicker,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
