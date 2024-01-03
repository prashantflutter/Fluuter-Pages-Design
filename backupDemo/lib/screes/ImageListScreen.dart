import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageListScreen extends StatefulWidget {
  @override
  _ImageListScreenState createState() => _ImageListScreenState();
}

class _ImageListScreenState extends State<ImageListScreen> {
  List<File> _imageList = [];

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _imageList.add(File(pickedFile.path));
      });
    }
  }

  void _removeImage(int index) {
    setState(() {
      _imageList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image List'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => _pickImage(ImageSource.camera),
            child: Text('Capture Image'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _imageList.length,
              itemBuilder: (context, index) => ListTile(
                leading: Image.file(_imageList[index]),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => _removeImage(index),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}