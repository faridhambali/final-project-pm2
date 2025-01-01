import 'package:get/get.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:museumlpg/app/routes/app_pages.dart';

class HomeScreenController extends GetxController {
  final PageController pageController = PageController();

  // Jadikan sliderImages sebagai observable menggunakan RxList
  final RxList<String> sliderImages = <String>[].obs;
  final RxInt currentIndex = 0.obs; // Jadikan currentIndex reaktif
  Timer? autoScrollTimer;

  @override
  void onInit() {
    super.onInit();
    _loadSliderImages();
    _startAutoScroll();
  }

  void _loadSliderImages() {
    // Memuat gambar slider (contoh hardcoded)
    sliderImages.addAll([
      'assets/images/slide1.jpeg',
      'assets/images/slide2.jpeg',
      'assets/images/slide3.jpeg',
    ]);
  }

  void _startAutoScroll() {
    autoScrollTimer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (pageController.hasClients) {
        if (currentIndex.value < sliderImages.length - 1) {
          currentIndex.value++;
        } else {
          currentIndex.value = 0;
        }
        pageController.animateToPage(
          currentIndex.value,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  void onTapVisionMission() {
    _handleNavigation(() {
      Get.toNamed(Routes.VISION);
    });
  }

  void onTapDashboard() {
    _handleNavigation(() {
      Get.toNamed(Routes.DASHBOARD);
    });
  }

  void _handleNavigation(VoidCallback navigationCallback) {
    // Hentikan timer dan dispose controller sebelum navigasi
    autoScrollTimer?.cancel();
    pageController.dispose();

    // Pastikan navigasi berjalan
    navigationCallback();
  }

  @override
  void onClose() {
    // Hentikan semua timer dan dispose controller saat ditutup
    autoScrollTimer?.cancel();
    pageController.dispose();
    super.onClose();
  }
}
