// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NarrationStepStruct extends BaseStruct {
  NarrationStepStruct({
    int? id,
    String? description,
    int? order,
    String? createdAt,
    String? updatedAt,
    NarrationType? type,
    String? videoUrl,
    bool? hasImage,
    bool? hasText,
    bool? hasAudio,
    bool? hasVideo,
    String? hint,
    int? totalSteps,
    String? title,
  })  : _id = id,
        _description = description,
        _order = order,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _type = type,
        _videoUrl = videoUrl,
        _hasImage = hasImage,
        _hasText = hasText,
        _hasAudio = hasAudio,
        _hasVideo = hasVideo,
        _hint = hint,
        _totalSteps = totalSteps,
        _title = title;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  set order(int? val) => _order = val;

  void incrementOrder(int amount) => order = order + amount;

  bool hasOrder() => _order != null;

  // "createdAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "type" field.
  NarrationType? _type;
  NarrationType? get type => _type;
  set type(NarrationType? val) => _type = val;

  bool hasType() => _type != null;

  // "videoUrl" field.
  String? _videoUrl;
  String get videoUrl => _videoUrl ?? '';
  set videoUrl(String? val) => _videoUrl = val;

  bool hasVideoUrl() => _videoUrl != null;

  // "hasImage" field.
  bool? _hasImage;
  bool get hasImage => _hasImage ?? false;
  set hasImage(bool? val) => _hasImage = val;

  bool hasHasImage() => _hasImage != null;

  // "hasText" field.
  bool? _hasText;
  bool get hasText => _hasText ?? false;
  set hasText(bool? val) => _hasText = val;

  bool hasHasText() => _hasText != null;

  // "hasAudio" field.
  bool? _hasAudio;
  bool get hasAudio => _hasAudio ?? false;
  set hasAudio(bool? val) => _hasAudio = val;

  bool hasHasAudio() => _hasAudio != null;

  // "hasVideo" field.
  bool? _hasVideo;
  bool get hasVideo => _hasVideo ?? false;
  set hasVideo(bool? val) => _hasVideo = val;

  bool hasHasVideo() => _hasVideo != null;

  // "hint" field.
  String? _hint;
  String get hint => _hint ?? '';
  set hint(String? val) => _hint = val;

  bool hasHint() => _hint != null;

  // "totalSteps" field.
  int? _totalSteps;
  int get totalSteps => _totalSteps ?? 0;
  set totalSteps(int? val) => _totalSteps = val;

  void incrementTotalSteps(int amount) => totalSteps = totalSteps + amount;

  bool hasTotalSteps() => _totalSteps != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  static NarrationStepStruct fromMap(Map<String, dynamic> data) =>
      NarrationStepStruct(
        id: castToType<int>(data['id']),
        description: data['description'] as String?,
        order: castToType<int>(data['order']),
        createdAt: data['createdAt'] as String?,
        updatedAt: data['updatedAt'] as String?,
        type: deserializeEnum<NarrationType>(data['type']),
        videoUrl: data['videoUrl'] as String?,
        hasImage: data['hasImage'] as bool?,
        hasText: data['hasText'] as bool?,
        hasAudio: data['hasAudio'] as bool?,
        hasVideo: data['hasVideo'] as bool?,
        hint: data['hint'] as String?,
        totalSteps: castToType<int>(data['totalSteps']),
        title: data['title'] as String?,
      );

  static NarrationStepStruct? maybeFromMap(dynamic data) => data is Map
      ? NarrationStepStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'description': _description,
        'order': _order,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
        'type': _type?.serialize(),
        'videoUrl': _videoUrl,
        'hasImage': _hasImage,
        'hasText': _hasText,
        'hasAudio': _hasAudio,
        'hasVideo': _hasVideo,
        'hint': _hint,
        'totalSteps': _totalSteps,
        'title': _title,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'order': serializeParam(
          _order,
          ParamType.int,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updatedAt': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.Enum,
        ),
        'videoUrl': serializeParam(
          _videoUrl,
          ParamType.String,
        ),
        'hasImage': serializeParam(
          _hasImage,
          ParamType.bool,
        ),
        'hasText': serializeParam(
          _hasText,
          ParamType.bool,
        ),
        'hasAudio': serializeParam(
          _hasAudio,
          ParamType.bool,
        ),
        'hasVideo': serializeParam(
          _hasVideo,
          ParamType.bool,
        ),
        'hint': serializeParam(
          _hint,
          ParamType.String,
        ),
        'totalSteps': serializeParam(
          _totalSteps,
          ParamType.int,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
      }.withoutNulls;

  static NarrationStepStruct fromSerializableMap(Map<String, dynamic> data) =>
      NarrationStepStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        order: deserializeParam(
          data['order'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updatedAt'],
          ParamType.String,
          false,
        ),
        type: deserializeParam<NarrationType>(
          data['type'],
          ParamType.Enum,
          false,
        ),
        videoUrl: deserializeParam(
          data['videoUrl'],
          ParamType.String,
          false,
        ),
        hasImage: deserializeParam(
          data['hasImage'],
          ParamType.bool,
          false,
        ),
        hasText: deserializeParam(
          data['hasText'],
          ParamType.bool,
          false,
        ),
        hasAudio: deserializeParam(
          data['hasAudio'],
          ParamType.bool,
          false,
        ),
        hasVideo: deserializeParam(
          data['hasVideo'],
          ParamType.bool,
          false,
        ),
        hint: deserializeParam(
          data['hint'],
          ParamType.String,
          false,
        ),
        totalSteps: deserializeParam(
          data['totalSteps'],
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
  String toString() => 'NarrationStepStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NarrationStepStruct &&
        id == other.id &&
        description == other.description &&
        order == other.order &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        type == other.type &&
        videoUrl == other.videoUrl &&
        hasImage == other.hasImage &&
        hasText == other.hasText &&
        hasAudio == other.hasAudio &&
        hasVideo == other.hasVideo &&
        hint == other.hint &&
        totalSteps == other.totalSteps &&
        title == other.title;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        description,
        order,
        createdAt,
        updatedAt,
        type,
        videoUrl,
        hasImage,
        hasText,
        hasAudio,
        hasVideo,
        hint,
        totalSteps,
        title
      ]);
}

NarrationStepStruct createNarrationStepStruct({
  int? id,
  String? description,
  int? order,
  String? createdAt,
  String? updatedAt,
  NarrationType? type,
  String? videoUrl,
  bool? hasImage,
  bool? hasText,
  bool? hasAudio,
  bool? hasVideo,
  String? hint,
  int? totalSteps,
  String? title,
}) =>
    NarrationStepStruct(
      id: id,
      description: description,
      order: order,
      createdAt: createdAt,
      updatedAt: updatedAt,
      type: type,
      videoUrl: videoUrl,
      hasImage: hasImage,
      hasText: hasText,
      hasAudio: hasAudio,
      hasVideo: hasVideo,
      hint: hint,
      totalSteps: totalSteps,
      title: title,
    );
