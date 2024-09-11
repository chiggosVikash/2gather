import 'package:backmate/src/core/consts/end_points.dart';
import 'package:backmate/src/error_handlers/user_error_handler.dart';

import '/src/services/network_call_service.dart';
import '/src/features/sign_up/data/models/user_model.dart';

sealed class SignUpDataSourceI {
  Future<String> signUp(UserModel userModel);
}

class SignUpDataSource implements SignUpDataSourceI {

  final NetworkCall networkCall;

  SignUpDataSource(this.networkCall);

  @override
  Future<String> signUp(UserModel userModel) async{
    final response = await networkCall.post(EndPoints.createUser, userModel.toJson());
    if(response.statusCode != 200){
      throw UserCreationError(errorMessage: "User creation failed");
    }
    return response.data['userId'];
  }

}