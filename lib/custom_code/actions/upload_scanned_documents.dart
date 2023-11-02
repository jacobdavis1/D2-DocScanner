// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:html';
import 'package:auth0_flutter/auth0_flutter.dart';

Future<void> uploadScannedDocuments(List<String>? documentPaths) async {
  try {
    if (documentPaths != null) {
      FormData data = new FormData(); // from dart:html

      for (int i = 0; i < documentPaths.length; ++i) {
        data.append("file" + i.toString(), documentPaths[i]);
      }

      final Auth0 auth0 =
          Auth0(FFAppState().Auth0ClientDomain, FFAppState().Auth0ClientID);
      final credentials = await auth0.credentialsManager.credentials();
      String endpoint =
          "https://doubledfinancial-files.azurewebsites.net/api/file/" +
              (credentials.user.email ?? "");

      HttpRequest.request(endpoint,
          method: 'POST',
          sendData: data,
          requestHeaders: {
            "Authorization": "Bearer " + credentials.accessToken
          }).then((HttpRequest r) {
        // ...
      });
    }
  } catch (e, stack) {
    debugPrint(e.toString());
    debugPrint(stack.toString());
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
