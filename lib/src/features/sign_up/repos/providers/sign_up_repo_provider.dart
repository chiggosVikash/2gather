
import '/src/features/sign_up/data/providers/sign_up_data_source_provider.dart';
import '/src/features/sign_up/repos/sign_up_repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final signUpRepoProvider = Provider<SignUpRepoI>((ref){
  final dataSource = ref.read(signUpDataSourceProvider);
  return SignUpRepo(dataSource);
});