// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ParticipantStruct extends BaseStruct {
  ParticipantStruct({
    String? fullName,
    bool? isAdult,
    bool? gender,
    bool? type,
  })  : _fullName = fullName,
        _isAdult = isAdult,
        _gender = gender,
        _type = type;

  // "fullName" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  set fullName(String? val) => _fullName = val;
  bool hasFullName() => _fullName != null;

  // "isAdult" field.
  bool? _isAdult;
  bool get isAdult => _isAdult ?? false;
  set isAdult(bool? val) => _isAdult = val;
  bool hasIsAdult() => _isAdult != null;

  // "gender" field.
  bool? _gender;
  bool get gender => _gender ?? false;
  set gender(bool? val) => _gender = val;
  bool hasGender() => _gender != null;

  // "type" field.
  bool? _type;
  bool get type => _type ?? false;
  set type(bool? val) => _type = val;
  bool hasType() => _type != null;

  static ParticipantStruct fromMap(Map<String, dynamic> data) =>
      ParticipantStruct(
        fullName: data['fullName'] as String?,
        isAdult: data['isAdult'] as bool?,
        gender: data['gender'] as bool?,
        type: data['type'] as bool?,
      );

  static ParticipantStruct? maybeFromMap(dynamic data) => data is Map
      ? ParticipantStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'fullName': _fullName,
        'isAdult': _isAdult,
        'gender': _gender,
        'type': _type,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'fullName': serializeParam(
          _fullName,
          ParamType.String,
        ),
        'isAdult': serializeParam(
          _isAdult,
          ParamType.bool,
        ),
        'gender': serializeParam(
          _gender,
          ParamType.bool,
        ),
        'type': serializeParam(
          _type,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ParticipantStruct fromSerializableMap(Map<String, dynamic> data) =>
      ParticipantStruct(
        fullName: deserializeParam(
          data['fullName'],
          ParamType.String,
          false,
        ),
        isAdult: deserializeParam(
          data['isAdult'],
          ParamType.bool,
          false,
        ),
        gender: deserializeParam(
          data['gender'],
          ParamType.bool,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ParticipantStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ParticipantStruct &&
        fullName == other.fullName &&
        isAdult == other.isAdult &&
        gender == other.gender &&
        type == other.type;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([fullName, isAdult, gender, type]);
}

ParticipantStruct createParticipantStruct({
  String? fullName,
  bool? isAdult,
  bool? gender,
  bool? type,
}) =>
    ParticipantStruct(
      fullName: fullName,
      isAdult: isAdult,
      gender: gender,
      type: type,
    );
