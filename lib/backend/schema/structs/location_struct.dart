// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocationStruct extends BaseStruct {
  LocationStruct({
    String? address,
    double? lat,
    double? long,
  })  : _address = address,
        _lat = lat,
        _long = long;

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

  static LocationStruct fromMap(Map<String, dynamic> data) => LocationStruct(
        address: data['address'] as String?,
        lat: castToType<double>(data['lat']),
        long: castToType<double>(data['long']),
      );

  static LocationStruct? maybeFromMap(dynamic data) =>
      data is Map ? LocationStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'address': _address,
        'lat': _lat,
        'long': _long,
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
      }.withoutNulls;

  static LocationStruct fromSerializableMap(Map<String, dynamic> data) =>
      LocationStruct(
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
      );

  @override
  String toString() => 'LocationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LocationStruct &&
        address == other.address &&
        lat == other.lat &&
        long == other.long;
  }

  @override
  int get hashCode => const ListEquality().hash([address, lat, long]);
}

LocationStruct createLocationStruct({
  String? address,
  double? lat,
  double? long,
}) =>
    LocationStruct(
      address: address,
      lat: lat,
      long: long,
    );
