
import 'package:geolocator/geolocator.dart';

sealed class IUserLocationService {
  Future<(double, double)> getLatestLocation();
  Future<bool> checkForLocationPermission();
  Future<bool> requestLocationPermission();
  Future<bool> checkForLocationServiceIsEnabled();
}

class UserLocationService implements IUserLocationService{
  @override
  Future<bool> checkForLocationPermission() async{
    final permission = await Geolocator.checkPermission();
    if(permission == LocationPermission.always || permission == LocationPermission.whileInUse){
      return true;
    } 
    return false;
  }

  @override
  Future<bool> checkForLocationServiceIsEnabled() async{
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    return serviceEnabled;
  }

  @override
  Future<(double, double)> getLatestLocation() async{
    final isLocationServiceEnabled = await checkForLocationServiceIsEnabled();
    if(!isLocationServiceEnabled){
      throw Exception('Location service is not enabled');
    }

    final permission = await checkForLocationPermission();
    if(!permission){
      final permissionGranted = await requestLocationPermission();
      if(!permissionGranted){
        throw Exception('Location permission not granted');
      }
    }

    final position = await Geolocator.getCurrentPosition();
    return (position.latitude, position.longitude);
    
  }

  @override
  Future<bool> requestLocationPermission() async{
    final permission = await Geolocator.requestPermission();
    if(permission == LocationPermission.always || permission == LocationPermission.whileInUse){
      return true;
    }

    final permissionAttempt = await Geolocator.requestPermission();
    if(permissionAttempt == LocationPermission.always || permissionAttempt == LocationPermission.whileInUse){
      return true;
    }
   
    if(permissionAttempt == LocationPermission.deniedForever){
      throw Exception('Location permission denied forever, please enable location permission in settings');
    }

    return false;


  }

}