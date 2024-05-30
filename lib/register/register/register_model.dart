import '/backend/api_requests/api_calls.dart';
import '/components/register_header/register_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'register_widget.dart' show RegisterWidget;
import 'package:flutter/material.dart';

class RegisterModel extends FlutterFlowModel<RegisterWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
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

  // State field(s) for bite widget.
  int? biteValue;
  FormFieldController<int>? biteValueController;
  // State field(s) for bitName widget.
  FocusNode? bitNameFocusNode;
  TextEditingController? bitNameTextController;
  String? Function(BuildContext, String?)? bitNameTextControllerValidator;
  // State field(s) for biteCount widget.
  FocusNode? biteCountFocusNode;
  TextEditingController? biteCountTextController;
  String? Function(BuildContext, String?)? biteCountTextControllerValidator;
  String? _biteCountTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'تعداد لقمه را وارد کنید';
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
    biteCountTextControllerValidator = _biteCountTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    registerHeaderModel.dispose();
    firstNameFocusNode?.dispose();
    firstNameTextController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameTextController?.dispose();

    bitNameFocusNode?.dispose();
    bitNameTextController?.dispose();

    biteCountFocusNode?.dispose();
    biteCountTextController?.dispose();
  }
}
