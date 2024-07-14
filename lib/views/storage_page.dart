import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

late File file;

class StoragePage extends StatelessWidget {
  const StoragePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final ImagePicker picker = ImagePicker();
            final XFile? photo =
                await picker.pickImage(source: ImageSource.camera);

            // Capture a photo.

            if (photo != null) {
              print(photo.path);
              final ref = FirebaseStorage.instance.ref(photo.name);
              file = File(photo.path);
              ref.putFile(file);
            }
          },
          child: const Text(
            'Upload Image',
          ),
        ),
      ),
    );
  }
}
