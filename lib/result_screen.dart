import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Ambil data yang dikirim dari InputScreen (arguments)
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    final int target = args['target']; // total target tabungan
    final int hari = args['hari'];     // jumlah hari menabung

    // Hitung jumlah tabungan per hari
    final double perHari = target / hari;

    return Scaffold(
      appBar: AppBar(title: const Text("Hasil Tabungan")),
      body: Center(
        child: Card( // widget custom card untuk menampilkan hasil
          margin: const EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min, // biar ukurannya sesuai isi
              children: [
                Text("Target Tabungan: Rp $target"),
                Text("Lama Waktu: $hari hari"),
                const SizedBox(height: 16),

                // Teks hasil perhitungan
                Text(
                  "Harus menabung per hari: Rp ${perHari.toStringAsFixed(0)}",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
