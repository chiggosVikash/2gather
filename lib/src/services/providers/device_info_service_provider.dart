
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../device_info_service.dart';

final deviceInfoServiceProvider = Provider<DeviceInfoService>((ref) {
  return DeviceInfoService();
});