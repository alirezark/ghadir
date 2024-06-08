import '/backend/api_requests/api_calls.dart';
import '/components/delivery_header/delivery_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'delivery_info_widget.dart' show DeliveryInfoWidget;
import 'package:flutter/material.dart';

class DeliveryInfoModel extends FlutterFlowModel<DeliveryInfoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getConfig)] action in deliveryInfo widget.
  ApiCallResponse? apiResult6i8;
  // Model for DeliveryHeader component.
  late DeliveryHeaderModel deliveryHeaderModel;

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
