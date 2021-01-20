import 'package:sip_ua/sip_ua.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'call_model.freezed.dart';
part 'call_model.g.dart';

enum CallState { initiate, registered, ringing, calling, waiting }

@freezed
abstract class CallModel with _$CallModel {
  const factory CallModel({
    CallState callState,
  }) = _CallModel;
  factory CallModel.fromJson(Map<String, dynamic> json) =>
      _$CallModelFromJson(json);
}
