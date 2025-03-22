import '../package_core.dart';

part 'api_provider.g.dart';

//https://github.com/dart-lang/build/issues/3798
//https://github.com/rrousselGit/riverpod/discussions/3997

@riverpod
Dio dio(Ref dioRef) {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: const String.fromEnvironment('BASE_URL'),
      headers: {},
      connectTimeout: Duration(seconds: 30),
      receiveTimeout: Duration(seconds: 30),
      contentType: Headers.jsonContentType,
      responseType: ResponseType.json,
    ),
  );

  dio.interceptors.add(PrettyDioLogger(requestHeader: true, requestBody: true));
  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) {
        options.headers = {'Accept': '*/*'};
        return handler.next(options);
      },
      onResponse: (response, handler) {
        return handler.next(response);
      },
      onError: (error, handler) {
        return handler.next(error);
      },
    ),
  );
  return dio;
}
