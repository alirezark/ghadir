import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

Future handleUserState(BuildContext context) async {
  if ((FFAppState().profile == null) ||
      (FFAppState().profile.firstName == '')) {
    context.pushNamed('register');
  } else if (FFAppState().profile.address == '') {
  context.pushNamed('addressForm');
}
}
