// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeammateStruct extends BaseStruct {
  TeammateStruct({
    String? fullName,
    bool? isAdult,
    Gender? gender,
    Relation? relation,
    String? mobile,
  })  : _fullName = fullName,
        _isAdult = isAdult,
        _gender = gender,
        _relation = relation,
        _mobile = mobile;

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
  Gender? _gender;
  Gender? get gender => _gender;
  set gender(Gender? val) => _gender = val;

  bool hasGender() => _gender != null;

  // "relation" field.
  Relation? _relation;
  Relation? get relation => _relation;
  set relation(Relation? val) => _relation = val;

  bool hasRelation() => _relation != null;

  // "mobile" field.
  String? _mobile;
  String get mobile => _mobile ?? '';
  set mobile(String? val) => _mobile = val;

  bool hasMobile() => _mobile != null;

  static TeammateStruct fromMap(Map<String, dynamic> data) => TeammateStruct(
        fullName: data['fullName'] as String?,
        isAdult: data['isAdult'] as bool?,
        gender: deserializeEnum<Gender>(data['gender']),
        relation: deserializeEnum<Relation>(data['relation']),
        mobile: data['mobile'] as String?,
      );

  static TeammateStruct? maybeFromMap(dynamic data) =>
      data is Map ? TeammateStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'fullName': _fullName,
        'isAdult': _isAdult,
        'gender': _gender?.serialize(),
        'relation': _relation?.serialize(),
        'mobile': _mobile,
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
          ParamType.Enum,
        ),
        'relation': serializeParam(
          _relation,
          ParamType.Enum,
        ),
        'mobile': serializeParam(
          _mobile,
          ParamType.String,
        ),
      }.withoutNulls;

  static TeammateStruct fromSerializableMap(Map<String, dynamic> data) =>
      TeammateStruct(
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
        gender: deserializeParam<Gender>(
          data['gender'],
          ParamType.Enum,
          false,
        ),
        relation: deserializeParam<Relation>(
          data['relation'],
          ParamType.Enum,
          false,
        ),
        mobile: deserializeParam(
          data['mobile'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TeammateStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TeammateStruct &&
        fullName == other.fullName &&
        isAdult == other.isAdult &&
        gender == other.gender &&
        relation == other.relation &&
        mobile == other.mobile;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([fullName, isAdult, gender, relation, mobile]);
}

TeammateStruct createTeammateStruct({
  String? fullName,
  bool? isAdult,
  Gender? gender,
  Relation? relation,
  String? mobile,
}) =>
    TeammateStruct(
      fullName: fullName,
      isAdult: isAdult,
      gender: gender,
      relation: relation,
      mobile: mobile,
    );
