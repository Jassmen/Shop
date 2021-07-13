import 'package:shop_app/api_service/api_service.dart';
import 'lib/api_service/api_const.dart';

class ApiRepository{
  ApiService apiService;

  Future loginFetch({
    String? email,
    String? password}) async{
    return await apiService.postApi(LOGIN,
        data:{
          'email': email,
          'password': password

        });

  }

}