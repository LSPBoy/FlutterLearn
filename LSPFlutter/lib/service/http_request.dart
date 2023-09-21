import 'package:dio/dio.dart';
import 'config.dart';

class HttpRequest {
  static final BaseOptions baseOptions = BaseOptions(baseUrl: HttpConfig.baseURL, connectTimeout: HttpConfig.timeout);

  static final Dio dio = Dio();

  static Future<T> request<T>(String url, {
                      String method = "get",
                      Map<String, dynamic>? params,
                      Interceptor? interceptor}) async {
    //1.创建单独配置
    final options = Options(method: method);

    //全局拦截器
    InterceptorsWrapper interWrapper = InterceptorsWrapper(
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
        print("请求拦截");
        return handler.next(options);
      },
      onResponse: (Response response, ResponseInterceptorHandler handler) {
        print("响应拦截");
        return handler.next(response);
      },
      onError: (DioException e, ErrorInterceptorHandler handler) {
        print("错误拦截");
        return handler.next(e);
      },
    );
    List<Interceptor> inters = [interWrapper];
    //请求单独拦截
    if (interceptor != null) {
      inters.add(interceptor);
    }

    dio.interceptors.addAll(inters);

    //2.发送网络请求
    try {
      Response response = await dio.request(url, queryParameters: params, options: options);
      return response.data;
    } on DioException catch(e) {
      return Future.error(e.error ?? Error());
    }
  }

}