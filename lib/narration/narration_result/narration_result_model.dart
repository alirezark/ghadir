import '/backend/api_requests/api_calls.dart';
import '/components/bottom_nav/bottom_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'narration_result_widget.dart' show NarrationResultWidget;
import 'package:flutter/material.dart';

class NarrationResultModel extends FlutterFlowModel<NarrationResultWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (result)] action in narrationResult widget.
  ApiCallResponse? apiResult5v0;
  // Model for bottomNav component.
  late BottomNavModel bottomNavModel;

  @override
  void initState(BuildContext context) {
    bottomNavModel = createModel(context, () => BottomNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    bottomNavModel.dispose();
  }
}
