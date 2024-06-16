import '/backend/api_requests/api_calls.dart';
import '/components/empty_listsimple/empty_listsimple_widget.dart';
import '/components/register_header/register_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'teamates_widget.dart' show TeamatesWidget;
import 'package:flutter/material.dart';

class TeamatesModel extends FlutterFlowModel<TeamatesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (get)] action in teamates widget.
  ApiCallResponse? teammateProfileResult;
  // Model for RegisterHeader component.
  late RegisterHeaderModel registerHeaderModel;
  // Model for EmptyListsimple component.
  late EmptyListsimpleModel emptyListsimpleModel;
  // Stores action output result for [Backend Call - API (upsertTeammate)] action in Button widget.
  ApiCallResponse? apiResult7xo;

  @override
  void initState(BuildContext context) {
    registerHeaderModel = createModel(context, () => RegisterHeaderModel());
    emptyListsimpleModel = createModel(context, () => EmptyListsimpleModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    registerHeaderModel.dispose();
    emptyListsimpleModel.dispose();
  }
}
