import 'package:dio/dio.dart';
import 'package:dio_http2_adapter/dio_http2_adapter.dart';

final dio = Dio()
  ..httpClientAdapter = Http2Adapter(ConnectionManager(
    idleTimeout: const Duration(seconds: 60),
    // Ignore bad certificate
    onClientCreate: (_, clientSetting) =>
        clientSetting.onBadCertificate = (_) => true,
  ));
