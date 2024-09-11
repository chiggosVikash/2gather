
import '/src/services/providers/network_call_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data_source/login_data_source.dart';

final loginDataSourceProvider = Provider<LoginDataSourceI>((ref) => LoginDataSource(ref.read(networkCallServiceProvider)));