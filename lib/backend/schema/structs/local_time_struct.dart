// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocalTimeStruct extends BaseStruct {
  LocalTimeStruct({
    int? id,
    String? from,
    String? to,
    String? dateString,
    String? date,
    String? timeString,
  })  : _id = id,
        _from = from,
        _to = to,
        _dateString = dateString,
        _date = date,
        _timeString = timeString;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "from" field.
  String? _from;
  String get from => _from ?? '';
  set from(String? val) => _from = val;

  bool hasFrom() => _from != null;

  // "to" field.
  String? _to;
  String get to => _to ?? '';
  set to(String? val) => _to = val;

  bool hasTo() => _to != null;

  // "dateString" field.
  String? _dateString;
  String get dateString => _dateString ?? '';
  set dateString(String? val) => _dateString = val;

  bool hasDateString() => _dateString != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  set date(String? val) => _date = val;

  bool hasDate() => _date != null;

  // "timeString" field.
  String? _timeString;
  String get timeString => _timeString ?? '';
  set timeString(String? val) => _timeString = val;

  bool hasTimeString() => _timeString != null;

  static LocalTimeStruct fromMap(Map<String, dynamic> data) => LocalTimeStruct(
        id: castToType<int>(data['id']),
        from: data['from'] as String?,
        to: data['to'] as String?,
        dateString: data['dateString'] as String?,
        date: data['date'] as String?,
        timeString: data['timeString'] as String?,
      );

  static LocalTimeStruct? maybeFromMap(dynamic data) => data is Map
      ? LocalTimeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'from': _from,
        'to': _to,
        'dateString': _dateString,
        'date': _date,
        'timeString': _timeString,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'from': serializeParam(
          _from,
          ParamType.String,
        ),
        'to': serializeParam(
          _to,
          ParamType.String,
        ),
        'dateString': serializeParam(
          _dateString,
          ParamType.String,
        ),
        'date': serializeParam(
          _date,
          ParamType.String,
        ),
        'timeString': serializeParam(
          _timeString,
          ParamType.String,
        ),
      }.withoutNulls;

  static LocalTimeStruct fromSerializableMap(Map<String, dynamic> data) =>
      LocalTimeStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        from: deserializeParam(
          data['from'],
          ParamType.String,
          false,
        ),
        to: deserializeParam(
          data['to'],
          ParamType.String,
          false,
        ),
        dateString: deserializeParam(
          data['dateString'],
          ParamType.String,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.String,
          false,
        ),
        timeString: deserializeParam(
          data['timeString'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LocalTimeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LocalTimeStruct &&
        id == other.id &&
        from == other.from &&
        to == other.to &&
        dateString == other.dateString &&
        date == other.date &&
        timeString == other.timeString;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, from, to, dateString, date, timeString]);
}

LocalTimeStruct createLocalTimeStruct({
  int? id,
  String? from,
  String? to,
  String? dateString,
  String? date,
  String? timeString,
}) =>
    LocalTimeStruct(
      id: id,
      from: from,
      to: to,
      dateString: dateString,
      date: date,
      timeString: timeString,
    );
