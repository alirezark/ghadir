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
    teammates.add(value);
  }

  void removeFromTeammates(TeammateStruct value) {
    teammates.remove(value);
  }

  void removeAtIndexFromTeammates(int index) {
    teammates.removeAt(index);
  }

  void updateTeammatesAtIndex(
    int index,
    TeammateStruct Function(TeammateStruct) updateFn,
  ) {
    teammates[index] = updateFn(_teammates[index]);
  }

  void insertAtIndexInTeammates(int index, TeammateStruct value) {
    teammates.insert(index, value);
  }

  LocationStruct _location = LocationStruct();
  LocationStruct get location => _location;
  set location(LocationStruct value) {
    _location = value;
  }

  void updateLocationStruct(Function(LocationStruct) updateFn) {
    updateFn(_location);
  }

  ProfileStruct _profile = ProfileStruct.fromSerializableMap(
      jsonDecode('{\"participantType\":\"{}\",\"user_bites\":\"[]\"}'));
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
    localTimes.add(value);
  }

  void removeFromLocalTimes(LocalTimeStruct value) {
    localTimes.remove(value);
  }

  void removeAtIndexFromLocalTimes(int index) {
    localTimes.removeAt(index);
  }

  void updateLocalTimesAtIndex(
    int index,
    LocalTimeStruct Function(LocalTimeStruct) updateFn,
  ) {
    localTimes[index] = updateFn(_localTimes[index]);
  }

  void insertAtIndexInLocalTimes(int index, LocalTimeStruct value) {
    localTimes.insert(index, value);
  }

  List<LocalTimeStruct> _localDates = [];
  List<LocalTimeStruct> get localDates => _localDates;
  set localDates(List<LocalTimeStruct> value) {
    _localDates = value;
  }

  void addToLocalDates(LocalTimeStruct value) {
    localDates.add(value);
  }

  void removeFromLocalDates(LocalTimeStruct value) {
    localDates.remove(value);
  }

  void removeAtIndexFromLocalDates(int index) {
    localDates.removeAt(index);
  }

  void updateLocalDatesAtIndex(
    int index,
    LocalTimeStruct Function(LocalTimeStruct) updateFn,
  ) {
    localDates[index] = updateFn(_localDates[index]);
  }

  void insertAtIndexInLocalDates(int index, LocalTimeStruct value) {
    localDates.insert(index, value);
  }

  LatLng? _latlong = const LatLng(35.700875, 51.39126);
  LatLng? get latlong => _latlong;
  set latlong(LatLng? value) {
    _latlong = value;
  }

  List<UserBiteStruct> _userBites = [];
  List<UserBiteStruct> get userBites => _userBites;
  set userBites(List<UserBiteStruct> value) {
    _userBites = value;
  }

  void addToUserBites(UserBiteStruct value) {
    userBites.add(value);
  }

  void removeFromUserBites(UserBiteStruct value) {
    userBites.remove(value);
  }

  void removeAtIndexFromUserBites(int index) {
    userBites.removeAt(index);
  }

  void updateUserBitesAtIndex(
    int index,
    UserBiteStruct Function(UserBiteStruct) updateFn,
  ) {
    userBites[index] = updateFn(_userBites[index]);
  }

  void insertAtIndexInUserBites(int index, UserBiteStruct value) {
    userBites.insert(index, value);
  }

  NarrationStepStruct _narrationStep = NarrationStepStruct();
  NarrationStepStruct get narrationStep => _narrationStep;
  set narrationStep(NarrationStepStruct value) {
    _narrationStep = value;
  }

  void updateNarrationStepStruct(Function(NarrationStepStruct) updateFn) {
    updateFn(_narrationStep);
  }

  List<NarrationStruct> _narrations = [];
  List<NarrationStruct> get narrations => _narrations;
  set narrations(List<NarrationStruct> value) {
    _narrations = value;
  }

  void addToNarrations(NarrationStruct value) {
    narrations.add(value);
  }

  void removeFromNarrations(NarrationStruct value) {
    narrations.remove(value);
  }

  void removeAtIndexFromNarrations(int index) {
    narrations.removeAt(index);
  }

  void updateNarrationsAtIndex(
    int index,
    NarrationStruct Function(NarrationStruct) updateFn,
  ) {
    narrations[index] = updateFn(_narrations[index]);
  }

  void insertAtIndexInNarrations(int index, NarrationStruct value) {
    narrations.insert(index, value);
  }

  int _deliveryLocation = 1;
  int get deliveryLocation => _deliveryLocation;
  set deliveryLocation(int value) {
    _deliveryLocation = value;
  }

  LocalStruct _selectedLocal = LocalStruct();
  LocalStruct get selectedLocal => _selectedLocal;
  set selectedLocal(LocalStruct value) {
    _selectedLocal = value;
  }

  void updateSelectedLocalStruct(Function(LocalStruct) updateFn) {
    updateFn(_selectedLocal);
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
