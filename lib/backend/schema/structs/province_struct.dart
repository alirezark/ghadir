// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProvinceStruct extends BaseStruct {
  ProvinceStruct({
    String? name,
    int? id,
  })  : _name = name,
        _id = id;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  static ProvinceStruct fromMap(Map<String, dynamic> data) => ProvinceStruct(
        name: data['name'] as String?,
        id: castToType<int>(data['id']),
      );

  static ProvinceStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProvinceStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
      }.withoutNulls;

  static ProvinceStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProvinceStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ProvinceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProvinceStruct && name == other.name && id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([name, id]);
}

ProvinceStruct createProvinceStruct({
  String? name,
  int? id,
}) =>
    ProvinceStruct(
      name: name,
      id: id,
    );
