// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:auth0_flutter/auth0_flutter.dart';

Future<void> auth0LogOut() async {
  try {
    final Auth0 auth0 =
        Auth0(FFAppState().Auth0ClientDomain, FFAppState().Auth0ClientID);

    await auth0.webAuthentication(scheme: "auth0signin").logout();

    FFAppState().update(() {
      FFAppState().hasCredentials = false;
    });

    // Could also read auth0.UserProfile and populate a CDT in App State
  } on Exception catch (e, s) {
    debugPrint('login error: $e - stack: $s');
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
