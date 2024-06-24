import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'verify_widget.dart' show VerifyWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class VerifyModel extends FlutterFlowModel<VerifyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  InstantTimer? pinCodeCountDownTimer;
  // State field(s) for code widget.
  FocusNode? codeFocusNode;
  TextEditingController? codeTextController;
  final codeMask = MaskTextInputFormatter(mask: '####');
  String? Function(BuildContext, String?)? codeTextControllerValidator;
  // Stores action output result for [Backend Call - API (login)] action in code widget.
  ApiCallResponse? loginResultCopy;
  // Stores action output result for [Backend Call - API (login)] action in Button widget.
  ApiCallResponse? loginResult;
  // Stores action output result for [Backend Call - API (otp)] action in Button widget.
  ApiCallResponse? otpResult;
  InstantTimer? pinCodeCountDown2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    pinCodeCountDownTimer?.cancel();
    codeFocusNode?.dispose();
    codeTextController?.dispose();

    pinCodeCountDown2?.cancel();
  }

  /// Action blocks.
  Future startCountDown(BuildContext context) async {}
}
