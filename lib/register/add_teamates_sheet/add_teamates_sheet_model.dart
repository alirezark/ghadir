import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_teamates_sheet_widget.dart' show AddTeamatesSheetWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AddTeamatesSheetModel extends FlutterFlowModel<AddTeamatesSheetWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;
  // State field(s) for gender widget.
  FormFieldController<List<String>>? genderValueController;
  String? get genderValue => genderValueController?.value?.firstOrNull;
  set genderValue(String? val) =>
      genderValueController?.value = val != null ? [val] : [];
  // State field(s) for age widget.
  FormFieldController<List<String>>? ageValueController;
  String? get ageValue => ageValueController?.value?.firstOrNull;
  set ageValue(String? val) =>
      ageValueController?.value = val != null ? [val] : [];
  // State field(s) for relation widget.
  FormFieldController<List<String>>? relationValueController;
  String? get relationValue => relationValueController?.value?.firstOrNull;
  set relationValue(String? val) =>
      relationValueController?.value = val != null ? [val] : [];
  // State field(s) for phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  final phoneMask = MaskTextInputFormatter(mask: '###########');
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  // Stores action output result for [Custom Action - toTeammateDataType] action in Button widget.
  TeammateStruct? teamate;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();
  }
}
