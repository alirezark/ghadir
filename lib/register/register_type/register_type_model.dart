import '/flutter_flow/flutter_flow_util.dart';
import 'register_type_widget.dart' show RegisterTypeWidget;
import 'package:flutter/material.dart';

class RegisterTypeModel extends FlutterFlowModel<RegisterTypeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
