import '../model/feature_one_model.dart';

abstract class FeatureOneRepository {
  Future<FeatureOneModel> retrieveHelloWorld();
}
