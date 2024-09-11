
class EndPoints {
  const EndPoints._();


  /// base url
  static const baseUrl = 'http://192.168.1.42:3000/api/v1';

 /// login end points
 static const login = '$baseUrl/login'; // GET
 static const checkEmailExistance = '$login/checkEmailExistance'; // GET
 static const loginTrace = login; // POST

 /// user end points
 static const user = '$baseUrl/user';
 
 static const createUser = user; // POST




}