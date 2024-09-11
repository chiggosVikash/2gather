
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../network_call_service.dart';

final networkCallServiceProvider = Provider<NetworkCall>((ref) => NetworkCallService());