import 'package:flutter/material.dart';
import 'package:shoppingmall/states/authen.dart';
import 'package:shoppingmall/states/buyer_service.dart';
import 'package:shoppingmall/states/create_account.dart';
import 'package:shoppingmall/states/rider_service.dart';
import 'package:shoppingmall/states/saler_service.dart';
import 'package:shoppingmall/utility/my_constant.dart';

// การสร้าง Route
final Map<String, WidgetBuilder> map = {
  // method(){st1;} == method()=>st1; ถ้ามี argument เดียว
  // Class obj = new Class(); == Class obj = Class(); ใน dart
  '/authen': (BuildContext context) => Authen(),
  '/createAccount': (BuildContext context) => CreateAccount(),
  'buyerService': (BuildContext context) => BuyerService(),
  'salerService': (BuildContext context) => SalerService(),
  'riderService': (BuildContext context) => RiderService(),
};

// การใส่ ? เป็นการบ่งบอกว่าตัวแปร initlalRoute มีโอกาสเป็น null ได้
String? initlalRoute;

// constructor main ทำงานเป็นตัวแรก
void main(List<String> args) {
  initlalRoute = MyConstant.routeAuthen;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MyConstant.appName,
      routes: map,
      initialRoute: initlalRoute,
    );
  }
}
