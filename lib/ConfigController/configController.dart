import 'package:e_commerce_2/ApiCalls/apiService.dart';
import 'package:e_commerce_2/response/configResponse.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';








class ConfigController extends GetxController {










  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    appColors();

  }
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }
  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }



  late ConfigResponse  configResponse;
  final box = GetStorage();


  var primaryColor = '';
  var secondaryColor = '';
  var tertiaryColor = '';
  var buttonColor  = '';
  var cardColor = '';
  var textColor = '';


  appColors() async {

    final dio = Dio();
    final apiService = ApiService(dio);
    dio.interceptors.add(LogInterceptor(responseBody: true,requestBody: true));

    final response = await apiService.fetchColors();
    configResponse = response;
    print(response);


    if(configResponse.status == true){



      primaryColor = response.data!.colors!.primaryColor!;
      // box.write("priColor", primaryColor);
      // var priColors = await box.read("priColor");
      secondaryColor = response.data!.colors!.secondaryColor!;
      tertiaryColor = response.data!.colors!.tertiaryColor!;
      textColor = response.data!.colors!.textColor!;
      cardColor = response.data!.colors!.cardColor!;
      buttonColor = response.data!.colors!.buttonColor!;

      print(primaryColor);

    }
  }
}