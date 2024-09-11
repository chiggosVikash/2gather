

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/providers/login_datasource_provider.dart';
import '../login_repo.dart';

final loginRepoProvider = Provider<LoginRepoI>((ref) => LoginRepo(ref.read(loginDataSourceProvider)));