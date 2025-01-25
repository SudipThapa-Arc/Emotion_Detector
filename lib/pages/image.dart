import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Imagepick extends StatefulWidget {
  const Imagepick({super.key});

  @override
  State<Imagepick> createState() => _ImagepickState();
}

class _ImagepickState extends State<Imagepick> {
  ImagePicker _picker = ImagePicker();
  XFile? file;
  List<XFile>? files;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Image Slider')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 300,
            width: double.infinity,
            color: Colors.grey.shade400,
            child: Center(
                child: file == null
                    ? const Text('Please Pick an Image')
                    : Image.file(
                        File(file!.path),
                        fit: BoxFit.cover,
                      )),
          ),
          ElevatedButton(
              onPressed: () async {
                final XFile? Photo =
                    await _picker.pickImage(source: ImageSource.gallery);
                setState(() {
                  file = Photo;
                });
                print('Image Uploaded');
                print(Photo!.path);
              },
              child: const Text('Pick an Image')),
          ElevatedButton(
              onPressed: () async {
                final List<XFile>? photos = await _picker.pickMultiImage();
                setState(() {
                  files = photos;
                });
                print('Images Uploaded');
                for (var i = 0; i < files!.length; i++) {
                  print(files![i].path);
                }
              },
              child: const Text('Pick Multiple Images'))
        ],
      ),
    );
  }
}
