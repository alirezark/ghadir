import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  final phoneMask = MaskTextInputFormatter(mask: '###########');
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  String? _phoneTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'شماره موبایل را وارد کنید';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    phoneTextControllerValidator = _phoneTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    phoneFocusNode?.dispose();
    phoneTextController?.dispose();
  }

  /// Action blocks.
  Future submit(BuildContext context) async {
    ApiCallResponse? otpResult;

    FFAppState().isLoading = true;
    FFAppState().update(() {});
    otpResult = await AuthGroup.otpCall.call(
      mobile: phoneTextController.text,
    );

    if ((otpResult.succeeded ?? true)) {
      context.goNamed(
        'verify',
        queryParameters: {
          'phone': serializeParam(
            phoneTextController.text,
            ParamType.String,
          ),
        }.withoutNulls,
        extra: <String, dynamic>{
          kTransitionInfoKey: const TransitionInfo(
            hasTransition: true,
            transitionType: PageTransitionType.rightToLeft,
          ),
        },
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'وقوع خطا، دوباره تلاش کنید',
            style: GoogleFonts.getFont(
              'Vazirmatn',
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
          ),
          duration: const Duration(milliseconds: 4000),
          backgroundColor: FlutterFlowTheme.of(context).error,
        ),
      );
    }

    FFAppState().isLoading = false;
    FFAppState().update(() {});
  }
}
