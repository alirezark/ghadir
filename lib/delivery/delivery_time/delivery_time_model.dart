import '/backend/api_requests/api_calls.dart';
import '/components/delivery_header/delivery_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'delivery_time_widget.dart' show DeliveryTimeWidget;
import 'package:flutter/material.dart';

class DeliveryTimeModel extends FlutterFlowModel<DeliveryTimeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DeliveryHeader component.
  late DeliveryHeaderModel deliveryHeaderModel;
  // Stores action output result for [Backend Call - API (upsertLocalTime)] action in Button widget.
  ApiCallResponse? apiResultdie;

  @override
  void initState(BuildContext context) {
    deliveryHeaderModel = createModel(context, () => DeliveryHeaderModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    deliveryHeaderModel.dispose();
  }
}
