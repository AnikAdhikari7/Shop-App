import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/pages/home_page.dart';
import 'package:shop_app/provideer/cart_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      // to use multiple providers
      // MultiProvider(providers: [ChangeNotifierProvider(create: (context) => CartProvider)])

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shopping App',
        theme: ThemeData(
          fontFamily: 'Lato',
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromRGBO(254, 206, 1, 1),
              primary: const Color.fromRGBO(254, 206, 1, 1)),
          appBarTheme: const AppBarTheme(
              titleTextStyle: TextStyle(fontSize: 20, color: Colors.black),
              centerTitle: true),
          inputDecorationTheme: const InputDecorationTheme(
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
          ),
          textTheme: const TextTheme(
              titleLarge: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              titleMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              bodySmall: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
