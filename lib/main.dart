import 'package:flutter/material.dart';
// import 'package:mobile_app1/UI/home/home1.dart';
// import 'package:mobile_app1/UI/home/BottomNavigationBar/home1.dart';
// import 'package:mobile_app1/UI/home/DrawerNaviagtion1.dart/home1.dart';
// import 'package:mobile_app1/UI/home/ListView/home1.dart';
// import 'package:mobile_app1/UI/home/ListView/home3.dart';
// import 'package:mobile_app1/UI/home/appBar/home1.dart';
// import 'package:mobile_app1/UI/home/appBar/home2.dart';
// import 'package:mobile_app1/UI/home/body/body21.dart';
// import 'package:mobile_app1/UI/home/forms/form4.dart';
// import 'package:mobile_app1/UI/home/actions/action21.dart';
// import 'package:mobile_app1/UI/home/navigations/navigation10.dart';
// import 'package:mobile_app1/UI/home/navigations/pages/user_details_page.dart';
// import 'package:mobile_app1/UI/home/assets/asset3.dart';
import 'package:mobile_app1/UI/home/api_integration/api4.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Api4(),
      },
    ),
  );
}
