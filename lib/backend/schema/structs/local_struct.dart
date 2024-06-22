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
    String? name,
    String? ownerName,
    String? phone,
  })  : _address = address,
        _lat = lat,
        _long = long,
        _type = type,
        _id = id,
        _name = name,
        _ownerName = ownerName,
        _phone = phone;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "lat" field.
  double? _lat;
  double get lat => _lat ?? 0.0;
  set lat(double? val) => _lat = val;

  void incrementLat(double amount) => lat = lat + amount;

  bool hasLat() => _lat != null;

  // "long" field.
  double? _long;
  double get long => _long ?? 0.0;
  set long(double? val) => _long = val;

  void incrementLong(double amount) => long = long + amount;

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

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "ownerName" field.
  String? _ownerName;
  String get ownerName => _ownerName ?? '';
  set ownerName(String? val) => _ownerName = val;

  bool hasOwnerName() => _ownerName != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  static LocalStruct fromMap(Map<String, dynamic> data) => LocalStruct(
        address: data['address'] as String?,
        lat: castToType<double>(data['lat']),
        long: castToType<double>(data['long']),
        type: deserializeEnum<DeliveryType>(data['type']),
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        ownerName: data['ownerName'] as String?,
        phone: data['phone'] as String?,
      );

  static LocalStruct? maybeFromMap(dynamic data) =>
      data is Map ? LocalStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'address': _address,
        'lat': _lat,
        'long': _long,
        'type': _type?.serialize(),
        'id': _id,
        'name': _name,
        'ownerName': _ownerName,
        'phone': _phone,
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
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'ownerName': serializeParam(
          _ownerName,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
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
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        ownerName: deserializeParam(
          data['ownerName'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
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
        id == other.id &&
        name == other.name &&
        ownerName == other.ownerName &&
        phone == other.phone;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([address, lat, long, type, id, name, ownerName, phone]);
}

LocalStruct createLocalStruct({
  String? address,
  double? lat,
  double? long,
  DeliveryType? type,
  int? id,
  String? name,
  String? ownerName,
  String? phone,
}) =>
    LocalStruct(
      address: address,
      lat: lat,
      long: long,
      type: type,
      id: id,
      name: name,
      ownerName: ownerName,
      phone: phone,
    );
