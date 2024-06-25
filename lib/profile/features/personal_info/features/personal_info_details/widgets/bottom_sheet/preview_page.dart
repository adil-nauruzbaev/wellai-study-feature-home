import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class PreviewPage extends StatelessWidget {
  const PreviewPage({
    required this.picture,
    super.key,
  });
  final XFile picture;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preview Page'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.file(
              File(picture.path),
              fit: BoxFit.cover,
              width: 250,
            ),
            const SizedBox(height: 24),
            Text(picture.name),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(
                  context,
                  picture.path,
                );
              },
              child: const Text('Использовать фото'),
            ),
          ],
        ),
      ),
    );
  }
}
