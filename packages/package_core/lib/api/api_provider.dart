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
  // (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient() = () => HttpClient()
  //   ..badCertificateCallback = (X509Certificate cert, String host, int port) {
  //     return true;
  //   };
  // dio.httpClientAdapter = IOHttpClientAdapter(
  //   createHttpClient: () {
  //     // Don't trust any certificate just because their root cert is trusted.
  //     final HttpClient client = HttpClient(
  //       context: SecurityContext(withTrustedRoots: false),
  //     );
  //     // You can test the intermediate / root cert here. We just ignore it.
  //     client.badCertificateCallback =
  //         ((X509Certificate cert, String host, int port) => true);
  //     return client;
  //   },
  // );

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
