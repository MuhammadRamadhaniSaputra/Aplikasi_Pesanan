import 'dart:async';
import 'package:flutter/material.dart';
import 'package:aplikasi_pesanan/loading/home.dart';
import 'package:aplikasi_pesanan/loading/awal.dart';

class Awal extends StatefulWidget {
  const Awal({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AwalState createState() => _AwalState();
}

class _AwalState extends State<Awal> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 0), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/logo.jpg',
                height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const CircularProgressIndicator.adaptive(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              )
            ],
          ),
        ));
  }
}
