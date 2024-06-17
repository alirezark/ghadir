import '/backend/api_requests/api_calls.dart';
import '/components/narration_header/narration_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'narration_home_widget.dart' show NarrationHomeWidget;
import 'package:flutter/material.dart';

class NarrationHomeModel extends FlutterFlowModel<NarrationHomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getConfig)] action in narrationHome widget.
  ApiCallResponse? apiResult6i8;
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
