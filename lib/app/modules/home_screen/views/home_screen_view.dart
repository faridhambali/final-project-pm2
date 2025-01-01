import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_screen_controller.dart'; // Import controller

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    // Mendaftarkan controller sebelum menggunakannya
    final HomeScreenController controller = Get.put(HomeScreenController());

    return Scaffold(
      body: Container(
        // Menggunakan warna oranye solid pada latar belakang
        color: Colors.orange,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Bagian Header
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 15.0),
                color: Colors.orange.shade100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Welcome, Galeri Museum lampung!',
                          style: TextStyle(
                            color: Colors.orange.shade800,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Mengenal Budaya Lampung',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),

              // Bagian Slider dengan Indikator
              Container(
                margin: const EdgeInsets.all(20.0),
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                  color: Colors.orange.shade50,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Stack(
                  children: [
                    Obx(
                      () => controller.sliderImages.isEmpty
                          ? const Center(child: CircularProgressIndicator())
                          : PageView.builder(
                              controller: controller.pageController,
                              itemCount: controller.sliderImages.length,
                              onPageChanged: (index) {
                                controller.currentIndex.value = index;
                              },
                              itemBuilder: (context, index) {
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset(
                                    controller.sliderImages[index],
                                    fit: BoxFit.cover,
                                  ),
                                );
                              },
                            ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 0,
                      right: 0,
                      child: Obx(
                        () => Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            controller.sliderImages.length,
                            (index) => Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              width: controller.currentIndex.value == index
                                  ? 12.0
                                  : 8.0,
                              height: controller.currentIndex.value == index
                                  ? 12.0
                                  : 8.0,
                              decoration: BoxDecoration(
                                color: controller.currentIndex.value == index
                                    ? Colors.orange
                                    : Colors.grey,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Bagian Body (Grid dengan Card)
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15.0,
                      mainAxisSpacing: 15.0,
                      childAspectRatio:
                          1.3, // Membuat kartu lebih persegi panjang
                    ),
                    itemCount: 2, // Ubah sesuai jumlah tombol
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return buildCard(
                          'Vision & Mission',
                          Icons.visibility_outlined,
                          controller.onTapVisionMission,
                        );
                      } else if (index == 1) {
                        return buildCard(
                          'Dashboard',
                          Icons.dashboard_outlined,
                          controller.onTapDashboard,
                        );
                      } else {
                        return Container();
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget khusus untuk Card
  Widget buildCard(String label, IconData icon, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Container(
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: Colors.orange.shade50,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 40, color: Colors.orange.shade800),
              const SizedBox(height: 10),
              Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.orange.shade800,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
