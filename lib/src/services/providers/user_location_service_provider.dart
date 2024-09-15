
import 'package:backmate/src/services/user_location_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userLocationServiceProvider = Provider<IUserLocationService>((ref) => UserLocationService());