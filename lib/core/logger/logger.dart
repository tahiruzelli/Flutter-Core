
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:songmaker/core/build_configs/build_config_manager.dart';


logPrint(String text){
  if(kDebugMode) {
    log(text, name: config.appTitle, time: DateTime.now());
  }
}