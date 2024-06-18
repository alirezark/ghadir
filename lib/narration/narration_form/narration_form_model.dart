import '/components/delivery_header/delivery_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'narration_form_widget.dart' show NarrationFormWidget;
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class NarrationFormModel extends FlutterFlowModel<NarrationFormWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DeliveryHeader component.
  late DeliveryHeaderModel deliveryHeaderModel;
  String? audioRecord;
  FFUploadedFile recordedFileBytes =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  AudioRecorder? audioRecorder;

  @override
  void initState(BuildContext context) {
    deliveryHeaderModel = createModel(context, () => DeliveryHeaderModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    deliveryHeaderModel.dispose();
  }
}
