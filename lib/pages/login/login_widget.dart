import '/auth/auth_util.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/code_page/code_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'login_model.dart';
export 'login_model.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  late LoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Login'});
    _model.textController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).dark900,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(30.0, 40.0, 30.0, 135.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Masukan Nomor Anda',
                    style: FlutterFlowTheme.of(context).displaySmall.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                  ),
                  Text(
                    'HeyApp akan mengirim dan pesan SMS untuk memverifikasi nomor telepon Anda. Masukan kode negara dan nomor telepon',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 11.0,
                        ),
                  ),
                  FlutterFlowDropDown<String>(
                    controller: _model.dropDownController ??=
                        FormFieldController<String>(
                      _model.dropDownValue ??= '',
                    ),
                    options: ['+1', '+62'],
                    optionLabels: ['Amerika Serikat', 'Indonesia'],
                    onChanged: (val) =>
                        setState(() => _model.dropDownValue = val),
                    width: 215.0,
                    height: 35.0,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                        ),
                    hintText: 'Pilih Negara',
                    elevation: 2.0,
                    borderColor: Colors.transparent,
                    borderWidth: 0.0,
                    borderRadius: 0.0,
                    margin:
                        EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
                    hidesUnderline: true,
                    isSearchable: false,
                  ),
                  SizedBox(
                    width: 215.0,
                    child: Divider(
                      height: 0.0,
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 12.0),
                              child: Text(
                                _model.dropDownValue!,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 13.0,
                                    ),
                              ),
                            ),
                            SizedBox(
                              width: 55.0,
                              child: Divider(
                                height: 0.0,
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 150.0,
                            child: TextFormField(
                              controller: _model.textController,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'No Telp',
                                hintStyle:
                                    FlutterFlowTheme.of(context).bodySmall,
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 13.0,
                                  ),
                              textAlign: TextAlign.start,
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                      signed: true, decimal: true),
                              validator: _model.textControllerValidator
                                  .asValidator(context),
                              inputFormatters: [_model.textFieldMask],
                            ),
                          ),
                          SizedBox(
                            width: 150.0,
                            child: Divider(
                              height: 0.0,
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent('LOGIN_PAGE_LANJUT_BTN_ON_TAP');
                      logFirebaseEvent('Button_auth');
                      final phoneNumberVal =
                          '${_model.dropDownValue}${_model.textController.text}';
                      if (phoneNumberVal == null ||
                          phoneNumberVal.isEmpty ||
                          !phoneNumberVal.startsWith('+')) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                                'Phone Number is required and has to start with +.'),
                          ),
                        );
                        return;
                      }
                      await beginPhoneAuth(
                        context: context,
                        phoneNumber: phoneNumberVal,
                        onCodeSent: () async {
                          await Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CodePageWidget(),
                            ),
                            (r) => false,
                          );
                        },
                      );
                    },
                    text: 'Lanjut',
                    options: FFButtonOptions(
                      width: 130.0,
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).displaySmall.override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).tertiary,
                                fontSize: 16.0,
                                fontWeight: FontWeight.normal,
                              ),
                      elevation: 2.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: Text(
                      'Biaya SMS operator telepon mungin berlaku',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            fontSize: 11.0,
                          ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
