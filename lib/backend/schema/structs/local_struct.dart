// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocalStruct extends BaseStruct {
  LocalStruct({
    String? address,
    double? lat,
    double? long,
    DeliveryType? type,
    int? id,
  })  : _address = address,
        _lat = lat,
        _long = long,
        _type = type,
        _id = id;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;
  bool hasAddress() => _address != null;

  // "lat" field.
  double? _lat;
  double get lat => _lat ?? 0.0;
  set lat(double? val) => _lat = val;
  void incrementLat(double amount) => _lat = lat + amount;
  bool hasLat() => _lat != null;

  // "long" field.
  double? _long;
  double get long => _long ?? 0.0;
  set long(double? val) => _long = val;
  void incrementLong(double amount) => _long = long + amount;
  bool hasLong() => _long != null;

  // "type" field.
  DeliveryType? _type;
  DeliveryType? get type => _type;
  set type(DeliveryType? val) => _type = val;
  bool hasType() => _type != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  static LocalStruct fromMap(Map<String, dynamic> data) => LocalStruct(
        address: data['address'] as String?,
        lat: castToType<double>(data['lat']),
        long: castToType<double>(data['long']),
        type: deserializeEnum<DeliveryType>(data['type']),
        id: castToType<int>(data['id']),
      );

  static LocalStruct? maybeFromMap(dynamic data) =>
      data is Map ? LocalStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'address': _address,
        'lat': _lat,
        'long': _long,
        'type': _type?.serialize(),
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'lat': serializeParam(
          _lat,
          ParamType.double,
        ),
        'long': serializeParam(
          _long,
          ParamType.double,
        ),
        'type': serializeParam(
          _type,
          ParamType.Enum,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
      }.withoutNulls;

  static LocalStruct fromSerializableMap(Map<String, dynamic> data) =>
      LocalStruct(
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        lat: deserializeParam(
          data['lat'],
          ParamType.double,
          false,
        ),
        long: deserializeParam(
          data['long'],
          ParamType.double,
          false,
        ),
        type: deserializeParam<DeliveryType>(
          data['type'],
          ParamType.Enum,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'LocalStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LocalStruct &&
        address == other.address &&
        lat == other.lat &&
        long == other.long &&
        type == other.type &&
        id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([address, lat, long, type, id]);
}

LocalStruct createLocalStruct({
  String? address,
  double? lat,
  double? long,
  DeliveryType? type,
  int? id,
}) =>
    LocalStruct(
      address: address,
      lat: lat,
      long: long,
      type: type,
      id: id,
    );
