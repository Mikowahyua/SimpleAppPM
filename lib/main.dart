import 'package:flutter/material.dart';
import 'input_screen.dart';
import 'result_screen.dart';

void main() {
  runApp(const MyApp()); // titik masuk aplikasi
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // menghilangkan tulisan "debug"
      title: 'Kalkulator Tabungan',
      
      // route awal aplikasi
      initialRoute: '/',
      
      // daftar route yang bisa diakses
      routes: {
        '/': (context) => const InputScreen(), // layar input
        '/result': (context) => const ResultScreen(), // layar hasil
      },
    );
  }
}
