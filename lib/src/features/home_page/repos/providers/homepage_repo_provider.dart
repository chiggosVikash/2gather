import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/providers/homepage_datasource_provider.dart';
import '../homepage_repo.dart';

final homepageRepoProvider = Provider<IHomepageRepo>((ref) {
  final homepageDatasource = ref.watch(homepageDatasourceProvider);
  return HomepageRepo(homepageDatasource);
});