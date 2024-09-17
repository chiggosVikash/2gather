
sealed class MapServiceErrorHandler extends Error{
  final String message;
  MapServiceErrorHandler(this.message);
}

class FailedTOGetNearbyPlacesError extends MapServiceErrorHandler{
  final String errorMessage;
  FailedTOGetNearbyPlacesError(this.errorMessage) : super(errorMessage);
}

