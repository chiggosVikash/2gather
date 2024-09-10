
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'network_info.dart';

final networkInfoProvider = Provider((ref) => NetworkInfo());

final streamedConnectivityProvider = StreamProvider.autoDispose<List<ConnectivityResult>>((ref) {
  final networkInfo = ref.read(networkInfoProvider);
  return networkInfo.onConnectivityChanged;
});