import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _hasCredentials = false;
  bool get hasCredentials => _hasCredentials;
  set hasCredentials(bool _value) {
    _hasCredentials = _value;
  }

  String _Auth0ClientID = 'OffoyadAA5BkLuRvhCRcwIAz6Mad6R4K';
  String get Auth0ClientID => _Auth0ClientID;
  set Auth0ClientID(String _value) {
    _Auth0ClientID = _value;
  }

  String _Auth0ClientDomain = 'd2financial.us.auth0.com';
  String get Auth0ClientDomain => _Auth0ClientDomain;
  set Auth0ClientDomain(String _value) {
    _Auth0ClientDomain = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
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
