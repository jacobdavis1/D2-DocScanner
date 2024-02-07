// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cunning_document_scanner/cunning_document_scanner.dart';

Future<List<String>?> scanDocuments() async {
  final imagesPath = await CunningDocumentScanner.getPictures();
  return imagesPath;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
