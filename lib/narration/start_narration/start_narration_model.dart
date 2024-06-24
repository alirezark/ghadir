import '/backend/api_requests/api_calls.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'start_narration_widget.dart' show StartNarrationWidget;
import 'package:flutter/material.dart';

class StartNarrationModel extends FlutterFlowModel<StartNarrationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getConfig)] action in startNarration widget.
  ApiCallResponse? apiResult6i8;
  // Model for Header component.
  late HeaderModel headerModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    headerModel.dispose();
  }
}
