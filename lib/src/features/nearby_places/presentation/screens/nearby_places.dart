
import 'dart:async';

import 'package:backmate/src/services/providers/user_location_service_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../providers/get_nearby_places_provider.dart';

class NearbyPlaces extends ConsumerStatefulWidget {
  static const routeName = 'nearby-places';
  static const routeAddress = '/nearby-places';
  const NearbyPlaces({super.key});

  @override
  ConsumerState<NearbyPlaces> createState() => _NearbyPlacesState();
}

class _NearbyPlacesState extends ConsumerState<NearbyPlaces> {

  final Completer<GoogleMapController> _controller = Completer();

  final _initialCameraPos = const CameraPosition(target: LatLng(0, 0));

  @override
  void initState() {
    super.initState();
    Future(()async{
      final latestLocation = await ref.read(userLocationServiceProvider).getLatestLocation();
      final cameraPos = CameraPosition(target: LatLng(latestLocation.$1, latestLocation.$2),zoom: 14.0,);
      await _controller.future.then((value) => value.animateCamera(CameraUpdate.newCameraPosition(cameraPos)));
      ref.read(getNearbyPlacesProvider.notifier).getNearbyPlaces(lat: latestLocation.$1, lng: latestLocation.$2, radius: 3000, type: 'restaurant');

    });
    
  }

  @override
  void dispose() {
    _controller.future.then((value) => value.dispose());
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nearby Places'),
      ),
      body: GoogleMap(
        onMapCreated: (controller) => _controller.complete(controller),
        initialCameraPosition: _initialCameraPos,
          markers: ref.watch(getNearbyPlacesProvider).maybeWhen(
            data: (places){
              return Set<Marker>.from(places.map((e) => Marker(markerId: MarkerId(e.placeId),position: LatLng(e.geometry.location.lat, e.geometry.location.lng),infoWindow: InfoWindow(title: e.name,snippet: e.vicinity))));
            },
            orElse: () => const {},
          ),
        ),
    );
  }
}