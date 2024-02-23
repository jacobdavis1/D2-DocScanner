import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _userName = prefs.getString('ff_userName') ?? _userName;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _hasCredentials = false;
  bool get hasCredentials => _hasCredentials;
  set hasCredentials(bool value) {
    _hasCredentials = value;
  }

  String _Auth0ClientID = 'OffoyadAA5BkLuRvhCRcwIAz6Mad6R4K';
  String get Auth0ClientID => _Auth0ClientID;
  set Auth0ClientID(String value) {
    _Auth0ClientID = value;
  }

  String _Auth0ClientDomain = 'd2financial.us.auth0.com';
  String get Auth0ClientDomain => _Auth0ClientDomain;
  set Auth0ClientDomain(String value) {
    _Auth0ClientDomain = value;
  }

  String _Auth0Scheme = 'https';
  String get Auth0Scheme => _Auth0Scheme;
  set Auth0Scheme(String value) {
    _Auth0Scheme = value;
  }

  String _userName = '';
  String get userName => _userName;
  set userName(String value) {
    _userName = value;
    prefs.setString('ff_userName', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
