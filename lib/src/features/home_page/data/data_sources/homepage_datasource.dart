import 'package:backmate/src/core/consts/end_points.dart';
import 'package:backmate/src/services/network_call_service.dart';

import '../models/current_location_model.dart';

sealed class IHomepageDatasource{
  Future<void> saveCurrentLocation({required CurrentLocationModel currentLocation});
}

class HomepageDatasource implements IHomepageDatasource{
  final NetworkCallServiceI _networkCall;

  HomepageDatasource(this._networkCall);
  @override
  Future<void> saveCurrentLocation({required CurrentLocationModel currentLocation}) async{
    final response = await _networkCall.post(EndPoints.updateUserLocation, currentLocation.toJson());
    if(response.statusCode == 200){
      return;
    }
    
  }
  
}