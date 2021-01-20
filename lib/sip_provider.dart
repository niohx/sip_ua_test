import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sip_ua/sip_ua.dart';
import 'package:flutter/material.dart';
//import 'package:sip_ua_example/call_model.dart';

enum Call_State {
  initiate,
  registerfailed,
  registered,
  ringing,
  calling,
  waiting
}

final callStateProvider = StateNotifierProvider<CallStateProvider>((ref) {
  return CallStateProvider();
});

class CallStateProvider extends StateNotifier<Call_State>
    implements SipUaHelperListener {
  CallStateProvider() : super(Call_State.initiate) {
    print('init!');
    _initialize();
  }
  final SIPUAHelper helper = SIPUAHelper();

  void _initialize() {
    print('init started');
    UaSettings _settings = UaSettings();
    _settings.webSocketUrl = 'ws://192.168.86.228:8088/asterisk/ws';
    _settings.webSocketSettings.allowBadCertificate = true;
    _settings.webSocketSettings.userAgent = 'Dart/2.8 (dart:io) for OpenSIPS.';

    _settings.uri = "sip:400@192.168.86.228:5060";
    _settings.authorizationUser = "400";
    _settings.password = "400";
    _settings.displayName = "yohei";
    _settings.userAgent = 'Dart SIP Client v1.0.0';
    _settings.dtmfMode = DtmfMode.RFC2833;
    helper.addSipUaHelperListener(this);
    helper.start(_settings);

    state = Call_State.registered;
  }

  @override
  void callStateChanged(Call call, CallState callstate) {
    print("hmmm...${callstate.state}");
    if (callstate.state == CallStateEnum.PROGRESS) {
      print('answer');
      call.answer(helper.buildCallOptions());
    }
  }

  @override
  void transportStateChanged(TransportState state) {}

  @override
  void registrationStateChanged(RegistrationState state) {}

  @override
  void onNewMessage(SIPMessageRequest msg) {}

  void call(String dest) {
    helper.call(dest, true);
    state = Call_State.calling;
  }

  void stopCall() {
    helper.stop();
    state = Call_State.registered;
  }
}
