import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:museumlpg/app/routes/app_pages.dart';

class DashboardScreenView extends StatelessWidget {
  DashboardScreenView({super.key});

  final List<Map<String, String>> items = [
    {
      'image': 'assets/images/agama_hindu.jpeg',
      'name': 'Peninggalan Agama Hindu',
      'description':
          'Dalam agama Hindu dikenal adanya dewa-dewa yang diwujudkan dalam bentuk arca. Agama Hindu mengenal Trimurti sebagai satu kesatuan tiga dewa utarna. Dewa Trimurti terdiri atas Dewa Brahima sebagai pencipta, Dewa Wisnu sebagai pemelihara, dan Dewa Siwa sebagai pelebur (mengembalikan ke asalnya)Masa Klasik Hindu-Buddha di Lampung berlangsung antara abad ke-7 M hingga abad ke-16 M.'
    },
    {
      'image': 'assets/images/aksara_lampung.jpeg',
      'name': 'Aksara Lampung',
      'description':
          'Aksara Lampung merupakan ikon bagi kemajuan tradisi leluhur di Lampung. Aksara Lampung yang ditulis dalam manuskrip kuno mampu menyibak tabir kisah hidup leluhur di masa lampau. '
    },
    {
      'image': 'assets/images/arca_megalitik.jpeg',
      'name': 'Arca Megalitik',
      'description':
          'Arca ditemukan tahun 1963 di Situs Pugung Raharjo, Lampung Timur. Pada bagian pinggang belakang terselip sebuah keris sebagai ciri arca yang menggambarkan salah satu tokoh perwujudan seorang panglima. Arca berada pada lingkup budaya tradisi megalitik. Arca sejenis banyak ditemukan di Jawa Timur, pada periode sebelum jaman Majapahit sekitar abad ke-12/13 М.'
    },
    {
      'image': 'assets/images/arca_menhir.jpeg',
      'name': 'Arca Menhir',
      'description':
          'Arca ditemukan di Perwakilan Sukau, Lampung Barat. Arca digambarkan dalam posisi jongkok, mata besar melotot, hidung besar melebar segitiga, mulut persegi terbuka, tangan kanan ditekuk melipat di atas dada, tangan kiri disedekapkan di atas perut. Arca berkelamin laki-laki, alat kelamin berdiri melengkung ke kiri. Arca tradisi megalitik merupakan personifikasi dari roh leluhur yang memiliki kekuatan gaib. Arca berfungsi sarana meminta perlindungan menolak semua bahaya dan pengaruh jahat dari luar.'
    },
    {
      'image': 'assets/images/besunat.jpeg',
      'name': 'Besunat',
      'description':
          'Upacara besunat/ khitan awalnya merupakan identitas keagamaan, dan juga bersifat instrinsik sebagai pendekatan kepada Tuhan (Allah SWT). Upacara dilakukan dalam bentuk ritual keagamaan (Islami). Pada saat upacara adat besunat si anak tersebut diarak menuju lunjuk yang diiringi oleh musik/ bunyi-bunyian Talo Balak, Rebana (rudat). Di atas lunjuk tersebut dilaksanakan khitanan/sunat setelah itu diadakan marhaban dan makan bersama.'
    },
    {
      'image': 'assets/images/gamolan.jpeg',
      'name': 'Gamolan',
      'description':
          'Gamolan/kulintang pekhing mulai dikenal di daerah Lampung sekitar abad ke IV sampai V Masehi. Gamolan adalah jenis alat musik xilophone yang berasal dari Skala Brak Lampung Barat. Alat musik ini terbuat dari Bambu Betung, lalu di laras menjadi pelong 6 nada yaitu: 1235671 (Do, Re, Mi, Sol, La, Si, Do). Alat Gamolan terdapat juga pada relief Candi Borobudur pada abad ke Vi Masehi. (Prof. Margaret J.K 1983) Gamolan merupakan alat musik pukul. Bunyi musik dihasilkan dari ketukan atau pukulan pada badan alat musik. Dimainkan bersamaan dengan Sekhdam untuk mengiringi lagu, sastra lisan, tari pada saat upacara adat.'
    },
    {
      'image': 'assets/images/islam.jpeg',
      'name': 'Masa Islam',
      'description':
          'Teko Alpaka Pada Teko dan Gelas Alpaka terdapat ragam hias penuh kaligrafi berbunyi "Allah" dan motif hias sulur daun. Talam Talam pada bagian tengan terdapat tulisan Arab Allah, Muhammad, Abu Bakar, Umar, Usman dan Ali. Bagian kedua Ayat Kursi dan bagian ketiga dan keempat tentang doa sesu- dah dzikir, salam kepada manusia dan Nabi. Prasasti Bohdalung Aksara Arab berbahasa Jawa Banten terdiri dari 32 baris (12 alenia) tentang kekuasaan Sultan Banten di Lampung serta hubungan dangang komoditi lada. Ditemukan oleh bapak Abu Bakar Hasihan di Desa Bojong.'
    },
    {
      'image': 'assets/images/kain_inuh.jpeg',
      'name': 'Kain Inuh',
      'description':
          'Kain tapis yang terdapat pada masyarakat Pesisir atau Saibatin disebut dengan kain Inuh. Inuh pada umumnya dibuat dengan sistim tenun ikat dan pada bidang horizontal tertentu disulam dengan benang sutera alam, serat daun nenas. Tenun ikat pada kain bermotif pohon hayat dan lajur-lajur, dan pada bidang yang lebar bermotif riak-riak gelombang, binatang laut, tunas- tunas dan sulur daun. Motif ini melambangkan kesuburan dan penyebaran benih baru dalam kehidupan. Motif tersebut juga terdapat pada Prasasti Dadak yang berasal dari abad 14-15 м. Kain inuh dikenakan oleh istri Penyimbang pada saat meng hadiri upacara adat Lampung Saibatin.'
    },
    {
      'image': 'assets/images/keramik_asing.jpeg',
      'name': 'Keramik Asing',
      'description':
          'Keramik adalah semua benda yang terbuat dari tanah liat bakar dan terdiri dari Tembikar (500 °C - 800 °C), Bahan batuan/ stoneware (suhu lebih dari 1.200 OC), dan Porselen (suhu lebih dari 1.300 °C). Keramik asing yang ditemukan di Lampung diantaranya Keramik Cina, Vietnam, Thailand, Jepang, Persia, dan Eropa. Kehadiran keramik menunjukkan bahwa masyarakat Lampung sudah melakukan kontak perdagangan dan kebudayaan dengan negara asing sejak abad X M - abad XIX M.'
    },
    {
      'image': 'assets/images/koleksi_filologika.jpeg',
      'name': 'Koleksi Filologika',
      'description':
          'Naskah kuno koleksi Museum Lampung terdiri dari kulit kayu, daun lontar, kayu, tanduk dan kertas daluang. Huruf yang digunakan pada naskah kuno terdiri dari bali kuno, lampung kung dan huruf arab, sedangkan bahasa yang digunakan bahasa lampung kuno, melayu dan arab, pada umumnya naskah kunon yang bertuliskan huruf lampung dan berbahasa lampung antara lain berisi tentang mantera pengobatan, penangkal kejahatan, ramalan perjodohan, pengasihan dan kekebalan tubuh, serta syair-syair cinta.'
    },
    {
      'image': 'assets/images/kulintang.jpeg',
      'name': 'Kulintang',
      'description':
          'Merupakan alat tabuh/ bunyian untuk mengiringi acara- acara adat baik dirumah maupun di Sessat. Seni tabuh ini disajikan atau dimainkan untuk Tabuh Sanak Miwang Diljan, Tabuh Sereliyih Adak Deh dan Tabuh Seremendung Adek Lambung ditabuh serempak, Tabuh Tari Tabuh sahuwi, tabuh cayaw, tabuh saujung untuk pengiring tari, Tabuh Muli Turun di Sessat, Tabuh Baris untuk Gubar Cangget, Tabuh Samang Kusen (tabuh samang ngembuk)'
    },
    {
      'image': 'assets/images/masa_islam.jpeg',
      'name': 'Masa Islam',
      'description':
          'Pengaruh kebudayaan Islam di Lampung sudah dimulai sejak abad ke-11 M. Secara kronologis berasal dari Pagaruyung (1358 M), Palembang (Abad ke - 14 M), Aceh (Abad ke - 15 M), Banten (Abad ke-15/16 M), dan Bugis (1839) Perkembangan kebudayaan Islam ke Lampung berlangsung dalam 3 (tiga) periode gelombang: Periode I berlangsung pada abad ke 14 M. Kedatangan Maulana Umpu Ngegalang Paksi (Maulana Imam Al Hasyir) dari Pagarruyung mengembangkan sistem keratuan Islam (Kepaksian Sekala Brak) dan menaklukan Kerajaan Sekala Brak (Buay Tumi) yang dipimpin oleh Ratu Sekerummong. Periode II berlangsung pada abad ke-15 hingga abad ke 16 M. Penyebaran Islam dilakukan melalui kawasan pesisir Barat Lampung (Krui dan Tanggamus), pesisir timur Lampung (labuhan Maringgai), pesisir selatan (Kalianda), Tulangbawang. Periode III berlangsung pada abad ke-17 M hingga abad ke 19 M. Pada periode ini tercatat 42 makam tokoh Islam ditemukan di Lampung terutama pada kawasan Lampung Selatan dan Tulangbawang.'
    },
    {
      'image': 'assets/images/miniatur_begawi.jpeg',
      'name': 'Miniatur Begawi',
      'description':
          'Begawi Cakak Pepadun adalah tradisi adat masyarakat Lampung Pepadun untuk menobatkan Penyimbang adat yang baru. Gelar Penyimbang biasanya didapatkan oleh pasangan pengantin baru yang merupakan keturunan Penyimbang. '
    },
    {
      'image': 'assets/images/naskah_buku_kulit.jpeg',
      'name': 'Naskah Buku Kulit',
      'description':
          'Naskah kulit kayu pada umumnya beraksara Lampung dan menggunakan bahasa Lampung. Pada naskah tertera lambang, simbol, rajah dan matera. Isi naskah pada umumnya berupa matera tentang tolak bala, pengobatan, kekebalan dan pemikat gadis. Aksara lampung secara luas memiliki makna yang sangat penting untuk mengungkapkan akar adat istiadat, sosial dan ekonomi pada masyarakat.'
    },
    {
      'image': 'assets/images/prasasti_palas.jpeg',
      'name': 'Prasasti Palas',
      'description':
          'Prasasati ditemukan tahun 1958 di tepi Way Pisang di Desa Palas Pasemah, Kecamatan Palas, Lampung Selatan. Prasasti terdiri dari 13 baris, umur Akhir Abad ke-7M, huruf Pallawa, bahasa Melayu Kuno. Prasasti berisi tentang penaklukan daerah Lampung dan kutukan-kutukan kepada yang berani memberontak kepada Sriwijaya.'
    },
    {
      'image': 'assets/images/raden_intan.jpeg',
      'name': 'Raden Intan',
      'description':
          'Pedang Punggawa Radin Intan Pada permukaan bilah terdapat tulisan arab yang berbunyi " Innama Amruhu Idza Arrodallahu Syaian Aiyaquula Lahu Kun Fayakun".. Pedang ini juga menjadi bukti sejarah kegigihan Radin Intan II bersama pasukannya berjuang melawan penjajah Belanda yang sangat berkeinginan untuk menguasai Lampung. Meriam Lela/Meriam Benteng Indonesia mengenal meriam sejak kedatangan bangsa Portugis pada abad ke 16. Meriam merupakan salah satu jenis senjata dengan berbagai bentuk dan ukuran. Fungsinya penembak Jarak jauh. Topeng Tupping sebagai simbol prajurit rahasia Radin Inten II. Tupping dikenakan dalam tari tupping klasik dalam bentuk drama tari, digunakan untuk menggambarkan kepahlawanan di daerah Lampung selatan.'
    },
    {
      'image': 'assets/images/senjata_lampung.jpeg',
      'name': 'Senjata Lampung',
      'description':
          'Payan Kejang (Tombak panjang) dan Taming (Tameng) Merupakan senjata tradisional. Pada masyarakat Lampung digunakan juga sebagai perlengkapan upacara adat. Punduk, Tekhapang (Keris) Merupakan benda pusaka pada masyarakat lampung digunakan sebagai perlengkapan upacara adat. Panderang (Pedang) merupakan senjata tradisional. Panderang (pedang Type Lampung) Merupakan senjata tradisional, juga digunakan untuk perlengkapan pencak silat dalam acara Begawi Adat Lampung.'
    },
    {
      'image': 'assets/images/senjata_pistol_voc.jpeg',
      'name': 'Pistol VOC',
      'description':
          'Seri lain dari pistol VOC jenis yang dulu didapat lagi jenis pistol dengan moncong yang berbeda (mekar/ mekrok/ terompet). Dengan barang kawat pembersih sisa mesiu yang tersedia di sisi bawah depan ujung pistol. Relik Sejarah (Historical Relics) adalah peninggalan masa lampau berupa benda-benda yang pernah dibuat dan dipergunakan manusia sebagai bukti kehidupan pada masa lalu dan merupakan peninggalan masa kolo- nial.'
    },
    {
      'image': 'assets/images/serah_sepi_bilah.jpeg',
      'name': 'Serah Sepi Bilah',
      'description':
          'Upacara adat busepi sudah ada sejak masa perkembangnya tradisi Hindu Budha di Lampung. Busepi mengandung makna pengendalian diri secara simbolis terhadap enam musuh dalam diri manusia (hawa nafsu yang berlebihan, sifat rakus, amarah, kemabukan, kebingung- an, iri hati). Upacara busepi dalam bentuk ritual merupakan serangkaian upacara menginjak dewasa atau saat pertama akıl balik dengan membenahi susunan gigi geligi seperti yang panjang dipendekkan supaya sama dan serasi. Setelah upacara busepi si anak sudah dapat mengikuti acara pergaulan bujang gadis.'
    },
    {
      'image': 'assets/images/serah_sepi.jpeg',
      'name': 'Serah Sepi',
      'description':
          'Upacara adat penganggik bagi masyarakat Lampung sudah ada sejak masa perkembangan tradisi Hindu Budha di Lampung. Penganggik mengandung makna pengendalian diri secara simbolis terhadap enam musuh dalam diri manusia (hawa nafsu yang berlebihan, sifat rakus, amarah, kemabukan, kebingungan, iri hati). Upacara penganggik dalam bentuk ritual merupakan serangkaian upacara menginjak dewasa atau saat pertama akil balik. Setelah upacara penganggik si anak sudah dapat mengikuti acara pergaulan bujang gadis/acara adat yang diadakan'
    },
    {
      'image': 'assets/images/uang_asing.jpeg',
      'name': 'Uang Asing',
      'description':
          'Numismatika Indonesia, menampilkan ragam jenis uang kertas dan koin Indonesia dari zaman Belanda, pendudukan Jepang, zaman Kemerdekaan, Orde Lama dan sampai yang aktual 2009. (URIDA dan koin tradisional / zaman kerajaan nusantara)'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.orange.shade100,
        title: const Text(
          'Dashboard',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.home, color: Colors.black),
          onPressed: () {
            Get.toNamed(Routes.HOME); // Kembali ke HomeScreen
          },
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.orangeAccent, Colors.deepOrangeAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Grid of Clickable Images
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        // Mengirim data gambar dan deskripsi ke SejarahScreenView
                        Get.toNamed(
                          Routes.SEJARAH,
                          parameters: {
                            'image': items[index]['image']!,
                            'description': items[index]['description']!,
                          },
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.pink.shade50,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                items[index]['image']!,
                                width: 80,
                                height: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              items[index]['name']!,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
