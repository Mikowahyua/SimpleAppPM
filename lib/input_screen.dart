import 'package:flutter/material.dart';

// StatefulWidget dipakai karena ada input yang berubah (state)
class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  // Controller untuk menangkap input user
  final TextEditingController targetController = TextEditingController();
  final TextEditingController hariController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[255], // ganti background hijau muda
      appBar: AppBar(title: const Text("Input Tabungan")), // judul appbar
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [

            
            
            // Input target tabungan
            TextField(
              controller: targetController,
              decoration: const InputDecoration(
                labelText: "Target Tabungan (Rp)",
              ),
              keyboardType: TextInputType.number, // hanya angka
            ),
            const SizedBox(height: 16),

            // Input jumlah hari
            TextField(
              controller: hariController,
              decoration: const InputDecoration(
                labelText: "Jumlah Hari",
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 24),

            // Tombol untuk menghitung tabungan
            ElevatedButton(
              onPressed: () {
                // Ambil nilai dari textfield, kalau kosong default 0/1
                final int target = int.tryParse(targetController.text) ?? 0;
                final int hari = int.tryParse(hariController.text) ?? 1;

                // Navigasi ke halaman hasil (ResultScreen)
                Navigator.pushNamed(
                  context,
                  '/result',
                  arguments: {
                    'target': target, // kirim data target
                    'hari': hari,     // kirim data hari
                  },
                );
              },
              child: const Text("Hitung"),
            ),
          ],
        ),
      ),
    );
  }
} 