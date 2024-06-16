// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProfileStruct extends BaseStruct {
  ProfileStruct({
    String? firstName,
    String? lastName,
    ParticipantStruct? participantType,
    String? address,
    List<UserBiteStruct>? userBites,
    List<TeammateStruct>? teammates,
    double? lat,
    double? long,
    String? locationAddress,
    ProvinceStruct? province,
  })  : _firstName = firstName,
        _lastName = lastName,
        _participantType = participantType,
        _address = address,
        _userBites = userBites,
        _teammates = teammates,
        _lat = lat,
        _long = long,
        _locationAddress = locationAddress,
        _province = province;

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;

  bool hasFirstName() => _firstName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;

  bool hasLastName() => _lastName != null;

  // "participantType" field.
  ParticipantStruct? _participantType;
  ParticipantStruct get participantType =>
      _participantType ?? ParticipantStruct();
  set participantType(ParticipantStruct? val) => _participantType = val;

  void updateParticipantType(Function(ParticipantStruct) updateFn) {
    updateFn(participantType ??= ParticipantStruct());
  }

  bool hasParticipantType() => _participantType != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "user_bites" field.
  List<UserBiteStruct>? _userBites;
  List<UserBiteStruct> get userBites => _userBites ?? const [];
  set userBites(List<UserBiteStruct>? val) => _userBites = val;

  void updateUserBites(Function(List<UserBiteStruct>) updateFn) {
    updateFn(userBites ??= []);
  }

  bool hasUserBites() => _userBites != null;

  // "teammates" field.
  List<TeammateStruct>? _teammates;
  List<TeammateStruct> get teammates => _teammates ?? const [];
  set teammates(List<TeammateStruct>? val) => _teammates = val;

  void updateTeammates(Function(List<TeammateStruct>) updateFn) {
    updateFn(teammates ??= []);
  }

  bool hasTeammates() => _teammates != null;

  // "lat" field.
  double? _lat;
  double get lat => _lat ?? 0.0;
  set lat(double? val) => _lat = val;

  void incrementLat(double amount) => lat = lat + amount;

  bool hasLat() => _lat != null;

  // "long" field.
  double? _long;
  double get long => _long ?? 0.0;
  set long(double? val) => _long = val;

  void incrementLong(double amount) => long = long + amount;

  bool hasLong() => _long != null;

  // "locationAddress" field.
  String? _locationAddress;
  String get locationAddress => _locationAddress ?? '';
  set locationAddress(String? val) => _locationAddress = val;

  bool hasLocationAddress() => _locationAddress != null;

  // "province" field.
  ProvinceStruct? _province;
  ProvinceStruct get province => _province ?? ProvinceStruct();
  set province(ProvinceStruct? val) => _province = val;

  void updateProvince(Function(ProvinceStruct) updateFn) {
    updateFn(province ??= ProvinceStruct());
  }

  bool hasProvince() => _province != null;

  static ProfileStruct fromMap(Map<String, dynamic> data) => ProfileStruct(
        firstName: data['firstName'] as String?,
        lastName: data['lastName'] as String?,
        participantType:
            ParticipantStruct.maybeFromMap(data['participantType']),
        address: data['address'] as String?,
        userBites: getStructList(
          data['user_bites'],
          UserBiteStruct.fromMap,
        ),
        teammates: getStructList(
          data['teammates'],
          TeammateStruct.fromMap,
        ),
        lat: castToType<double>(data['lat']),
        long: castToType<double>(data['long']),
        locationAddress: data['locationAddress'] as String?,
        province: ProvinceStruct.maybeFromMap(data['province']),
      );

  static ProfileStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProfileStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'firstName': _firstName,
        'lastName': _lastName,
        'participantType': _participantType?.toMap(),
        'address': _address,
        'user_bites': _userBites?.map((e) => e.toMap()).toList(),
        'teammates': _teammates?.map((e) => e.toMap()).toList(),
        'lat': _lat,
        'long': _long,
        'locationAddress': _locationAddress,
        'province': _province?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'firstName': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'lastName': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'participantType': serializeParam(
          _participantType,
          ParamType.DataStruct,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'user_bites': serializeParam(
          _userBites,
          ParamType.DataStruct,
          isList: true,
        ),
        'teammates': serializeParam(
          _teammates,
          ParamType.DataStruct,
          isList: true,
        ),
        'lat': serializeParam(
          _lat,
          ParamType.double,
        ),
        'long': serializeParam(
          _long,
          ParamType.double,
        ),
        'locationAddress': serializeParam(
          _locationAddress,
          ParamType.String,
        ),
        'province': serializeParam(
          _province,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ProfileStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProfileStruct(
        firstName: deserializeParam(
          data['firstName'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['lastName'],
          ParamType.String,
          false,
        ),
        participantType: deserializeStructParam(
          data['participantType'],
          ParamType.DataStruct,
          false,
          structBuilder: ParticipantStruct.fromSerializableMap,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        userBites: deserializeStructParam<UserBiteStruct>(
          data['user_bites'],
          ParamType.DataStruct,
          true,
          structBuilder: UserBiteStruct.fromSerializableMap,
        ),
        teammates: deserializeStructParam<TeammateStruct>(
          data['teammates'],
          ParamType.DataStruct,
          true,
          structBuilder: TeammateStruct.fromSerializableMap,
        ),
        lat: deserializeParam(
          data['lat'],
          ParamType.double,
          false,
        ),
        long: deserializeParam(
          data['long'],
          ParamType.double,
          false,
        ),
        locationAddress: deserializeParam(
          data['locationAddress'],
          ParamType.String,
          false,
        ),
        province: deserializeStructParam(
          data['province'],
          ParamType.DataStruct,
          false,
          structBuilder: ProvinceStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ProfileStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ProfileStruct &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        participantType == other.participantType &&
        address == other.address &&
        listEquality.equals(userBites, other.userBites) &&
        listEquality.equals(teammates, other.teammates) &&
        lat == other.lat &&
        long == other.long &&
        locationAddress == other.locationAddress &&
        province == other.province;
  }

  @override
  int get hashCode => const ListEquality().hash([
        firstName,
        lastName,
        participantType,
        address,
        userBites,
        teammates,
        lat,
        long,
        locationAddress,
        province
      ]);
}

ProfileStruct createProfileStruct({
  String? firstName,
  String? lastName,
  ParticipantStruct? participantType,
  String? address,
  double? lat,
  double? long,
  String? locationAddress,
  ProvinceStruct? province,
}) =>
    ProfileStruct(
      firstName: firstName,
      lastName: lastName,
      participantType: participantType ?? ParticipantStruct(),
      address: address,
      lat: lat,
      long: long,
      locationAddress: locationAddress,
      province: province ?? ProvinceStruct(),
    );
