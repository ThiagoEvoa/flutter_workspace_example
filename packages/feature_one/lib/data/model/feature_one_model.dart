import 'package:package_core/package_core.dart';

part 'feature_one_model.freezed.dart';
part 'feature_one_model.g.dart';

@freezed
abstract class FeatureOneModel with _$FeatureOneModel {
  const factory FeatureOneModel({required String sid}) = _FeatureOneModel;

  factory FeatureOneModel.fromJson(Map<String, dynamic> json) =>
      _$FeatureOneModelFromJson(json);
}
