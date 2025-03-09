// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feature_one_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FeatureOneModel {

 String get sid;
/// Create a copy of FeatureOneModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeatureOneModelCopyWith<FeatureOneModel> get copyWith => _$FeatureOneModelCopyWithImpl<FeatureOneModel>(this as FeatureOneModel, _$identity);

  /// Serializes this FeatureOneModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeatureOneModel&&(identical(other.sid, sid) || other.sid == sid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sid);

@override
String toString() {
  return 'FeatureOneModel(sid: $sid)';
}


}

/// @nodoc
abstract mixin class $FeatureOneModelCopyWith<$Res>  {
  factory $FeatureOneModelCopyWith(FeatureOneModel value, $Res Function(FeatureOneModel) _then) = _$FeatureOneModelCopyWithImpl;
@useResult
$Res call({
 String sid
});




}
/// @nodoc
class _$FeatureOneModelCopyWithImpl<$Res>
    implements $FeatureOneModelCopyWith<$Res> {
  _$FeatureOneModelCopyWithImpl(this._self, this._then);

  final FeatureOneModel _self;
  final $Res Function(FeatureOneModel) _then;

/// Create a copy of FeatureOneModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sid = null,}) {
  return _then(_self.copyWith(
sid: null == sid ? _self.sid : sid // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _FeatureOneModel implements FeatureOneModel {
  const _FeatureOneModel({required this.sid});
  factory _FeatureOneModel.fromJson(Map<String, dynamic> json) => _$FeatureOneModelFromJson(json);

@override final  String sid;

/// Create a copy of FeatureOneModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeatureOneModelCopyWith<_FeatureOneModel> get copyWith => __$FeatureOneModelCopyWithImpl<_FeatureOneModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeatureOneModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeatureOneModel&&(identical(other.sid, sid) || other.sid == sid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sid);

@override
String toString() {
  return 'FeatureOneModel(sid: $sid)';
}


}

/// @nodoc
abstract mixin class _$FeatureOneModelCopyWith<$Res> implements $FeatureOneModelCopyWith<$Res> {
  factory _$FeatureOneModelCopyWith(_FeatureOneModel value, $Res Function(_FeatureOneModel) _then) = __$FeatureOneModelCopyWithImpl;
@override @useResult
$Res call({
 String sid
});




}
/// @nodoc
class __$FeatureOneModelCopyWithImpl<$Res>
    implements _$FeatureOneModelCopyWith<$Res> {
  __$FeatureOneModelCopyWithImpl(this._self, this._then);

  final _FeatureOneModel _self;
  final $Res Function(_FeatureOneModel) _then;

/// Create a copy of FeatureOneModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sid = null,}) {
  return _then(_FeatureOneModel(
sid: null == sid ? _self.sid : sid // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
