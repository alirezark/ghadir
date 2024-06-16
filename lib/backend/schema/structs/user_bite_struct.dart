// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserBiteStruct extends BaseStruct {
  UserBiteStruct({
    int? id,
    String? title,
    String? customBiteName,
    String? count,
  })  : _id = id,
        _title = title,
        _customBiteName = customBiteName,
        _count = count;

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

  // "customBiteName" field.
  String? _customBiteName;
  String get customBiteName => _customBiteName ?? '';
  set customBiteName(String? val) => _customBiteName = val;

  bool hasCustomBiteName() => _customBiteName != null;

  // "count" field.
  String? _count;
  String get count => _count ?? '';
  set count(String? val) => _count = val;

  bool hasCount() => _count != null;

  static UserBiteStruct fromMap(Map<String, dynamic> data) => UserBiteStruct(
        id: castToType<int>(data['id']),
        title: data['title'] as String?,
        customBiteName: data['customBiteName'] as String?,
        count: data['count'] as String?,
      );

  static UserBiteStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserBiteStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'title': _title,
        'customBiteName': _customBiteName,
        'count': _count,
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
        'customBiteName': serializeParam(
          _customBiteName,
          ParamType.String,
        ),
        'count': serializeParam(
          _count,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserBiteStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserBiteStruct(
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
        customBiteName: deserializeParam(
          data['customBiteName'],
          ParamType.String,
          false,
        ),
        count: deserializeParam(
          data['count'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserBiteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserBiteStruct &&
        id == other.id &&
        title == other.title &&
        customBiteName == other.customBiteName &&
        count == other.count;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, title, customBiteName, count]);
}

UserBiteStruct createUserBiteStruct({
  int? id,
  String? title,
  String? customBiteName,
  String? count,
}) =>
    UserBiteStruct(
      id: id,
      title: title,
      customBiteName: customBiteName,
      count: count,
    );
