import 'package:dio/dio.dart';
import 'package:dio_log_sds/dio_log_sds.dart';

Dio dio = Dio();

initHttp() {
  dio.interceptors.add(SDSDioLogInterceptor());
}

httpGet(String url) {
  dio.get(url, queryParameters: {"param": "Check pram"});
}
