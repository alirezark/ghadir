import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getConfig)] action in HomePage widget.
  ApiCallResponse? apiResult6i8;
  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (get)] action in HomePage widget.
  ApiCallResponse? apiResultmvz;
  // State field(s) for Carousel_1 widget.
  CarouselController? carousel1Controller;

  int carousel1CurrentIndex = 1;

  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    instantTimer?.cancel();
  }
}
