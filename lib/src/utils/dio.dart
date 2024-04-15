import 'package:dio/dio.dart';
import 'package:dio_http2_adapter/dio_http2_adapter.dart';

final dio = Dio(
  BaseOptions(
    headers: {
      "User-Agent":
          "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3",
    },
  ),
)..httpClientAdapter = Http2Adapter(
    ConnectionManager(
      idleTimeout: const Duration(seconds: 60),
      // Ignore bad certificate
      onClientCreate: (_, clientSetting) =>
          clientSetting.onBadCertificate = (_) => true,
    ),
  );
