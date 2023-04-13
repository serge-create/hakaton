import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _isDrive = false;
  bool get isDrive => _isDrive;
  set isDrive(bool _value) {
    _isDrive = _value;
  }

  bool _isPassenger = false;
  bool get isPassenger => _isPassenger;
  set isPassenger(bool _value) {
    _isPassenger = _value;
  }

  String _from = '';
  String get from => _from;
  set from(String _value) {
    _from = _value;
  }

  String _to = '';
  String get to => _to;
  set to(String _value) {
    _to = _value;
  }

  String _mark = '';
  String get mark => _mark;
  set mark(String _value) {
    _mark = _value;
  }

  String _model = '';
  String get model => _model;
  set model(String _value) {
    _model = _value;
  }

  DocumentReference? _selectedCar;
  DocumentReference? get selectedCar => _selectedCar;
  set selectedCar(DocumentReference? _value) {
    _selectedCar = _value;
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
