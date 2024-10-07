
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../services/providers/network_call_service_provider.dart';
import '../data_sources/homepage_datasource.dart';

final homepageDatasourceProvider = Provider<IHomepageDatasource>((ref) {
  final networkCallService = ref.watch(networkCallServiceProvider);
  return HomepageDatasource(networkCallService);
});