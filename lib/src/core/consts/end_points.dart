
class EndPoints {
  const EndPoints._();


  /// base url
  static const baseUrl = '192.168.1.42:3000';

 /// login end points
 static const login = '$baseUrl/login'; // GET
 static const checkEmailExistance = '$login/checkEmailExistance'; // GET

}