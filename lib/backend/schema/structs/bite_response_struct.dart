// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BiteResponseStruct extends BaseStruct {
  BiteResponseStruct({
    List<BiteStruct>? data,
  }) : _data = data;

  // "data" field.
  List<BiteStruct>? _data;
  List<BiteStruct> get data => _data ?? const [];
  set data(List<BiteStruct>? val) => _data = val;

  void updateData(Function(List<BiteStruct>) updateFn) {
    updateFn(_data ??= []);
  }

  bool hasData() => _data != null;

  static BiteResponseStruct fromMap(Map<String, dynamic> data) =>
      BiteResponseStruct(
        data: getStructList(
          data['data'],
          BiteStruct.fromMap,
        ),
      );

  static BiteResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? BiteResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'data': _data?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'data': serializeParam(
          _data,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static BiteResponseStruct fromSerializableMap(Map<String, dynamic> data) =>
      BiteResponseStruct(
        data: deserializeStructParam<BiteStruct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: BiteStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'BiteResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is BiteResponseStruct && listEquality.equals(data, other.data);
  }

  @override
  int get hashCode => const ListEquality().hash([data]);
}

BiteResponseStruct createBiteResponseStruct() => BiteResponseStruct();
