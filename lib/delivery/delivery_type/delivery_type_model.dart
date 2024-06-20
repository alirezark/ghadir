import '/backend/api_requests/api_calls.dart';
import '/components/delivery_header/delivery_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'delivery_type_widget.dart' show DeliveryTypeWidget;
import 'package:flutter/material.dart';

class DeliveryTypeModel extends FlutterFlowModel<DeliveryTypeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DeliveryHeader component.
  late DeliveryHeaderModel deliveryHeaderModel;
  // Stores action output result for [Backend Call - API (upsertDeliveryType)] action in Button widget.
  ApiCallResponse? apiResult4t0;

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
