
import 'package:hive_flutter/hive_flutter.dart';

import '../../features/login/data/models/login_identifier_model.dart';

class HiveDbManager {

  /// Singleton factory
  /// 
  static final HiveDbManager _instance = HiveDbManager._internal();
  factory HiveDbManager() => _instance;
  HiveDbManager._internal();



  /// Initialize Hive
  
  Future<void> init() async {
    Hive.registerAdapter(LoginIdentifierModelAdapter());
    await Future.wait([
     Hive.initFlutter(),
     Hive.openBox<LoginIdentifierModel>('loginIdentifierModel')
    ]);
    
  }

  /// Close Hive
  Future<void> close() async {
    await Hive.close();
  }

  /// get login box from Hive
  Box<LoginIdentifierModel> get loginBox => Hive.box<LoginIdentifierModel>('loginIdentifierModel');
  




}