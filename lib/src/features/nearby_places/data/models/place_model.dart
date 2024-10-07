class PlaceModel {
  String? businessStatus; // Made optional
  Geometry geometry;
  String icon;
  String iconBackgroundColor;
  String iconMaskBaseUri;
  String name;
  OpeningHours? openingHours;
  String placeId;
  PlusCode plusCode;
  double rating;
  String reference;
  String scope;
  List<String> types;
  int userRatingsTotal;
  String vicinity;

  PlaceModel({
    this.businessStatus, // Optional field
    required this.geometry,
    required this.icon,
    required this.iconBackgroundColor,
    required this.iconMaskBaseUri,
    required this.name,
    this.openingHours,
    required this.placeId,
    required this.plusCode,
    required this.rating,
    required this.reference,
    required this.scope,
    required this.types,
    required this.userRatingsTotal,
    required this.vicinity,
  });

  factory PlaceModel.fromJson(Map<String, dynamic> json) {
    return PlaceModel(
      businessStatus: json['business_status'],
      geometry: Geometry.fromJson(json['geometry']),
      icon: json['icon'],
      iconBackgroundColor: json['icon_background_color'],
      iconMaskBaseUri: json['icon_mask_base_uri'],
      name: json['name'],
      openingHours: OpeningHours.fromJson(json['opening_hours']??{}),
      placeId: json['place_id'],
      plusCode: PlusCode.fromJson(json['plus_code']),
      rating: json['rating'].toDouble(),
      reference: json['reference'],
      scope: json['scope'],
      types: List<String>.from(json['types']),
      userRatingsTotal: json['user_ratings_total'],
      vicinity: json['vicinity'],
    );
  }
}

class Geometry {
  Location location;
  Viewport viewport;

  Geometry({
    required this.location,
    required this.viewport,
  });

  factory Geometry.fromJson(Map<String, dynamic> json) {
    return Geometry(
      location: Location.fromJson(json['location']),
      viewport: Viewport.fromJson(json['viewport']),
    );
  }
}

class Location {
  double lat;
  double lng;

  Location({
    required this.lat,
    required this.lng,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      lat: json['lat'].toDouble(),
      lng: json['lng'].toDouble(),
    );
  }
}

class Viewport {
  Location northeast;
  Location southwest;

  Viewport({
    required this.northeast,
    required this.southwest,
  });

  factory Viewport.fromJson(Map<String, dynamic> json) {
    return Viewport(
      northeast: Location.fromJson(json['northeast']),
      southwest: Location.fromJson(json['southwest']),
    );
  }
}

class OpeningHours {
  bool openNow;

  OpeningHours({required this.openNow});

  factory OpeningHours.fromJson(Map<String, dynamic> json) {
    return OpeningHours(
      openNow: json['open_now'] ?? false,
    );
  }
}

class PlusCode {
  String compoundCode;
  String globalCode;

  PlusCode({
    required this.compoundCode,
    required this.globalCode,
  });

  factory PlusCode.fromJson(Map<String, dynamic> json) {
    return PlusCode(
      compoundCode: json['compound_code'],
      globalCode: json['global_code'],
    );
  }
}
