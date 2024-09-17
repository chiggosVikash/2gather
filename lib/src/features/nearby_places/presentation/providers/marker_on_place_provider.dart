

import 'package:backmate/src/features/nearby_places/data/models/place_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

final markerOnPlaceProvider = NotifierProvider.family.autoDispose<MarkerOnPlaceP,List<Marker>,List<PlaceModel>>(() => MarkerOnPlaceP());

class MarkerOnPlaceP extends AutoDisposeFamilyNotifier<List<Marker>,List<PlaceModel>>{
  @override
  List<Marker> build(List<PlaceModel> arg) {
    return arg.map((e) => Marker(markerId: MarkerId(e.placeId),position: LatLng(e.geometry.location.lat, e.geometry.location.lng),infoWindow: InfoWindow(title: e.name,snippet: e.vicinity))).toList();
    
  }
}