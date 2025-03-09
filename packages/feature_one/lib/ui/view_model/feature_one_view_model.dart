import 'package:package_core/package_core.dart';

import '../../data/data.dart';

part 'feature_one_view_model.g.dart';

@riverpod
class FeatureOneViewModel extends _$FeatureOneViewModel {
  @override
  AsyncValue<dynamic> build() => const AsyncValue.data(dynamic);

  Future<void> retrieveHelloWorld() async {
    try {
      final repository = ref.read(featureOneRepositoryProvider);
      state = const AsyncLoading();
      final response = await repository.retrieveHelloWorld();
      state = AsyncValue.data(response);
    } catch (exception, stackTrace) {
      state = AsyncValue.error(exception, stackTrace);
    }
  }
}
