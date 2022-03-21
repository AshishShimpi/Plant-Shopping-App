import 'package:flutter/material.dart';
import 'package:Plant_Shop_UI/screens/shop_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Shop Plant",
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: ShopScreen(),
    ),
  );
}
