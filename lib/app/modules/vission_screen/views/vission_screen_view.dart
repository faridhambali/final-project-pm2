import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/vission_screen_controller.dart';

class VissionScreenView extends GetView<VissionScreenController> {
  const VissionScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade100,
        elevation: 0,
        title: const Text(
          'Visi & Misi',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.home, color: Colors.black),
          onPressed: () {
            Get.toNamed('/home'); // Navigasi ke halaman HomeScreen
          },
        ),
      ),
      body: Container(
        color: Colors.orange,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.pink.shade50,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 200,
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'assets/images/logo.png', // Path gambar Anda
                        width: 500,
                        height: 500,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Visi',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'perwujudan museum yang berkemampuan prima dalam pelestarian, perlindungan, pemeliharaan, dan pemanfaatan Benda Cagar Budaya (BCB) untuk memantapkan jati diri masyarakat “Sai Bumi Ruwa Jurai”.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Misi',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'peningkatan sistematisasi pelestarian dan perlindungan BCB berdasarkan kaidah museologi.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
