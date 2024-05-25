import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'address_form_widget.dart' show AddressFormWidget;
import 'package:flutter/material.dart';

class AddressFormModel extends FlutterFlowModel<AddressFormWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressTextController;
  String? Function(BuildContext, String?)? addressTextControllerValidator;
  // Stores action output result for [Backend Call - API (upsertLocation)] action in Button widget.
  ApiCallResponse? apiResultjfb;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    addressFocusNode?.dispose();
    addressTextController?.dispose();
  }
}
