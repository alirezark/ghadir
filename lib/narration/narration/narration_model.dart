import '/backend/api_requests/api_calls.dart';
import '/components/narration_header/narration_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'narration_widget.dart' show NarrationWidget;
import 'package:flutter/material.dart';

class NarrationModel extends FlutterFlowModel<NarrationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getStep)] action in narration widget.
  ApiCallResponse? apiResultsju;
  // Model for NarrationHeader component.
  late NarrationHeaderModel narrationHeaderModel;

  @override
  void initState(BuildContext context) {
    narrationHeaderModel = createModel(context, () => NarrationHeaderModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    narrationHeaderModel.dispose();
  }
}
