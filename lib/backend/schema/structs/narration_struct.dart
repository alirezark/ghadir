// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NarrationStruct extends BaseStruct {
  NarrationStruct({
    String? text,
    String? file,
  })  : _text = text,
        _file = file;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  set text(String? val) => _text = val;

  bool hasText() => _text != null;

  // "file" field.
  String? _file;
  String get file => _file ?? '';
  set file(String? val) => _file = val;

  bool hasFile() => _file != null;

  static NarrationStruct fromMap(Map<String, dynamic> data) => NarrationStruct(
        text: data['text'] as String?,
        file: data['file'] as String?,
      );

  static NarrationStruct? maybeFromMap(dynamic data) => data is Map
      ? NarrationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'text': _text,
        'file': _file,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'text': serializeParam(
          _text,
          ParamType.String,
        ),
        'file': serializeParam(
          _file,
          ParamType.String,
        ),
      }.withoutNulls;

  static NarrationStruct fromSerializableMap(Map<String, dynamic> data) =>
      NarrationStruct(
        text: deserializeParam(
          data['text'],
          ParamType.String,
          false,
        ),
        file: deserializeParam(
          data['file'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'NarrationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NarrationStruct && text == other.text && file == other.file;
  }

  @override
  int get hashCode => const ListEquality().hash([text, file]);
}

NarrationStruct createNarrationStruct({
  String? text,
  String? file,
}) =>
    NarrationStruct(
      text: text,
      file: file,
    );
