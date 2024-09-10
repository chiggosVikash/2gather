
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data_source/auth.dart';

final authProvider = Provider<AuthI>((ref)=> Auth());