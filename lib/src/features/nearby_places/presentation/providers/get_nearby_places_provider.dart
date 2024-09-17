

import 'dart:async';

import 'package:backmate/src/services/providers/map_service_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../data/models/place_model.dart';

final getNearbyPlacesProvider = AsyncNotifierProvider<GetNearbyPlacesP,List<PlaceModel>>(() => GetNearbyPlacesP());


class GetNearbyPlacesP  extends AsyncNotifier<List<PlaceModel>>{
  @override
  FutureOr<List<PlaceModel>> build() {
    return [];
  }

  Future<List<Marker>> getMarkersOfNearbyPlaces({required double lat, required double lng,required int radius,required String type})async{
     state = const AsyncLoading();
    try{
       final places = await ref.read(mapServiceProvider).getNearbyPlaces(lat: lat, lng: lng, radius: radius, type: type);
        final markers = places.map((e) => Marker(markerId: MarkerId(e.placeId),position: LatLng(e.geometry.location.lat, e.geometry.location.lng),infoWindow: InfoWindow(title: e.name,snippet: e.vicinity))).toList();
       state = AsyncData(places);
       return markers;
    }catch(e){
      state = AsyncError(e,StackTrace.current);
    }
    return [];
  }

  Future<List<PlaceModel>> getNearbyPlaces({required double lat, required double lng,required int radius,required String type}) async{
    state = const AsyncLoading();
    try{
       final places = await ref.read(mapServiceProvider).getNearbyPlaces(lat: lat, lng: lng, radius: radius, type: type);
       state = AsyncData(places);
       print("places length ${places.length}");
       return places;
    }catch(e){
      state = AsyncError(e,StackTrace.current);
      if(kDebugMode){
        rethrow;
      }
    }
    return [];
   
  }
  
}