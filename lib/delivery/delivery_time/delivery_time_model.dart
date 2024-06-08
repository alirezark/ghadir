import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/delivery_header/delivery_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'delivery_time_widget.dart' show DeliveryTimeWidget;
import 'package:flutter/material.dart';

class DeliveryTimeModel extends FlutterFlowModel<DeliveryTimeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DeliveryHeader component.
  late DeliveryHeaderModel deliveryHeaderModel;
  // State field(s) for local widget.
  int? localValue;
  FormFieldController<int>? localValueController;
  // Stores action output result for [Backend Call - API (localDate)] action in local widget.
  ApiCallResponse? apiResultr7r;
  // Stores action output result for [Custom Action - convertDates] action in local widget.
  List<LocalTimeStruct>? convertedLocalDates;
  // State field(s) for date widget.
  String? dateValue;
  FormFieldController<String>? dateValueController;
  // Stores action output result for [Backend Call - API (localTimes)] action in date widget.
  ApiCallResponse? apiResultr7rCopy2;
  // Stores action output result for [Custom Action - convertDates] action in date widget.
  List<LocalTimeStruct>? convertedLocalTimes;
  // State field(s) for time widget.
  int? timeValue;
  FormFieldController<int>? timeValueController;
  // State field(s) for walkLocal widget.
  int? walkLocalValue;
  FormFieldController<int>? walkLocalValueController;
  // Stores action output result for [Backend Call - API (localTimes)] action in walkLocal widget.
  ApiCallResponse? localTimeResult;
  // Stores action output result for [Custom Action - convertDates] action in walkLocal widget.
  List<LocalTimeStruct>? convertedWalkTimes;
  // State field(s) for walkTime widget.
  int? walkTimeValue;
  FormFieldController<int>? walkTimeValueController;
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
