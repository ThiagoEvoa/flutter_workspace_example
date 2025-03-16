// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feature_one_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FeatureOneListModel {

 List<FeatureOneModel> get list;
/// Create a copy of FeatureOneListModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeatureOneListModelCopyWith<FeatureOneListModel> get copyWith => _$FeatureOneListModelCopyWithImpl<FeatureOneListModel>(this as FeatureOneListModel, _$identity);

  /// Serializes this FeatureOneListModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeatureOneListModel&&const DeepCollectionEquality().equals(other.list, list));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(list));

@override
String toString() {
  return 'FeatureOneListModel(list: $list)';
}


}

/// @nodoc
abstract mixin class $FeatureOneListModelCopyWith<$Res>  {
  factory $FeatureOneListModelCopyWith(FeatureOneListModel value, $Res Function(FeatureOneListModel) _then) = _$FeatureOneListModelCopyWithImpl;
@useResult
$Res call({
 List<FeatureOneModel> list
});




}
/// @nodoc
class _$FeatureOneListModelCopyWithImpl<$Res>
    implements $FeatureOneListModelCopyWith<$Res> {
  _$FeatureOneListModelCopyWithImpl(this._self, this._then);

  final FeatureOneListModel _self;
  final $Res Function(FeatureOneListModel) _then;

/// Create a copy of FeatureOneListModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? list = null,}) {
  return _then(_self.copyWith(
list: null == list ? _self.list : list // ignore: cast_nullable_to_non_nullable
as List<FeatureOneModel>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _FeatureOneListModel implements FeatureOneListModel {
  const _FeatureOneListModel({required final  List<FeatureOneModel> list}): _list = list;
  factory _FeatureOneListModel.fromJson(Map<String, dynamic> json) => _$FeatureOneListModelFromJson(json);

 final  List<FeatureOneModel> _list;
@override List<FeatureOneModel> get list {
  if (_list is EqualUnmodifiableListView) return _list;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_list);
}


/// Create a copy of FeatureOneListModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeatureOneListModelCopyWith<_FeatureOneListModel> get copyWith => __$FeatureOneListModelCopyWithImpl<_FeatureOneListModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeatureOneListModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeatureOneListModel&&const DeepCollectionEquality().equals(other._list, _list));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_list));

@override
String toString() {
  return 'FeatureOneListModel(list: $list)';
}


}

/// @nodoc
abstract mixin class _$FeatureOneListModelCopyWith<$Res> implements $FeatureOneListModelCopyWith<$Res> {
  factory _$FeatureOneListModelCopyWith(_FeatureOneListModel value, $Res Function(_FeatureOneListModel) _then) = __$FeatureOneListModelCopyWithImpl;
@override @useResult
$Res call({
 List<FeatureOneModel> list
});




}
/// @nodoc
class __$FeatureOneListModelCopyWithImpl<$Res>
    implements _$FeatureOneListModelCopyWith<$Res> {
  __$FeatureOneListModelCopyWithImpl(this._self, this._then);

  final _FeatureOneListModel _self;
  final $Res Function(_FeatureOneListModel) _then;

/// Create a copy of FeatureOneListModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? list = null,}) {
  return _then(_FeatureOneListModel(
list: null == list ? _self._list : list // ignore: cast_nullable_to_non_nullable
as List<FeatureOneModel>,
  ));
}


}

// dart format on
