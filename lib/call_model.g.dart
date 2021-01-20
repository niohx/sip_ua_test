// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'call_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CallModel _$_$_CallModelFromJson(Map<String, dynamic> json) {
  return _$_CallModel(
    callState: _$enumDecodeNullable(_$CallStateEnumMap, json['callState']),
  );
}

Map<String, dynamic> _$_$_CallModelToJson(_$_CallModel instance) =>
    <String, dynamic>{
      'callState': _$CallStateEnumMap[instance.callState],
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$CallStateEnumMap = {
  CallState.initiate: 'initiate',
  CallState.registered: 'registered',
  CallState.ringing: 'ringing',
  CallState.calling: 'calling',
  CallState.waiting: 'waiting',
};
