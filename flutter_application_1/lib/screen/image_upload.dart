// ignore_for_file: camel_case_types

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/image_picker.dart';
import 'package:get/get.dart';

class imageScreen extends StatelessWidget {
  const imageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(imagePickerContorller());
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                controller.pickImage();
              },
              child: const Text('pick yopur image'),
            ),
          ),
          Obx(() {
            return Container(
              child: controller.image.value.path.isEmpty
                  ? const Icon(Icons.camera)
                  : Image.file(
                      File(controller.image.value.path),
                    ),
            );
          }),
          ElevatedButton(
              onPressed: () {
                controller.uploadImageToFirebase();
              },
              child: const Text('Upload to file'))
        ],
      )),
    );
  }
}
