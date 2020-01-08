import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:linhaf/ui/android/material.app.dart';
import 'package:linhaf/ui/ios/cupertino.app.dart';


void main() =>
    Platform.isIOS ? runApp(MyCupertinoApp()) : runApp(MyMaterialApp());

// void main() => runApp(MyMaterialApp()); // para web


