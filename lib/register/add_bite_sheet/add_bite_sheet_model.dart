import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_bite_sheet_widget.dart' show AddBiteSheetWidget;
import 'package:flutter/material.dart';

class AddBiteSheetModel extends FlutterFlowModel<AddBiteSheetWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
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

  @override
  void initState(BuildContext context) {
    biteCountTextControllerValidator = _biteCountTextControllerValidator;
  }

  @override
  void dispose() {
    bitNameFocusNode?.dispose();
    bitNameTextController?.dispose();

    biteCountFocusNode?.dispose();
    biteCountTextController?.dispose();
  }
}
