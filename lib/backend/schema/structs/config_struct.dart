// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConfigStruct extends BaseStruct {
  ConfigStruct({
    String? homeCreatorMsgStep0,
    String? homeSharePic1,
    String? homeSharePic2,
    String? homeShareVideo,
    bool? activePhase2,
    String? deliveryInfoText,
    String? deliveryInfoVideo,
  })  : _homeCreatorMsgStep0 = homeCreatorMsgStep0,
        _homeSharePic1 = homeSharePic1,
        _homeSharePic2 = homeSharePic2,
        _homeShareVideo = homeShareVideo,
        _activePhase2 = activePhase2,
        _deliveryInfoText = deliveryInfoText,
        _deliveryInfoVideo = deliveryInfoVideo;

  // "home_creator_msg_step0" field.
  String? _homeCreatorMsgStep0;
  String get homeCreatorMsgStep0 => _homeCreatorMsgStep0 ?? '';
  set homeCreatorMsgStep0(String? val) => _homeCreatorMsgStep0 = val;
  bool hasHomeCreatorMsgStep0() => _homeCreatorMsgStep0 != null;

  // "home_share_pic1" field.
  String? _homeSharePic1;
  String get homeSharePic1 => _homeSharePic1 ?? '';
  set homeSharePic1(String? val) => _homeSharePic1 = val;
  bool hasHomeSharePic1() => _homeSharePic1 != null;

  // "home_share_pic2" field.
  String? _homeSharePic2;
  String get homeSharePic2 => _homeSharePic2 ?? '';
  set homeSharePic2(String? val) => _homeSharePic2 = val;
  bool hasHomeSharePic2() => _homeSharePic2 != null;

  // "home_share_video" field.
  String? _homeShareVideo;
  String get homeShareVideo => _homeShareVideo ?? '';
  set homeShareVideo(String? val) => _homeShareVideo = val;
  bool hasHomeShareVideo() => _homeShareVideo != null;

  // "activePhase2" field.
  bool? _activePhase2;
  bool get activePhase2 => _activePhase2 ?? false;
  set activePhase2(bool? val) => _activePhase2 = val;
  bool hasActivePhase2() => _activePhase2 != null;

  // "deliveryInfoText" field.
  String? _deliveryInfoText;
  String get deliveryInfoText => _deliveryInfoText ?? '';
  set deliveryInfoText(String? val) => _deliveryInfoText = val;
  bool hasDeliveryInfoText() => _deliveryInfoText != null;

  // "deliveryInfoVideo" field.
  String? _deliveryInfoVideo;
  String get deliveryInfoVideo => _deliveryInfoVideo ?? '';
  set deliveryInfoVideo(String? val) => _deliveryInfoVideo = val;
  bool hasDeliveryInfoVideo() => _deliveryInfoVideo != null;

  static ConfigStruct fromMap(Map<String, dynamic> data) => ConfigStruct(
        homeCreatorMsgStep0: data['home_creator_msg_step0'] as String?,
        homeSharePic1: data['home_share_pic1'] as String?,
        homeSharePic2: data['home_share_pic2'] as String?,
        homeShareVideo: data['home_share_video'] as String?,
        activePhase2: data['activePhase2'] as bool?,
        deliveryInfoText: data['deliveryInfoText'] as String?,
        deliveryInfoVideo: data['deliveryInfoVideo'] as String?,
      );

  static ConfigStruct? maybeFromMap(dynamic data) =>
      data is Map ? ConfigStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'home_creator_msg_step0': _homeCreatorMsgStep0,
        'home_share_pic1': _homeSharePic1,
        'home_share_pic2': _homeSharePic2,
        'home_share_video': _homeShareVideo,
        'activePhase2': _activePhase2,
        'deliveryInfoText': _deliveryInfoText,
        'deliveryInfoVideo': _deliveryInfoVideo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'home_creator_msg_step0': serializeParam(
          _homeCreatorMsgStep0,
          ParamType.String,
        ),
        'home_share_pic1': serializeParam(
          _homeSharePic1,
          ParamType.String,
        ),
        'home_share_pic2': serializeParam(
          _homeSharePic2,
          ParamType.String,
        ),
        'home_share_video': serializeParam(
          _homeShareVideo,
          ParamType.String,
        ),
        'activePhase2': serializeParam(
          _activePhase2,
          ParamType.bool,
        ),
        'deliveryInfoText': serializeParam(
          _deliveryInfoText,
          ParamType.String,
        ),
        'deliveryInfoVideo': serializeParam(
          _deliveryInfoVideo,
          ParamType.String,
        ),
      }.withoutNulls;

  static ConfigStruct fromSerializableMap(Map<String, dynamic> data) =>
      ConfigStruct(
        homeCreatorMsgStep0: deserializeParam(
          data['home_creator_msg_step0'],
          ParamType.String,
          false,
        ),
        homeSharePic1: deserializeParam(
          data['home_share_pic1'],
          ParamType.String,
          false,
        ),
        homeSharePic2: deserializeParam(
          data['home_share_pic2'],
          ParamType.String,
          false,
        ),
        homeShareVideo: deserializeParam(
          data['home_share_video'],
          ParamType.String,
          false,
        ),
        activePhase2: deserializeParam(
          data['activePhase2'],
          ParamType.bool,
          false,
        ),
        deliveryInfoText: deserializeParam(
          data['deliveryInfoText'],
          ParamType.String,
          false,
        ),
        deliveryInfoVideo: deserializeParam(
          data['deliveryInfoVideo'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ConfigStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ConfigStruct &&
        homeCreatorMsgStep0 == other.homeCreatorMsgStep0 &&
        homeSharePic1 == other.homeSharePic1 &&
        homeSharePic2 == other.homeSharePic2 &&
        homeShareVideo == other.homeShareVideo &&
        activePhase2 == other.activePhase2 &&
        deliveryInfoText == other.deliveryInfoText &&
        deliveryInfoVideo == other.deliveryInfoVideo;
  }

  @override
  int get hashCode => const ListEquality().hash([
        homeCreatorMsgStep0,
        homeSharePic1,
        homeSharePic2,
        homeShareVideo,
        activePhase2,
        deliveryInfoText,
        deliveryInfoVideo
      ]);
}

ConfigStruct createConfigStruct({
  String? homeCreatorMsgStep0,
  String? homeSharePic1,
  String? homeSharePic2,
  String? homeShareVideo,
  bool? activePhase2,
  String? deliveryInfoText,
  String? deliveryInfoVideo,
}) =>
    ConfigStruct(
      homeCreatorMsgStep0: homeCreatorMsgStep0,
      homeSharePic1: homeSharePic1,
      homeSharePic2: homeSharePic2,
      homeShareVideo: homeShareVideo,
      activePhase2: activePhase2,
      deliveryInfoText: deliveryInfoText,
      deliveryInfoVideo: deliveryInfoVideo,
    );
