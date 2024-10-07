import '../data/data_sources/homepage_datasource.dart';
import '../data/models/current_location_model.dart';

sealed class IHomepageRepo{
  Future<void> saveCurrentLocation({required CurrentLocationModel currentLocation});
}

class HomepageRepo implements IHomepageRepo{
  final IHomepageDatasource _homepageDatasource;

  HomepageRepo(this._homepageDatasource);
  @override
  Future<void> saveCurrentLocation({required CurrentLocationModel currentLocation}) async{
    return _homepageDatasource.saveCurrentLocation(currentLocation: currentLocation);
  }
  
}