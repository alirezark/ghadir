import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/actions/actions.dart' as action_blocks;
import 'dart:math' as math;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.instantTimer = InstantTimer.periodic(
        duration: const Duration(milliseconds: 5000),
        callback: (timer) async {
          _model.apiResultmvz = await ProfileGroup.getCall.call(
            jwt: currentAuthenticationToken,
          );
          if ((_model.apiResultmvz?.succeeded ?? true)) {
            setState(() {
              FFAppState().profile = ProfileStruct.maybeFromMap(
                  (_model.apiResultmvz?.jsonBody ?? ''))!;
            });
            await action_blocks.handleUserState(context);
            _model.instantTimer?.cancel();
          } else if ((_model.apiResultmvz?.statusCode ?? 200) == 404) {
            await action_blocks.handleUserState(context);
            _model.instantTimer?.cancel();
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'خطای اینترنت',
                  style: TextStyle(
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
                ),
                duration: const Duration(milliseconds: 4000),
                backgroundColor: FlutterFlowTheme.of(context).alternate,
              ),
            );
          }
        },
        startImmediately: true,
      );
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, -1.0),
            child: Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height,
              constraints: BoxConstraints(
                maxWidth: FFAppConstants.maxWidth.toDouble(),
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
              child: SizedBox(
                height: double.infinity,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height * 0.7,
                      decoration: const BoxDecoration(
                        color: Color(0xFFE5E5E5),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Transform.rotate(
                              angle: 180.0 * (math.pi / 180),
                              child: SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: CarouselSlider(
                                  items: [
                                    Transform.rotate(
                                      angle: 180.0 * (math.pi / 180),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/128-ts-reportage-273003-1.jpg',
                                          width: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Transform.rotate(
                                      angle: 180.0 * (math.pi / 180),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/60fd494ef2759.jpg',
                                          width: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Transform.rotate(
                                      angle: 180.0 * (math.pi / 180),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/62309259.jpg',
                                          width: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Transform.rotate(
                                      angle: 180.0 * (math.pi / 180),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/60fd494ef2759.jpg',
                                          width: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                  carouselController:
                                      _model.carousel1Controller ??=
                                          CarouselController(),
                                  options: CarouselOptions(
                                    initialPage: 1,
                                    viewportFraction: 0.5,
                                    disableCenter: true,
                                    enlargeCenterPage: true,
                                    enlargeFactor: 0.25,
                                    enableInfiniteScroll: true,
                                    scrollDirection: Axis.vertical,
                                    autoPlay: true,
                                    autoPlayAnimationDuration:
                                        const Duration(milliseconds: 20000),
                                    autoPlayInterval:
                                        const Duration(milliseconds: (20000 + 0)),
                                    autoPlayCurve: Curves.linear,
                                    pauseAutoPlayInFiniteScroll: true,
                                    onPageChanged: (index, _) =>
                                        _model.carousel1CurrentIndex = index,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: CarouselSlider(
                                items: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/128-ts-reportage-273003-1.jpg',
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/60fd494ef2759.jpg',
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/62309259.jpg',
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/128-ts-reportage-273003-1.jpg',
                                      width: 300.0,
                                      height: 200.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                                carouselController:
                                    _model.carouselController ??=
                                        CarouselController(),
                                options: CarouselOptions(
                                  initialPage: 1,
                                  viewportFraction: 0.5,
                                  disableCenter: true,
                                  enlargeCenterPage: true,
                                  enlargeFactor: 0.25,
                                  enableInfiniteScroll: true,
                                  scrollDirection: Axis.vertical,
                                  autoPlay: true,
                                  autoPlayAnimationDuration:
                                      const Duration(milliseconds: 20000),
                                  autoPlayInterval:
                                      const Duration(milliseconds: (20000 + 0)),
                                  autoPlayCurve: Curves.linear,
                                  pauseAutoPlayInFiniteScroll: true,
                                  onPageChanged: (index, _) =>
                                      _model.carouselCurrentIndex = index,
                                ),
                              ),
                            ),
                          ),
                        ].divide(const SizedBox(width: 8.0)),
                      ),
                    ),
                    Container(
                      height: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            const Color(0x00F5F5F5),
                            const Color(0xD6F5F5F5),
                            FlutterFlowTheme.of(context).secondaryBackground
                          ],
                          stops: const [0.0, 0.5, 0.7],
                          begin: const AlignmentDirectional(0.0, -1.0),
                          end: const AlignmentDirectional(0, 1.0),
                        ),
                      ),
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 1.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            if (FFAppState().profile.firstName != '')
                              Flexible(
                                child: Container(
                                  height: 400.0,
                                  decoration: const BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, -1.0),
                                        child: Text(
                                          'سامانه مردمی غدیر',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmallFamily,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(FlutterFlowTheme
                                                            .of(context)
                                                        .headlineSmallFamily),
                                              ),
                                        ),
                                      ),
                                      Text(
                                        '${FFAppState().profile.firstName} ${FFAppState().profile.lastName} عزیز، به سامانه مردمی غدیر خوش آمدید',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLargeFamily,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLargeFamily),
                                            ),
                                      ),
                                      Container(
                                        constraints: const BoxConstraints(
                                          maxWidth: 250.0,
                                        ),
                                        decoration: const BoxDecoration(),
                                        child: Text(
                                          'از تاریخ فلان، از طریق این سامانه می توانید خیلی کارها بکنید',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ),
                                    ].divide(const SizedBox(height: 16.0)),
                                  ),
                                ),
                              ),
                          ].addToStart(const SizedBox(height: 0.0)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
