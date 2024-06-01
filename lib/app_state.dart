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
