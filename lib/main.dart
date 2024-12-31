import 'package:assisment/Provider/Regestration_provider.dart';
import 'package:assisment/Screens/SignUpPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Provider/Product_provider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProductsProvider()),
        ChangeNotifierProvider(create: (context) => RegistrationProvider()),
      ],
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SignUpPage(),
      ),
    );
  }
}
