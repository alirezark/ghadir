import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/delivery_header/delivery_header_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'delivery_time_model.dart';
export 'delivery_time_model.dart';

class DeliveryTimeWidget extends StatefulWidget {
  const DeliveryTimeWidget({
    super.key,
    required this.type,
  });

  final DeliveryType? type;

  @override
  State<DeliveryTimeWidget> createState() => _DeliveryTimeWidgetState();
}

class _DeliveryTimeWidgetState extends State<DeliveryTimeWidget> {
  late DeliveryTimeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeliveryTimeModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().localTimes = [];
      FFAppState().localDates = [];
      setState(() {});
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
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.deliveryHeaderModel,
                    updateCallback: () => setState(() {}),
                    child: DeliveryHeaderWidget(
                      step: 3,
                      stepName: 'انتخاب مکان',
                      hasBack: true,
                      onBack: () async {
                        context.pushNamed('deliverType');
                      },
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          16.0, 16.0, 16.0, 16.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                child: Text(
                                  'لطفا آدرس تحویل را وارد کنید:',
                                  textAlign: TextAlign.justify,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyLargeFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyLargeFamily),
                                      ),
                                ),
                              ),
                            ),
                            if (widget.type == DeliveryType.localCenter)
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FutureBuilder<ApiCallResponse>(
                                    future: BaseGroup.localsListCall.call(
                                      type: widget.type?.name,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      final localLocalsListResponse =
                                          snapshot.data!;
                                      return FlutterFlowDropDown<int>(
                                        controller:
                                            _model.localValueController ??=
                                                FormFieldController<int>(null),
                                        options: List<int>.from(BaseGroup
                                            .localsListCall
                                            .data(
                                              localLocalsListResponse.jsonBody,
                                            )!
                                            .map((e) =>
                                                LocalStruct.maybeFromMap(e)?.id)
                                            .withoutNulls
                                            .toList()),
                                        optionLabels: BaseGroup.localsListCall
                                            .data(
                                              localLocalsListResponse.jsonBody,
                                            )!
                                            .map((e) =>
                                                LocalStruct.maybeFromMap(e)
                                                    ?.address)
                                            .withoutNulls
                                            .toList(),
                                        onChanged: (val) async {
                                          setState(
                                              () => _model.localValue = val);
                                          FFAppState().localDates = [];
                                          FFAppState().localTimes = [];
                                          setState(() {});
                                          _model.apiResultr7r = await BaseGroup
                                              .localDateCall
                                              .call(
                                            local:
                                                _model.localValue?.toString(),
                                          );

                                          if ((_model.apiResultr7r?.succeeded ??
                                              true)) {
                                            _model.convertedLocalDates =
                                                await actions.convertDates(
                                              ((_model.apiResultr7r?.jsonBody ??
                                                              '')
                                                          .toList()
                                                          .map<LocalTimeStruct?>(
                                                              LocalTimeStruct
                                                                  .maybeFromMap)
                                                          .toList()
                                                      as Iterable<
                                                          LocalTimeStruct?>)
                                                  .withoutNulls
                                                  .toList(),
                                            );
                                            FFAppState().localDates = _model
                                                .convertedLocalDates!
                                                .toList()
                                                .cast<LocalTimeStruct>();
                                            setState(() {});
                                          } else {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'وقوع خطا',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                  ),
                                                ),
                                                duration: const Duration(
                                                    milliseconds: 4000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                              ),
                                            );
                                          }

                                          setState(() {});
                                        },
                                        width: double.infinity,
                                        height: 56.0,
                                        searchHintTextStyle:
                                            FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMediumFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMediumFamily),
                                                ),
                                        searchTextStyle: FlutterFlowTheme.of(
                                                context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                        hintText: 'مکان تحویل',
                                        searchHintText: 'جستجوی مکان',
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        elevation: 2.0,
                                        borderColor: Colors.transparent,
                                        borderWidth: 2.0,
                                        borderRadius: 8.0,
                                        margin: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 4.0, 16.0, 4.0),
                                        hidesUnderline: true,
                                        isOverButton: true,
                                        isSearchable: true,
                                        isMultiSelect: false,
                                        labelText: '',
                                        labelTextStyle: FlutterFlowTheme.of(
                                                context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMediumFamily),
                                            ),
                                      );
                                    },
                                  ),
                                  if (FFAppState().localDates.isNotEmpty)
                                    FlutterFlowDropDown<String>(
                                      controller: _model.dateValueController ??=
                                          FormFieldController<String>(null),
                                      options: List<String>.from(FFAppState()
                                          .localDates
                                          .map((e) => e.date)
                                          .toList()),
                                      optionLabels: FFAppState()
                                          .localDates
                                          .map((e) => e.dateString)
                                          .toList(),
                                      onChanged: (val) async {
                                        setState(() => _model.dateValue = val);
                                        FFAppState().localTimes = [];
                                        setState(() {});
                                        _model.apiResultr7rCopy2 =
                                            await BaseGroup.localTimesCall.call(
                                          local: _model.localValue?.toString(),
                                          date: _model.dateValue,
                                        );

                                        if ((_model
                                                .apiResultr7rCopy2?.succeeded ??
                                            true)) {
                                          _model.convertedLocalTimes =
                                              await actions.convertDates(
                                            ((_model.apiResultr7rCopy2
                                                                ?.jsonBody ??
                                                            '')
                                                        .toList()
                                                        .map<LocalTimeStruct?>(
                                                            LocalTimeStruct
                                                                .maybeFromMap)
                                                        .toList()
                                                    as Iterable<
                                                        LocalTimeStruct?>)
                                                .withoutNulls
                                                .toList(),
                                          );
                                          FFAppState().localTimes = _model
                                              .convertedLocalTimes!
                                              .toList()
                                              .cast<LocalTimeStruct>();
                                          setState(() {});
                                        } else {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'وقوع خطا',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                              ),
                                              duration:
                                                  const Duration(milliseconds: 4000),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                            ),
                                          );
                                        }

                                        setState(() {});
                                      },
                                      width: double.infinity,
                                      height: 56.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                      hintText: 'تاریخ',
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      elevation: 2.0,
                                      borderColor: Colors.transparent,
                                      borderWidth: 2.0,
                                      borderRadius: 8.0,
                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 4.0, 16.0, 4.0),
                                      hidesUnderline: true,
                                      isOverButton: true,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                      labelText: '',
                                      labelTextStyle: FlutterFlowTheme.of(
                                              context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily),
                                          ),
                                    ),
                                  if (FFAppState().localTimes.isNotEmpty)
                                    FlutterFlowDropDown<int>(
                                      controller: _model.timeValueController ??=
                                          FormFieldController<int>(null),
                                      options: List<int>.from(FFAppState()
                                          .localTimes
                                          .map((e) => e.id)
                                          .toList()),
                                      optionLabels: FFAppState()
                                          .localTimes
                                          .map((e) => e.timeString)
                                          .toList(),
                                      onChanged: (val) => setState(
                                          () => _model.timeValue = val),
                                      width: double.infinity,
                                      height: 56.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                      hintText: 'زمان',
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      elevation: 2.0,
                                      borderColor: Colors.transparent,
                                      borderWidth: 2.0,
                                      borderRadius: 8.0,
                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 4.0, 16.0, 4.0),
                                      hidesUnderline: true,
                                      isOverButton: true,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                      labelText: '',
                                      labelTextStyle: FlutterFlowTheme.of(
                                              context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily),
                                          ),
                                    ),
                                ].divide(const SizedBox(height: 16.0)),
                              ),
                            if (widget.type == DeliveryType.walkCenter)
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FutureBuilder<ApiCallResponse>(
                                    future: BaseGroup.localsListCall.call(
                                      type: widget.type?.name,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      final walkLocalLocalsListResponse =
                                          snapshot.data!;
                                      return FlutterFlowDropDown<int>(
                                        controller:
                                            _model.walkLocalValueController ??=
                                                FormFieldController<int>(null),
                                        options: List<int>.from(BaseGroup
                                            .localsListCall
                                            .data(
                                              walkLocalLocalsListResponse
                                                  .jsonBody,
                                            )!
                                            .map((e) =>
                                                LocalStruct.maybeFromMap(e)?.id)
                                            .withoutNulls
                                            .toList()),
                                        optionLabels: BaseGroup.localsListCall
                                            .data(
                                              walkLocalLocalsListResponse
                                                  .jsonBody,
                                            )!
                                            .map((e) =>
                                                LocalStruct.maybeFromMap(e)
                                                    ?.address)
                                            .withoutNulls
                                            .toList(),
                                        onChanged: (val) async {
                                          setState(() =>
                                              _model.walkLocalValue = val);
                                          FFAppState().localDates = [];
                                          FFAppState().localTimes = [];
                                          setState(() {});
                                          _model.localTimeResult =
                                              await BaseGroup.localTimesCall
                                                  .call(
                                            local: _model.walkLocalValue
                                                ?.toString(),
                                          );

                                          if ((_model
                                                  .localTimeResult?.succeeded ??
                                              true)) {
                                            _model.convertedWalkTimes =
                                                await actions.convertDates(
                                              ((_model.localTimeResult
                                                                  ?.jsonBody ??
                                                              '')
                                                          .toList()
                                                          .map<LocalTimeStruct?>(
                                                              LocalTimeStruct
                                                                  .maybeFromMap)
                                                          .toList()
                                                      as Iterable<
                                                          LocalTimeStruct?>)
                                                  .withoutNulls
                                                  .toList(),
                                            );
                                            FFAppState().localTimes = _model
                                                .convertedWalkTimes!
                                                .toList()
                                                .cast<LocalTimeStruct>();
                                            setState(() {});
                                          } else {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'وقوع خطا',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                  ),
                                                ),
                                                duration: const Duration(
                                                    milliseconds: 4000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                              ),
                                            );
                                          }

                                          setState(() {});
                                        },
                                        width: double.infinity,
                                        height: 56.0,
                                        searchHintTextStyle:
                                            FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMediumFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMediumFamily),
                                                ),
                                        searchTextStyle: FlutterFlowTheme.of(
                                                context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                        hintText: 'مکان تحویل',
                                        searchHintText: 'جستجوی مکان',
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        elevation: 2.0,
                                        borderColor: Colors.transparent,
                                        borderWidth: 2.0,
                                        borderRadius: 8.0,
                                        margin: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 4.0, 16.0, 4.0),
                                        hidesUnderline: true,
                                        isOverButton: true,
                                        isSearchable: true,
                                        isMultiSelect: false,
                                        labelText: '',
                                        labelTextStyle: FlutterFlowTheme.of(
                                                context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMediumFamily),
                                            ),
                                      );
                                    },
                                  ),
                                  if (FFAppState().localTimes.isNotEmpty)
                                    FlutterFlowDropDown<int>(
                                      controller:
                                          _model.walkTimeValueController ??=
                                              FormFieldController<int>(null),
                                      options: List<int>.from(FFAppState()
                                          .localTimes
                                          .map((e) => e.id)
                                          .toList()),
                                      optionLabels: FFAppState()
                                          .localTimes
                                          .map((e) => e.timeString)
                                          .toList(),
                                      onChanged: (val) => setState(
                                          () => _model.walkTimeValue = val),
                                      width: double.infinity,
                                      height: 56.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                      hintText: 'زمان',
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      elevation: 2.0,
                                      borderColor: Colors.transparent,
                                      borderWidth: 2.0,
                                      borderRadius: 8.0,
                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 4.0, 16.0, 4.0),
                                      hidesUnderline: true,
                                      isOverButton: true,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                      labelText: '',
                                      labelTextStyle: FlutterFlowTheme.of(
                                              context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily),
                                          ),
                                    ),
                                ].divide(const SizedBox(height: 16.0)),
                              ),
                          ].divide(const SizedBox(height: 16.0)),
                        ),
                      ),
                    ),
                  ),
                  if ((_model.walkTimeValue != null) ||
                      (_model.timeValue != null))
                    Container(
                      decoration: const BoxDecoration(),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 16.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            _model.apiResultdie =
                                await ProfileGroup.upsertLocalTimeCall.call(
                              localTime: widget.type == DeliveryType.localCenter
                                  ? _model.timeValue
                                  : _model.walkTimeValue,
                              jwt: currentAuthenticationToken,
                            );

                            if ((_model.apiResultdie?.succeeded ?? true)) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'ثبت شد',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: const Duration(milliseconds: 2000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              );

                              context.pushNamed('narration');
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'وقوع خطا',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: const Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).error,
                                ),
                              );
                            }

                            setState(() {});
                          },
                          text: 'ثبت زمان',
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
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
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
