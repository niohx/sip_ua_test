import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sip_ua/sip_ua.dart';
import 'package:flutter/material.dart';

final sipUaHelper = Provider<SIPUAHelper>((ref) {
  final SIPUAHelper _uaHelper = SIPUAHelper();
  final settings = ref.watch(uaSettingsProvider).state;
  _uaHelper.start(settings);
  print('is it?');
  return _uaHelper;
});

final uaSettingsProvider = StateNotifierProvider((ref) {
  // _settings.webSocketUrl = "ws://localhost:8088/ws";
  // //_settings.webSocketSettings.extraHeaders = _wsExtraHeaders;
  // _settings.webSocketSettings.allowBadCertificate = true;
  // _settings.webSocketSettings.userAgent = 'Dart/2.8 (dart:io) for OpenSIPS.';

  // _settings.uri = "sip://localhost:5060";
  // _settings.authorizationUser = "500";
  // _settings.password = "500";
  // _settings.displayName = "yohei";
  // _settings.userAgent = 'Dart SIP Client v1.0.0';
  // _settings.dtmfMode = DtmfMode.RFC2833;

  // return _settings;
  return UASettingsProvider();
});

class UASettingsProvider extends StateNotifier<UaSettings> {
  UASettingsProvider() : super(UaSettings()) {
    print('init!@');
    _initialize();
  }
  void _initialize() {
    print('init started');
    UaSettings _settings;
    _settings.webSocketUrl = "ws://localhost:8088/ws";
    //_settings.webSocketSettings.extraHeaders = _wsExtraHeaders;
    _settings.webSocketSettings.allowBadCertificate = true;
    _settings.webSocketSettings.userAgent = 'Dart/2.8 (dart:io) for OpenSIPS.';

    _settings.uri = "sip://localhost:5060";
    _settings.authorizationUser = "500";
    _settings.password = "500";
    _settings.displayName = "yohei";
    _settings.userAgent = 'Dart SIP Client v1.0.0';
    _settings.dtmfMode = DtmfMode.RFC2833;

    state = _settings;
  }
}
