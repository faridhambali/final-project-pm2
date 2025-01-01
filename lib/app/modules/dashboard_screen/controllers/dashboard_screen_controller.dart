import 'package:get/get.dart';

class DasboardScreenController extends GetxController {
  // Contoh variabel observable untuk menyimpan data nama
  var itemNames = <String>[
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
  ].obs;

  // Fungsi untuk menambahkan item baru
  void addItem(String newItem) {
    itemNames.add(newItem);
  }

  // Fungsi untuk menghapus item berdasarkan indeks
  void removeItem(int index) {
    itemNames.removeAt(index);
  }
}
