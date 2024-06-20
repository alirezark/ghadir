import '/backend/api_requests/api_calls.dart';
import '/components/bottom_nav/bottom_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'share_widget.dart' show ShareWidget;
import 'package:flutter/material.dart';

class ShareModel extends FlutterFlowModel<ShareWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getConfig)] action in share widget.
  ApiCallResponse? apiResult6i8;
  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (get)] action in share widget.
  ApiCallResponse? apiResultmvz;
  // Model for bottomNav component.
  late BottomNavModel bottomNavModel;

  @override
  void initState(BuildContext context) {
    bottomNavModel = createModel(context, () => BottomNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    instantTimer?.cancel();
    bottomNavModel.dispose();
  }
}
