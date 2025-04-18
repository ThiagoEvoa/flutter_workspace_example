import 'package:package_core/package_core.dart';

import '../../data/data.dart';

part 'feature_one_detail_view_model.g.dart';

@riverpod
class FeatureOneDetailViewModel extends _$FeatureOneDetailViewModel {
  @override
  AsyncValue<dynamic> build() =>
      AsyncValue.data(FeatureOneModel.initialState());

  void setFeatureOne(FeatureOneModel featureOneModel) async {
    state = AsyncValue.data(featureOneModel);
  }
}
