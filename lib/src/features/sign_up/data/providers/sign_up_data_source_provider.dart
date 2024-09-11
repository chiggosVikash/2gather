
import 'package:backmate/src/services/providers/network_call_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data_sources/sign_up_datasource.dart';

final signUpDataSourceProvider = Provider<SignUpDataSourceI>((ref) {
  final networkCall = ref.watch(networkCallServiceProvider);
  return SignUpDataSource(networkCall);
});