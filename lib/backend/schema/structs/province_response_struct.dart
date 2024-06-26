// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProvinceResponseStruct extends BaseStruct {
  ProvinceResponseStruct({
    List<ProvinceStruct>? data,
  }) : _data = data;

  // "data" field.
  List<ProvinceStruct>? _data;
  List<ProvinceStruct> get data => _data ?? const [];
  set data(List<ProvinceStruct>? val) => _data = val;

  void updateData(Function(List<ProvinceStruct>) updateFn) {
    updateFn(_data ??= []);
  }

  bool hasData() => _data != null;

  static ProvinceResponseStruct fromMap(Map<String, dynamic> data) =>
      ProvinceResponseStruct(
        data: getStructList(
          data['data'],
          ProvinceStruct.fromMap,
        ),
      );

  static ProvinceResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? ProvinceResponseStruct.fromMap(data.cast<String, dynamic>())
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

  static ProvinceResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ProvinceResponseStruct(
        data: deserializeStructParam<ProvinceStruct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: ProvinceStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ProvinceResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ProvinceResponseStruct &&
        listEquality.equals(data, other.data);
  }

  @override
  int get hashCode => const ListEquality().hash([data]);
}

ProvinceResponseStruct createProvinceResponseStruct() =>
    ProvinceResponseStruct();
