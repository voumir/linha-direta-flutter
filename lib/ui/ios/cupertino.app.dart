import 'package:flutter/cupertino.dart';

import 'package:linhaf/bloc/Constants.dart';
import 'package:linhaf/ui/ios/pages/home.page.dart';

class MyCupertinoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: Constants.title,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}