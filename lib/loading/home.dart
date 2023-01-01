// import 'package:applikasi/minuman.dart';
// import 'package:applikasi/makanan.dart';
// import 'package:applikasi/snack.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_pesanan/menu/menu_makanan.dart';
import 'package:aplikasi_pesanan/menu/menu_minuman.dart';
import 'package:aplikasi_pesanan/menu/menu_snack.dart';
import 'package:aplikasi_pesanan/providers/cart_provider.dart';
import 'package:aplikasi_pesanan/providers/cart_provider.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Menu Aplikasi"),
      ),
      backgroundColor: Color.fromARGB(255, 71, 79, 94),
      body: GridView.count(
          padding: const EdgeInsets.all(25),
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              elevation: 15,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Makanan()));
                },
                splashColor: Color.fromARGB(255, 0, 0, 0),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Image.asset('images/makan.png'),
                      ),
                      const Text(
                        'Makanan',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 15,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Minuman()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Image.asset('images/minuman.png'),
                      ),
                      const Text(
                        'Minuman',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 15,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Snack()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Image.asset('images/snack.png'),
                      ),
                      const Text(
                        'Snack',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ],
                  ),
                ),
              ),
              //margin: const EdgeInsets.only(left: 20.0, right: 30, top: 5.0),
            ),
          ]),
    );
  }
}
