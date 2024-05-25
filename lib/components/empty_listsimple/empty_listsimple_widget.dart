import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'empty_listsimple_model.dart';
export 'empty_listsimple_model.dart';

class EmptyListsimpleWidget extends StatefulWidget {
  const EmptyListsimpleWidget({super.key});

  @override
  State<EmptyListsimpleWidget> createState() => _EmptyListsimpleWidgetState();
}

class _EmptyListsimpleWidgetState extends State<EmptyListsimpleWidget> {
  late EmptyListsimpleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyListsimpleModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        const FaIcon(
          FontAwesomeIcons.users,
          color: Color(0xFFCCCCCC),
          size: 72.0,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
          child: Text(
            'بدون هم گروهی',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Vazirmatn',
                  color: FlutterFlowTheme.of(context).secondaryText,
                  fontSize: 24.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                  useGoogleFonts: GoogleFonts.asMap().containsKey('Vazirmatn'),
                ),
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
          child: Text(
            'برای شرکت به صورت گروهی، همگروهیتون رو اضافه کنید',
            style: FlutterFlowTheme.of(context).labelMedium.override(
                  fontFamily: 'Vazirmatn',
                  color: FlutterFlowTheme.of(context).secondaryText,
                  fontSize: 14.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                  useGoogleFonts: GoogleFonts.asMap().containsKey('Vazirmatn'),
                ),
          ),
        ),
      ],
    );
  }
}
