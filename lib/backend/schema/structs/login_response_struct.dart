// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoginResponseStruct extends BaseStruct {
  LoginResponseStruct({
    String? jwt,
    UserStruct? user,
  })  : _jwt = jwt,
        _user = user;

  // "jwt" field.
  String? _jwt;
  String get jwt => _jwt ?? '';
  set jwt(String? val) => _jwt = val;

  bool hasJwt() => _jwt != null;

  // "user" field.
  UserStruct? _user;
  UserStruct get user => _user ?? UserStruct();
  set user(UserStruct? val) => _user = val;

  void updateUser(Function(UserStruct) updateFn) {
    updateFn(_user ??= UserStruct());
  }

  bool hasUser() => _user != null;

  static LoginResponseStruct fromMap(Map<String, dynamic> data) =>
      LoginResponseStruct(
        jwt: data['jwt'] as String?,
        user: UserStruct.maybeFromMap(data['user']),
      );

  static LoginResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? LoginResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'jwt': _jwt,
        'user': _user?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'jwt': serializeParam(
          _jwt,
          ParamType.String,
        ),
        'user': serializeParam(
          _user,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static LoginResponseStruct fromSerializableMap(Map<String, dynamic> data) =>
      LoginResponseStruct(
        jwt: deserializeParam(
          data['jwt'],
          ParamType.String,
          false,
        ),
        user: deserializeStructParam(
          data['user'],
          ParamType.DataStruct,
          false,
          structBuilder: UserStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'LoginResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LoginResponseStruct &&
        jwt == other.jwt &&
        user == other.user;
  }

  @override
  int get hashCode => const ListEquality().hash([jwt, user]);
}

LoginResponseStruct createLoginResponseStruct({
  String? jwt,
  UserStruct? user,
}) =>
    LoginResponseStruct(
      jwt: jwt,
      user: user ?? UserStruct(),
    );
