import 'package:e_commerce_2/constants/constants.dart';
import 'package:e_commerce_2/response/configResponse.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
part 'apiService.g.dart';







@RestApi(baseUrl: Constants.BASE_URL)
abstract class ApiService {
  factory ApiService (Dio dio ,{String baseUrl}) = _ApiService;

  final dio = Dio();
  static ApiService create () {
    final dio = Dio();
    dio.interceptors.add(LogInterceptor(requestBody: true,responseBody: true));

    return ApiService(dio);
  }



  @GET(Constants.CONFIG)
  Future<ConfigResponse> fetchColors();








//@Query("?ui_type=UBER") String uiType);
}