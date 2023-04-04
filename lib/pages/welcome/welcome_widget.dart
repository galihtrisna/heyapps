import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/login/login_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'welcome_model.dart';
export 'welcome_model.dart';

class WelcomeWidget extends StatefulWidget {
  const WelcomeWidget({Key? key}) : super(key: key);

  @override
  _WelcomeWidgetState createState() => _WelcomeWidgetState();
}

class _WelcomeWidgetState extends State<WelcomeWidget> {
  late WelcomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WelcomeModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Welcome'});
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 40.0, 20.0, 135.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Selamat Datang di HeyApp',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).displaySmall.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).primary,
                      ),
                ),
                Image.asset(
                  'assets/images/Rectangle_1.png',
                  width: 265.0,
                  height: 265.0,
                  fit: BoxFit.contain,
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Klik ',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontWeight: FontWeight.w600,
                            fontSize: 11.0,
                          ),
                        ),
                        Text(
                          '“Setuju dan lanutkan”',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            color: FlutterFlowTheme.of(context).primary,
                            fontWeight: FontWeight.w600,
                            fontSize: 11.0,
                          ),
                        ),
                        Text(
                          '  untuk menerima Ketentuan ',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontWeight: FontWeight.w600,
                            fontSize: 11.0,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
                      child: Text(
                        'Layanan dan Kebijakan Privasi HeyApp',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontWeight: FontWeight.w600,
                          fontSize: 11.0,
                        ),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'WELCOME_SETUJU_DAN_LANJUTKAN_BTN_ON_TAP');
                        logFirebaseEvent('Button_navigate_to');
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            duration: Duration(milliseconds: 300),
                            reverseDuration: Duration(milliseconds: 300),
                            child: LoginWidget(),
                          ),
                        );
                      },
                      text: 'Setuju dan Lanjutkan',
                      options: FFButtonOptions(
                        width: 305.0,
                        height: 50.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle: GoogleFonts.getFont(
                          'Poppins',
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                        elevation: 2.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
