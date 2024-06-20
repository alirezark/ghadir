import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'upload_sheet_widget.dart' show UploadSheetWidget;
import 'package:flutter/material.dart';

class UploadSheetModel extends FlutterFlowModel<UploadSheetWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (upload)] action in upload widget.
  ApiCallResponse? uploadVideoResult;
  // Stores action output result for [Backend Call - API (create)] action in upload widget.
  ApiCallResponse? createVideoNarration;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
