// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'call_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CallModel _$CallModelFromJson(Map<String, dynamic> json) {
  return _CallModel.fromJson(json);
}

/// @nodoc
class _$CallModelTearOff {
  const _$CallModelTearOff();

// ignore: unused_element
  _CallModel call({CallState callState}) {
    return _CallModel(
      callState: callState,
    );
  }

// ignore: unused_element
  CallModel fromJson(Map<String, Object> json) {
    return CallModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CallModel = _$CallModelTearOff();

/// @nodoc
mixin _$CallModel {
  CallState get callState;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CallModelCopyWith<CallModel> get copyWith;
}

/// @nodoc
abstract class $CallModelCopyWith<$Res> {
  factory $CallModelCopyWith(CallModel value, $Res Function(CallModel) then) =
      _$CallModelCopyWithImpl<$Res>;
  $Res call({CallState callState});
}

/// @nodoc
class _$CallModelCopyWithImpl<$Res> implements $CallModelCopyWith<$Res> {
  _$CallModelCopyWithImpl(this._value, this._then);

  final CallModel _value;
  // ignore: unused_field
  final $Res Function(CallModel) _then;

  @override
  $Res call({
    Object callState = freezed,
  }) {
    return _then(_value.copyWith(
      callState:
          callState == freezed ? _value.callState : callState as CallState,
    ));
  }
}

/// @nodoc
abstract class _$CallModelCopyWith<$Res> implements $CallModelCopyWith<$Res> {
  factory _$CallModelCopyWith(
          _CallModel value, $Res Function(_CallModel) then) =
      __$CallModelCopyWithImpl<$Res>;
  @override
  $Res call({CallState callState});
}

/// @nodoc
class __$CallModelCopyWithImpl<$Res> extends _$CallModelCopyWithImpl<$Res>
    implements _$CallModelCopyWith<$Res> {
  __$CallModelCopyWithImpl(_CallModel _value, $Res Function(_CallModel) _then)
      : super(_value, (v) => _then(v as _CallModel));

  @override
  _CallModel get _value => super._value as _CallModel;

  @override
  $Res call({
    Object callState = freezed,
  }) {
    return _then(_CallModel(
      callState:
          callState == freezed ? _value.callState : callState as CallState,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CallModel implements _CallModel {
  const _$_CallModel({this.callState});

  factory _$_CallModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CallModelFromJson(json);

  @override
  final CallState callState;

  @override
  String toString() {
    return 'CallModel(callState: $callState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CallModel &&
            (identical(other.callState, callState) ||
                const DeepCollectionEquality()
                    .equals(other.callState, callState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(callState);

  @JsonKey(ignore: true)
  @override
  _$CallModelCopyWith<_CallModel> get copyWith =>
      __$CallModelCopyWithImpl<_CallModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CallModelToJson(this);
  }
}

abstract class _CallModel implements CallModel {
  const factory _CallModel({CallState callState}) = _$_CallModel;

  factory _CallModel.fromJson(Map<String, dynamic> json) =
      _$_CallModel.fromJson;

  @override
  CallState get callState;
  @override
  @JsonKey(ignore: true)
  _$CallModelCopyWith<_CallModel> get copyWith;
}
