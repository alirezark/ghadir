import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/delivery_header/delivery_header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'narration_home_model.dart';
export 'narration_home_model.dart';

class NarrationHomeWidget extends StatefulWidget {
  const NarrationHomeWidget({super.key});

  @override
  State<NarrationHomeWidget> createState() => _NarrationHomeWidgetState();
}

class _NarrationHomeWidgetState extends State<NarrationHomeWidget> {
  late NarrationHomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NarrationHomeModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResult6i8 = await BaseGroup.getConfigCall.call();
      if ((_model.apiResult6i8?.succeeded ?? true)) {
        FFAppState().config =
            ConfigStruct.maybeFromMap((_model.apiResult6i8?.jsonBody ?? ''))!;
        setState(() {});
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, -1.0),
            child: Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height,
              constraints: const BoxConstraints(
                maxWidth: 450.0,
              ),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 4.0,
                    color: Color(0x33000000),
                    offset: Offset(
                      0.0,
                      2.0,
                    ),
                  )
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.deliveryHeaderModel,
                    updateCallback: () => setState(() {}),
                    child: DeliveryHeaderWidget(
                      step: 1,
                      stepName: 'توضیحات',
                      hasBack: true,
                      onBack: () async {
                        context.pushNamed('HomePage');
                      },
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16.0),
                                  shape: BoxShape.rectangle,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    const FlutterFlowVideoPlayer(
                                      path:
                                          'https://ghadir-api.mardomi.org/uploads/VID_20240531_153328_557_6878824abb.mp4',
                                      videoType: VideoType.network,
                                      autoPlay: false,
                                      looping: true,
                                      showControls: true,
                                      allowFullScreen: true,
                                      allowPlaybackSpeedMenu: false,
                                    ),
                                    const FlutterFlowVideoPlayer(
                                      path:
                                          'https://file-examples.com/storage/fe3cb26995666504a8d6180/2017/04/file_example_MP4_640_3MG.mp4',
                                      videoType: VideoType.network,
                                      autoPlay: false,
                                      looping: true,
                                      showControls: true,
                                      allowFullScreen: true,
                                      allowPlaybackSpeedMenu: false,
                                    ),
                                    const FlutterFlowVideoPlayer(
                                      path:
                                          'https://file-examples.com/storage/fe3cb26995666504a8d6180/2017/04/file_example_MP4_640_3MG.mp4',
                                      videoType: VideoType.network,
                                      width: double.infinity,
                                      autoPlay: false,
                                      looping: true,
                                      showControls: true,
                                      allowFullScreen: true,
                                      allowPlaybackSpeedMenu: false,
                                    ),
                                    const FlutterFlowVideoPlayer(
                                      path:
                                          'assets/videos/VID_20240531_153328_557.mp4',
                                      videoType: VideoType.asset,
                                      autoPlay: false,
                                      looping: true,
                                      showControls: true,
                                      allowFullScreen: true,
                                      allowPlaybackSpeedMenu: false,
                                    ),
                                  ].divide(const SizedBox(height: 8.0)),
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 100.0,
                              decoration: const BoxDecoration(),
                              child: MarkdownBody(
                                data: FFAppState().config.deliveryInfoText,
                                selectable: true,
                                onTapLink: (_, url, __) => launchURL(url!),
                              ),
                            ),
                          ].divide(const SizedBox(height: 16.0)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
                    child: Container(
                      decoration: const BoxDecoration(),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('deliverType');
                        },
                        text: 'یا علی',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleSmallFamily,
                                color: Colors.white,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .titleSmallFamily),
                              ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ].divide(const SizedBox(height: 16.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
