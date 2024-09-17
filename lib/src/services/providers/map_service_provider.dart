
import 'package:backmate/src/services/map_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'network_call_service_provider.dart';

final mapServiceProvider = Provider<IMapService>((ref){
  return MapService(ref.read(networkCallServiceProvider));
});

