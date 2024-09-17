
class EndPoints {
  const EndPoints._();


  /// base url
  static const baseUrl = 'http://192.168.1.42:3000/api/v1';

 /// login end points
 static const login = '$baseUrl/login'; // GET
 static const checkEmailExistance = '$login/checkEmailExistance'; // GET
 static const loginTrace = login; // POST
 static const verifyToken = '$login/verifyToken'; // GET



 /// user end points
 static const user = '$baseUrl/user';
 static const createUser = user; // POST
 static const updateUserLocation = '$user/update-location'; // POST

// map services
static const mapServiceEndPoint = '$baseUrl/mapService';
static const getNearbyPlaces = '$mapServiceEndPoint/nearbyPlaces'; // POST




}