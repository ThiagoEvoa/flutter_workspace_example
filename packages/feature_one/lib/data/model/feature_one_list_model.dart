import 'package:package_core/package_core.dart';

import './feature_one_model.dart';

part 'feature_one_list_model.freezed.dart';
part 'feature_one_list_model.g.dart';

@freezed
abstract class FeatureOneListModel with _$FeatureOneListModel {
  const factory FeatureOneListModel({required List<FeatureOneModel> list}) =
      _FeatureOneListModel;

  factory FeatureOneListModel.fromJson(Map<String, dynamic> json) =>
      _$FeatureOneListModelFromJson(json);

  factory FeatureOneListModel.initialState() => FeatureOneListModel(list: []);
}
