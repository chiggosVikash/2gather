import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';


class DeviceInfoService{
  final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();

  /// Retrieves the device ID based on the platform.
  /// 
  /// This method checks if the platform is Android or iOS and returns the 
  /// corresponding device ID. For Android, it returns the display information, 
  /// and for iOS, it returns the model information. If the platform is neither 
  /// Android nor iOS, it returns "Unknown".
  /// 
  /// Returns:
  ///   A [Future] that completes with the device ID as a [String].
  /// 
  /// Throws:
  ///   Any exceptions that occur during the retrieval of device information.
  Future<String> getDeviceId() async {
   
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfoPlugin.androidInfo;
      return androidInfo.display;
    } 
    if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfoPlugin.iosInfo;
      return iosInfo.model;
    }
    return "Unknown";
  }

  /// Retrieves the device name based on the platform (Android or iOS).
  ///
  /// This method checks the current platform and fetches the device name
  /// accordingly. For Android, it returns the model name, and for iOS, it
  /// returns the device name. If the platform is neither Android nor iOS,
  /// it returns "Unknown".
  ///
  /// Returns:
  ///   A [Future<String>] that completes with the device name.
  Future<String> getDeviceName() async{
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfoPlugin.androidInfo;
      return androidInfo.model;
    } 
    if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfoPlugin.iosInfo;
      return iosInfo.name;
    }
    return "Unknown"; 
  }

  /// Retrieves the device's IP address.
  ///
  /// This method attempts to fetch the IP address of the device by listing all
  /// network interfaces and checking their addresses. It prioritizes IPv4, IPv6,
  /// and Unix address types in that order. If an address is found, it is returned
  /// immediately. If no address is found, "NA" is returned. In case of an error,
  /// "Unknown" is returned unless the application is in debug mode, in which case
  /// the error is rethrown.
  ///
  /// Returns:
  ///   A [Future<String>] that completes with the device's IP address or an error
  ///   message.
  Future<String> getDeviceIp()async{
    try{
      String ip = "NA";
      final networkInterfaces = await NetworkInterface.list();

      for(var networkInterface in networkInterfaces){
        for(var address in networkInterface.addresses){
          if(address.type == InternetAddressType.IPv4){
            ip = address.address;
            return ip;
          }
          if(address.type == InternetAddressType.IPv6){
            ip = address.address;
            return ip;
          } 
          if(address.type == InternetAddressType.unix){
            ip = address.address;
            return ip;
          }
          return ip;
        }
      }
      return ip;
    }catch(e){
      if(kDebugMode){
        rethrow;
      }
      return "Unknown";
    }
  
  }

}