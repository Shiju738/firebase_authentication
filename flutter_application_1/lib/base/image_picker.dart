// ignore_for_file: camel_case_types

import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class imagePickerContorller extends GetxController {
  Rx<File> image = File('').obs;

  Future pickImage() async {
    try {
      final imagePick =
          await ImagePicker().pickImage(source: ImageSource.gallery);

      if (imagePick == null) {
        return;
      }
      final imageTemp = File(imagePick.path);
      image.value = imageTemp;
    } on PlatformException catch (e) {
      return e;
    }
  }

  Future<String> uploadImageToFirebase() async {
    String fileName = DateTime.now().microsecondsSinceEpoch.toString();

    try {
      Reference reference =
          FirebaseStorage.instance.ref().child('myPicture/$fileName.png');
      await reference.putFile(image.value);

      String dowunladURL = await reference.getDownloadURL();
      return dowunladURL;
    } catch (e) {
      return '';
    }
  }
}
