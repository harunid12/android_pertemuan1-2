// import 'package:first_app/halama3.dart';
import 'package:first_app/halaman_kedua.dart';
import 'package:first_app/materi_1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HalamanKedua(),
      // initialRoute: '/',

      // routes: {
      //   '/': (context) => const HomePage(),
      //   '/halaman3': (context) => const HalamanKetiga(),
      // },
    );
  }
}

