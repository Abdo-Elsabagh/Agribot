import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';





class CameraGalleryPage extends StatefulWidget {
  @override
  _CameraGalleryPageState createState() => _CameraGalleryPageState();
}

class _CameraGalleryPageState extends State<CameraGalleryPage> {
  File? _image;
  final picker = ImagePicker();

  Future<void> _getImage(ImageSource source) async {
    final pickedFile = await picker.pickImage(source: source);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  void _analyzeImage() {
    // قد ترغب في تحليل الصورة هنا واتخاذ الإجراءات اللازمة
    print('Analyzing image...');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera and Gallery'),
      ),
      body: Column(
        children: [
          Center(
            child: _image == null
                ? Text('No image selected.')
                : Image.file(_image!),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: _analyzeImage,
            child: Text('Analyze Image'),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => _getImage(ImageSource.camera),
            tooltip: 'Open Camera',
            child: Icon(Icons.camera),
          ),
          SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () => _getImage(ImageSource.gallery),
            tooltip: 'Open Gallery',
            child: Icon(Icons.photo),
          ),
        ],
     ),
);
}
}