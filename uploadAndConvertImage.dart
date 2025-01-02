// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:image_picker/image_picker.dart';
import 'dart:async';
import 'dart:io';
import 'dart:convert';

Future<String> uploadAndConvertImage() async {
  var bytes;

  // Use the ImagePicker to take a picture
  final XFile? pickedFile =
      await ImagePicker().pickImage(source: ImageSource.camera);

  if (pickedFile == null) {
    return "";
  }

  bytes = File(pickedFile.path).readAsBytesSync();
  String img64 = base64Encode(bytes);
  return img64;
}
