import 'package:package_core/package_core.dart';

import '../data.dart';

part 'feature_one_service.g.dart';

@riverpod
FeatureOneService featureOneRepository(Ref ref) =>
    FeatureOneService(ref.read(dioProvider));

@RestApi(baseUrl: '')
abstract class FeatureOneService implements FeatureOneRepository {
  factory FeatureOneService(Dio dio) = _FeatureOneService;

  @override
  @GET('')
  Future<dynamic> retrieveFeatureOne();
}
