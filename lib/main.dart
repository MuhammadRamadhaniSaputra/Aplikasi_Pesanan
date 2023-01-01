import 'dart:convert';
import 'package:aplikasi_pesanan/loading/awal.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aplikasi_pesanan/models/menu_model.dart';
import 'package:http/http.dart' as myHttp;
import 'package:aplikasi_pesanan/providers/cart_provider.dart';
import 'package:provider/provider.dart';
import 'package:aplikasi_pesanan/menu/menu_makanan.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => CartProvider())],
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green),
        home: Awal(),
      ),
    );
  }
}
