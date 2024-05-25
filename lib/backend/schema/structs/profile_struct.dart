// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProfileStruct extends BaseStruct {
  ProfileStruct({
    String? firstName,
    String? lastName,
    ParticipantStruct? participantType,
    String? address,
  })  : _firstName = firstName,
        _lastName = lastName,
        _participantType = participantType,
        _address = address;

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

  static ProfileStruct fromMap(Map<String, dynamic> data) => ProfileStruct(
        firstName: data['firstName'] as String?,
        lastName: data['lastName'] as String?,
        participantType:
            ParticipantStruct.maybeFromMap(data['participantType']),
        address: data['address'] as String?,
      );

  static ProfileStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProfileStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'firstName': _firstName,
        'lastName': _lastName,
        'participantType': _participantType?.toMap(),
        'address': _address,
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
      );

  @override
  String toString() => 'ProfileStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProfileStruct &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        participantType == other.participantType &&
        address == other.address;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([firstName, lastName, participantType, address]);
}

ProfileStruct createProfileStruct({
  String? firstName,
  String? lastName,
  ParticipantStruct? participantType,
  String? address,
}) =>
    ProfileStruct(
      firstName: firstName,
      lastName: lastName,
      participantType: participantType ?? ParticipantStruct(),
      address: address,
    );
