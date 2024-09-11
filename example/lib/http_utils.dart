import 'package:dio/dio.dart';
import 'package:dio_log_fork/dio_log_fork.dart';

Dio dio = Dio();

initHttp() {
  dio.interceptors.add(DioLogForkInterceptor.DioLogForkInterceptor());
}

httpGet(String url) {
  dio.get(url, queryParameters: {"param": "Check pram"});
}
