// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProfileStruct extends BaseStruct {
  ProfileStruct({
    String? firstName,
    String? lastName,
    ParticipantStruct? participantType,
    String? address,
    String? biteName,
    String? biteCount,
  })  : _firstName = firstName,
        _lastName = lastName,
        _participantType = participantType,
        _address = address,
        _biteName = biteName,
        _biteCount = biteCount;

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
  void updateParticipantType(Function(ParticipantStruct) updateFn) =>
      updateFn(_participantType ??= ParticipantStruct());
  bool hasParticipantType() => _participantType != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;
  bool hasAddress() => _address != null;

  // "biteName" field.
  String? _biteName;
  String get biteName => _biteName ?? '';
  set biteName(String? val) => _biteName = val;
  bool hasBiteName() => _biteName != null;

  // "biteCount" field.
  String? _biteCount;
  String get biteCount => _biteCount ?? '';
  set biteCount(String? val) => _biteCount = val;
  bool hasBiteCount() => _biteCount != null;

  static ProfileStruct fromMap(Map<String, dynamic> data) => ProfileStruct(
        firstName: data['firstName'] as String?,
        lastName: data['lastName'] as String?,
        participantType:
            ParticipantStruct.maybeFromMap(data['participantType']),
        address: data['address'] as String?,
        biteName: data['biteName'] as String?,
        biteCount: data['biteCount'] as String?,
      );

  static ProfileStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProfileStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'firstName': _firstName,
        'lastName': _lastName,
        'participantType': _participantType?.toMap(),
        'address': _address,
        'biteName': _biteName,
        'biteCount': _biteCount,
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
        'biteName': serializeParam(
          _biteName,
          ParamType.String,
        ),
        'biteCount': serializeParam(
          _biteCount,
          ParamType.String,
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
        biteName: deserializeParam(
          data['biteName'],
          ParamType.String,
          false,
        ),
        biteCount: deserializeParam(
          data['biteCount'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProfileStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProfileStruct &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        participantType == other.participantType &&
        address == other.address &&
        biteName == other.biteName &&
        biteCount == other.biteCount;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [firstName, lastName, participantType, address, biteName, biteCount]);
}

ProfileStruct createProfileStruct({
  String? firstName,
  String? lastName,
  ParticipantStruct? participantType,
  String? address,
  String? biteName,
  String? biteCount,
}) =>
    ProfileStruct(
      firstName: firstName,
      lastName: lastName,
      participantType: participantType ?? ParticipantStruct(),
      address: address,
      biteName: biteName,
      biteCount: biteCount,
    );
