import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cafe_matrical/screens/home/home.dart';
import 'package:cafe_matrical/screens/home/widget/CartProvider.dart';
import 'package:cafe_matrical/screens/home/widget/favouriteprovider.dart';
import 'package:cafe_matrical/screens/home/widget/favouriteprovider2.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => FavoritesProvider()),
        ChangeNotifierProvider(create: (context) => FavoritesProvider2()),
        ChangeNotifierProvider(create: (context) => CartProvider()),
      ],
      child: const MyApp(),
    ),
  );
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'COFFEE SHOP',
      theme: ThemeData(
        backgroundColor: Color(0xFFFAFAFA),
        primaryColor: const Color(0xFFFFBD00),
      ),
      home: HomePage(),
    );
  }
}
