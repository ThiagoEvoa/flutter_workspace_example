// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature_one_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FeatureOneListModel _$FeatureOneListModelFromJson(Map<String, dynamic> json) =>
    _FeatureOneListModel(
      list:
          (json['list'] as List<dynamic>)
              .map((e) => FeatureOneModel.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$FeatureOneListModelToJson(
  _FeatureOneListModel instance,
) => <String, dynamic>{'list': instance.list};
