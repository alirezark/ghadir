// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BiteStruct extends BaseStruct {
  BiteStruct({
    int? id,
    String? title,
  })  : _id = id,
        _title = title;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  static BiteStruct fromMap(Map<String, dynamic> data) => BiteStruct(
        id: castToType<int>(data['id']),
        title: data['title'] as String?,
      );

  static BiteStruct? maybeFromMap(dynamic data) =>
      data is Map ? BiteStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'title': _title,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
      }.withoutNulls;

  static BiteStruct fromSerializableMap(Map<String, dynamic> data) =>
      BiteStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BiteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BiteStruct && id == other.id && title == other.title;
  }

  @override
  int get hashCode => const ListEquality().hash([id, title]);
}

BiteStruct createBiteStruct({
  int? id,
  String? title,
}) =>
    BiteStruct(
      id: id,
      title: title,
    );
