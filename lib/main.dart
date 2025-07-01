import 'package:ecommerce/modules/auth/login.dart';
import 'package:ecommerce/modules/auth/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Ecom',
      theme: ThemeData.light(),
      home: const RegisterPage(),
      //home: const LoginPage(),
    );
  }
}
