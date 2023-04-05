
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:songmaker/core/locator/service_locator.dart';
import 'package:songmaker/core/remote/dio_options.dart';
import 'package:songmaker/core/remote/interceptors.dart';
@singleton
class RemoteConfig {

  DioOptions options = locator<DioOptions>();

  Dio? dio;

  RemoteConfig(){
    dio =  Dio(options.options);
    dio?.interceptors.add(locator<MyDioInterceptor>());
  }
}