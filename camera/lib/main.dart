import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: 'Camera'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Camera'),
        actions: [
          const SizedBox(
            width: 30,
          ),
          IconButton(
            onPressed: () {
              OpenCamera();
            },
            icon: const Icon(Icons.camera_alt_outlined),
          ),
        ],
      ),
    );
  }

  Future<XFile?> OpenCamera() async {
    XFile? file = await ImagePicker().pickImage(source: ImageSource.camera);
  }

  Future<XFile?> getImageGallary() async {
    XFile? _file = await ImagePicker().pickImage(source: ImageSource.gallery);
  }
}
