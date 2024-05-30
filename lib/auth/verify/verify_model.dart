import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'verify_widget.dart' show VerifyWidget;
import 'package:flutter/material.dart';

class VerifyModel extends FlutterFlowModel<VerifyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  InstantTimer? pinCodeCountDownTimer;
  // State field(s) for code widget.
  TextEditingController? code;
  String? Function(BuildContext, String?)? codeValidator;
  // Stores action output result for [Backend Call - API (login)] action in Button widget.
  ApiCallResponse? loginResult;
  // Stores action output result for [Backend Call - API (otp)] action in Button widget.
  ApiCallResponse? otpResult;
  InstantTimer? pinCodeCountDown2;

  @override
  void initState(BuildContext context) {
    code = TextEditingController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    pinCodeCountDownTimer?.cancel();
    code?.dispose();
    pinCodeCountDown2?.cancel();
  }

  /// Action blocks.
  Future startCountDown(BuildContext context) async {}
}
