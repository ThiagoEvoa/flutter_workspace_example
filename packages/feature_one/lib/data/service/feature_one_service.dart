import 'package:package_core/package_core.dart';

import '../model/feature_one_model.dart';
import '../repository/feature_one_repository.dart';

part 'feature_one_service.g.dart';

@riverpod
FeatureOneService featureOneRepository(Ref ref) =>
    FeatureOneService(ref.read(dioProvider));

@RestApi(baseUrl: '')
abstract class FeatureOneService implements FeatureOneRepository {
  factory FeatureOneService(Dio dio) = _FeatureOneService;

  @override
  @GET('/hello-world')
  Future<FeatureOneModel> retrieveHelloWorld();
}
