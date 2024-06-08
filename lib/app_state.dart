import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
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

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_profile')) {
        try {
          final serializedData = prefs.getString('ff_profile') ?? '{}';
          _profile =
              ProfileStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  ParticipantType? _participantType = ParticipantType.family;
  ParticipantType? get participantType => _participantType;
  set participantType(ParticipantType? value) {
    _participantType = value;
  }

  List<TeammateStruct> _teammates = [];
  List<TeammateStruct> get teammates => _teammates;
  set teammates(List<TeammateStruct> value) {
    _teammates = value;
  }

  void addToTeammates(TeammateStruct value) {
    _teammates.add(value);
  }

  void removeFromTeammates(TeammateStruct value) {
    _teammates.remove(value);
  }

  void removeAtIndexFromTeammates(int index) {
    _teammates.removeAt(index);
  }

  void updateTeammatesAtIndex(
    int index,
    TeammateStruct Function(TeammateStruct) updateFn,
  ) {
    _teammates[index] = updateFn(_teammates[index]);
  }

  void insertAtIndexInTeammates(int index, TeammateStruct value) {
    _teammates.insert(index, value);
  }

  LocationStruct _location = LocationStruct();
  LocationStruct get location => _location;
  set location(LocationStruct value) {
    _location = value;
  }

  void updateLocationStruct(Function(LocationStruct) updateFn) {
    updateFn(_location);
  }

  ProfileStruct _profile = ProfileStruct();
  ProfileStruct get profile => _profile;
  set profile(ProfileStruct value) {
    _profile = value;
    prefs.setString('ff_profile', value.serialize());
  }

  void updateProfileStruct(Function(ProfileStruct) updateFn) {
    updateFn(_profile);
    prefs.setString('ff_profile', _profile.serialize());
  }

  int _pinCodeCountDown = 120;
  int get pinCodeCountDown => _pinCodeCountDown;
  set pinCodeCountDown(int value) {
    _pinCodeCountDown = value;
  }

  ConfigStruct _config = ConfigStruct();
  ConfigStruct get config => _config;
  set config(ConfigStruct value) {
    _config = value;
  }

  void updateConfigStruct(Function(ConfigStruct) updateFn) {
    updateFn(_config);
  }

  DeliveryType? _deliveryType;
  DeliveryType? get deliveryType => _deliveryType;
  set deliveryType(DeliveryType? value) {
    _deliveryType = value;
  }

  List<LocalTimeStruct> _localTimes = [];
  List<LocalTimeStruct> get localTimes => _localTimes;
  set localTimes(List<LocalTimeStruct> value) {
    _localTimes = value;
  }

  void addToLocalTimes(LocalTimeStruct value) {
    _localTimes.add(value);
  }

  void removeFromLocalTimes(LocalTimeStruct value) {
    _localTimes.remove(value);
  }

  void removeAtIndexFromLocalTimes(int index) {
    _localTimes.removeAt(index);
  }

  void updateLocalTimesAtIndex(
    int index,
    LocalTimeStruct Function(LocalTimeStruct) updateFn,
  ) {
    _localTimes[index] = updateFn(_localTimes[index]);
  }

  void insertAtIndexInLocalTimes(int index, LocalTimeStruct value) {
    _localTimes.insert(index, value);
  }

  List<LocalTimeStruct> _localDates = [];
  List<LocalTimeStruct> get localDates => _localDates;
  set localDates(List<LocalTimeStruct> value) {
    _localDates = value;
  }

  void addToLocalDates(LocalTimeStruct value) {
    _localDates.add(value);
  }

  void removeFromLocalDates(LocalTimeStruct value) {
    _localDates.remove(value);
  }

  void removeAtIndexFromLocalDates(int index) {
    _localDates.removeAt(index);
  }

  void updateLocalDatesAtIndex(
    int index,
    LocalTimeStruct Function(LocalTimeStruct) updateFn,
  ) {
    _localDates[index] = updateFn(_localDates[index]);
  }

  void insertAtIndexInLocalDates(int index, LocalTimeStruct value) {
    _localDates.insert(index, value);
  }

  LatLng? _latlong = const LatLng(35.700875, 51.39126);
  LatLng? get latlong => _latlong;
  set latlong(LatLng? value) {
    _latlong = value;
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
