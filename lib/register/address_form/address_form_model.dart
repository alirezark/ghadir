import '/backend/api_requests/api_calls.dart';
import '/components/register_header/register_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'address_form_widget.dart' show AddressFormWidget;
import 'package:flutter/material.dart';

class AddressFormModel extends FlutterFlowModel<AddressFormWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for RegisterHeader component.
  late RegisterHeaderModel registerHeaderModel;
  // State field(s) for address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressTextController;
  String? Function(BuildContext, String?)? addressTextControllerValidator;
  // Stores action output result for [Backend Call - API (upsertLocation)] action in Button widget.
  ApiCallResponse? apiResultjfb;

  @override
  void initState(BuildContext context) {
    registerHeaderModel = createModel(context, () => RegisterHeaderModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    registerHeaderModel.dispose();
    addressFocusNode?.dispose();
    addressTextController?.dispose();
  }
}
