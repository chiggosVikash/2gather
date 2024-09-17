
import 'package:backmate/src/core/consts/end_points.dart';
import 'package:backmate/src/error_handlers/map_service_error_handler.dart';
import 'package:backmate/src/services/network_call_service.dart';

import '/src/features/nearby_places/data/models/place_model.dart';

sealed class IMapService {
  Future<List<PlaceModel>> getNearbyPlaces({required double lat, required double lng,required int radius,required String type});
  
}

class MapService implements IMapService{
  final NetworkCall _networkCall;
  MapService(this._networkCall);
  @override
  Future<List<PlaceModel>> getNearbyPlaces({required double lat, required double lng, required int radius, required String type}) async{
    final response = await _networkCall.post(EndPoints.getNearbyPlaces, {"lat":lat,"lng":lng,"radius":radius,"type":type});
    // print("Nearby Places response ${response.data}");
    if(response.statusCode == 200){
      return List<PlaceModel>.from(response.data["nearbyPlaces"].map((x) => PlaceModel.fromJson(x)));
    }
    throw FailedTOGetNearbyPlacesError(response.data["message"]);
  }

}