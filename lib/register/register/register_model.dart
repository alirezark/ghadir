import '/backend/api_requests/api_calls.dart';
import '/components/register_header/register_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'register_widget.dart' show RegisterWidget;
import 'package:flutter/material.dart';

class RegisterModel extends FlutterFlowModel<RegisterWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (getConfig)] action in register widget.
  ApiCallResponse? configResult;
  // Stores action output result for [Backend Call - API (get)] action in register widget.
  ApiCallResponse? apiResultvsf;
  // Model for RegisterHeader component.
  late RegisterHeaderModel registerHeaderModel;
  // State field(s) for firstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameTextController;
  String? Function(BuildContext, String?)? firstNameTextControllerValidator;
  String? _firstNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'نام خود را وارد کنید';
    }

    return null;
  }

  // State field(s) for lastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameTextController;
  String? Function(BuildContext, String?)? lastNameTextControllerValidator;
  String? _lastNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'نام خانوادگی خود را وارد کنید';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (upsert)] action in Button widget.
  ApiCallResponse? apiResultx0c;

  @override
  void initState(BuildContext context) {
    registerHeaderModel = createModel(context, () => RegisterHeaderModel());
    firstNameTextControllerValidator = _firstNameTextControllerValidator;
    lastNameTextControllerValidator = _lastNameTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    registerHeaderModel.dispose();
    firstNameFocusNode?.dispose();
    firstNameTextController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameTextController?.dispose();
  }
}
