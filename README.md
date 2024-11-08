# :pushpin:Tugas 7

## 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

Stateless widget
- Widget yang statis/tidak dapat berubah (immutable)
- State widget tidak dapat berubah setelah widget dibuat
- Cocok untuk UI yang tidak perlu update data/state secara dinamis
- Lebih ringan karena tidak perlu mengelola state
- Biasanya digunakan untuk komponen yang statis seperti teks, ikon, atau layout yang tidak berubah

Stateful widget: 
- Widget yang dinamis/dapat berubah (mutable)
- Dapat memperbarui tampilan ketika ada perubahan data/state
- Memiliki internal state yang bisa dimodifikasi
- Membutuhkan 2 class: class widget dan class state
- Cocok untuk UI yang interaktif dan perlu update secara dinamis

## 2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

1) MaterialApp

- Widget root yang menyediakan framework material design
- Mengatur tema aplikasi dan halaman utama
- Menyediakan navigasi dan fungsi material design lainnya

2) Scaffold

- Menyediakan struktur dasar layout material design
- Mengimplementasikan visual layout dasar
- Menyediakan AppBar dan area konten utama (body)

3) AppBar

- Bar menu atas aplikasi
- Menampilkan judul aplikasi
- Bisa berisi actions dan leading widget

4) Padding

- Memberikan jarak/ruang kosong di sekitar widget child
- Mengatur margin/padding secara konsisten

5) Column

- Menyusun widget-widget secara vertikal
- Mengatur alignment dan spacing antar children

6) Row

- Menyusun widget-widget secara horizontal
- Mengatur distribusi space antar children

7) GridView.count

- Menampilkan widget dalam bentuk grid
- Mengatur jumlah kolom dan spacing
- Mendukung scrolling

8) Card

- Menampilkan informasi dalam bentuk kartu
- Memiliki elevation (bayangan)
- Biasanya digunakan untuk mengelompokkan informasi terkait

9) Container

- Widget yang dapat dikustomisasi untuk styling
- Dapat mengatur width, height, padding, margin
- Dapat menambahkan dekorasi

10) Material

- Implementasi material design
- Menyediakan visual effects
- Dapat dikustomisasi dengan properti visual

11) Inkwell

- Area yang responsif terhadap sentuhan
- Memberikan efek ripple saat ditekan
- Menangani gestur tap

12) Icon

- Menampilkan ikon
- Dapat dikustomisasi ukuran dan warna

13) Text

- Menampilkan text
- Dapat dikustomisasi style (ukuran, warna, font weight)

14) Sizedbox

- Memberikan space kosong dengan ukuran tetap
- Digunakan untuk spacing antar widget

15) Center

- Menempatkan child widget di tengah
- Berguna untuk alignment

16) Snackbar

- Menampilkan pesan sementara di bagian bawah layar
- Biasanya digunakan untuk feedback ke user

Pada intinya, widget-widget yang digunakan memiliki fungsi sebagai berikut:
- Widgets struktural (Scaffold, Column, Row) mengatur layout dasar
- Widgets styling (Container, Card, Material) mengatur tampilan visual
- Widgets interaktif (InkWell, SnackBar) menangani interaksi user
- Widgets konten (Text, Icon) menampilkan informasi ke user
- Widgets spacing (Padding, SizedBox) mengatur jarak antar elemen

## 3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

setState() adalah sebuah method di Flutter yang digunakan khusus dalam StatefulWidget untuk memberitahu framework bahwa internal state dari objek telah berubah dan perlu melakukan rebuild widget.

Fungsi setState():

- Menandai bahwa state widget telah berubah
- Memicu Flutter untuk melakukan rebuild pada widget
- Memperbarui UI sesuai dengan perubahan state
- Menjamin bahwa perubahan state akan direfleksikan ke UI

Variabel yang dapat terdampak setState():

- Instance/Member Variables dalam State Class
- Collections (List, Map, Set)
- Custom Objects/Classes

## 4. Jelaskan perbedaan antara const dengan final.

Const

- const digunakan untuk mendefinisikan nilai yang bersifat konstan secara compile-time. Ini berarti nilai harus diketahui dan diinisialisasi pada saat kompilasi.

- Variabel yang dideklarasikan dengan const bersifat immutable dan semua instance dari const yang sama akan berbagi referensi yang sama dalam memori.

- const dapat digunakan pada variabel di tingkat class atau variabel lokal, serta untuk membuat constructor konstan dalam objek

Final

- final digunakan untuk mendefinisikan nilai yang hanya dapat diinisialisasi sekali, tetapi nilai tersebut tidak harus diketahui saat compile-time. Nilai bisa ditentukan pada saat runtime, tetapi begitu diinisialisasi, nilainya tidak bisa diubah.
- Variabel final hanya dapat diinisialisasi satu kali dan setelah itu, sertabersifat immutable.

## 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

1) Membuat sebuah program Flutter baru dengan tema E-Commerce yang sesuai dengan tugas-tugas sebelumnya.
- Buat proyek Flutter baru pada terminal dengan nama breezy, kemudian masuk ke dalam direktori proyek tersebut
```
flutter create breezy
cd breezy
```

- Jalankan proyek 
```
flutter run
```

- Melakukan git init pada root folder dan melakukan add-commit-push ke proyek repositori baru di GitHub dengan nama "breezy-mobile"

- Buat file baru bernama menu.dart pada direktori breezy/lib. Masukkan kode ini di atas file menu.dart
```
import 'package:flutter/material.dart';
```

- Dari file main.dart, cut kode bagian class MyHomePage dan class _MyHomePageState dan paste ke file menu.dart

- Pada file main.dart, tambahkan import berikut

```
import 'package:mental_health_tracker/menu.dart';
```

- Mengubah sifat widget halaman menu menjadi Stateless, hapus semua isi dari class MyHomePage, menambahkan `MyHomePage({super.key})` sebagai constructor class MyHomePage, hapus seluruh isi `class _MyHomePageState`, dan menambahkan widget build
 ```
 class MyHomePage extends StatelessWidget {
    MyHomePage({super.key});

    @override
    Widget build(BuildContext context) {
	return Scaffold(
	    ...
	);
    }
}
```

- Mendeklarasikan tiga variabel yang berisi NPM, nama, dan kelas pada class MyHomePage di menu.dart
```
class MyHomePage extends StatelessWidget {
  final String npm = '2306245895'; // NPM
  final String name = 'Ridya Azizah Khayyira Mumtaz'; // Nama
  final String className = 'PBP A'; // Kelas
```

- Membuat class baru bernama InfoCard pada menu.dart serta menambah color
```
class InfoCard extends StatelessWidget {
  // Kartu informasi yang menampilkan title dan content.

  final String title;  // Judul kartu.
  final String content;  // Isi kartu.

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      // Membuat kotak kartu dengan bayangan dibawahnya.
      elevation: 2.0,
      color: Color(0xFFEEEDEB),
      child: Container(
        // Mengatur ukuran dan jarak di dalam kartu.
        width: MediaQuery.of(context).size.width / 3.5, // menyesuaikan dengan lebar device yang digunakan.
        padding: const EdgeInsets.all(16.0),
        // Menyusun title dan content secara vertikal.
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(content),
          ],
        ),
      ),
    );
  }
}
```

- Membuat button card dengan class baru bernama ItemHomepage yang berisi atribut dari card yang akan dibuat
```
class ItemHomepage {
     final String name;
     final IconData icon;
     final Color color;

     ItemHomepage(this.name, this.icon, this.color);
 }
```
2) Membuat tiga tombol sederhana dengan ikon dan teks dan Mengimplementasikan warna-warna yang berbeda untuk setiap tombol

- Pada file menu.dart, buat list of ItemHomepage di dalam class MyHomepage yang berisi tombol yang ingin ditambahkan
```
final List<ItemHomepage> items = [
    ItemHomepage("Lihat Daftar Produk", Icons.card_giftcard, Color(0xFF967E76)),
    ItemHomepage("Tambah Produk", Icons.add, Color(0xFFD7C0AE)),
    ItemHomepage("Logout", Icons.logout, Color(0xFFEEE3CB)),
  ];
```
3) Memunculkan Snackbar

- Membuat class ItemCard untuk menampilkan tombol-tombol dan menampilkan snackbar yang berisi pesan "Kamu telah menekan tombol [nama button]"

```
class ItemCard extends StatelessWidget {
  // Menampilkan kartu dengan ikon dan nama.

  final ItemHomepage item; 
  
  const ItemCard(this.item, {super.key}); 

  @override
  Widget build(BuildContext context) {
    return Material(
      // Menentukan warna latar belakang dari tema aplikasi.
      color: item.color, // Menggunakan warna yang sudah didefinisikan
      // Membuat sudut kartu melengkung.
      borderRadius: BorderRadius.circular(12),
      
      child: InkWell(
        // Aksi ketika kartu ditekan.
        onTap: () {
          // Menampilkan pesan SnackBar saat kartu ditekan.
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
            );
        },
        // Container untuk menyimpan Icon dan Text
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              // Menyusun ikon dan teks di tengah kartu.
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```

- Mengintegrasikan dan menampilkan seluruh card, ubah bagian Widget build() pada class MyHomepage
```
@override
  Widget build(BuildContext context) {
    // Scaffold menyediakan struktur dasar halaman dengan AppBar dan body.
    return Scaffold(
      // AppBar adalah bagian atas halaman yang menampilkan judul.
      appBar: AppBar(
        // Judul aplikasi 
        title: const Text(
          'Breezy',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Warna latar belakang AppBar diambil dari skema warna tema aplikasi.
        backgroundColor: Color(0xFF3C3633),
      ),
      // Body halaman dengan padding di sekelilingnya.
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // Menyusun widget secara vertikal dalam sebuah kolom.
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Row untuk menampilkan 3 InfoCard secara horizontal.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: 'NPM', content: npm),
                InfoCard(title: 'Name', content: name),
                InfoCard(title: 'Class', content: className),
              ],
            ),

            // Memberikan jarak vertikal 16 unit.
            const SizedBox(height: 16.0),

            // Menempatkan widget berikutnya di tengah halaman.
            Center(
              child: Column(
                // Menyusun teks dan grid item secara vertikal.

                children: [
                  // Menampilkan teks sambutan dengan gaya tebal dan ukuran 18.
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      'Welcome to Breezy',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),

                  // Grid untuk menampilkan ItemCard dalam bentuk grid 3 kolom.
                  GridView.count(
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    // Agar grid menyesuaikan tinggi kontennya.
                    shrinkWrap: true,

                    // Menampilkan ItemCard untuk setiap item dalam list items.
                    children: items.map((ItemHomepage item) {
                      return ItemCard(item);
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

# :pushpin:Tugas 8
## 1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?

Saat menandai sebuah widget atau nilai dengan const, kita memberitahu Flutter bahwa konten tersebut bersifat konstan dan tidak akan berubah. Flutter akan membuat widget atau nilai const ini saat compile-time, bukan saat runtime. Ini membuat aplikasi berjalan lebih efisien karena Flutter tidak perlu membuang waktu dan sumber daya untuk membuat ulang widget yang sama berulang kali.

Keuntungan utama menggunakan const adalah aplikasi jadi lebih cepat karena widget tidak perlu dirun ulang setiap kali terjadi perubahan, penggunaan memori lebih efisien karena Flutter bisa menggunakan instance yang sama berulang kali, code jadi lebih aman karena nilai tidak bisa diubah secara tidak sengaja

Sebaiknya, kita menggunakan const untuk hal-hal yang benar-benar statis dan tidak berubah, seperti:

- Teks yang selalu sama ("Save", "Cancel", dll)
- Ukuran padding atau margin yang tetap
- Warna yang sudah ditentukan
- Daftar atau nilai yang tidak akan berubah selama aplikasi berjalan

Kemudian, hindari penggunaan const untuk:

- Widget yang menampilkan data dari API atau database
- Widget yang berinteraksi dengan pengguna (seperti tombol dengan fungsi onPressed)
- Widget yang memiliki animasi atau perubahan state
- Nilai yang dihitung saat aplikasi berjalan (seperti waktu saat ini)

## 2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

Column dan Row adalah widget dasar untuk mengatur layout di Flutter. Perbedaan utamanya terletak pada arah penyusunan widget child mereka:

Column (Vertikal)

- Menyusun widget dari atas ke bawah
- Child widget disusun secara vertikal
- Sangat berguna untuk membuat form, list, atau susunan vertikal lainnya

Contoh implementasi:
```
Column(
  mainAxisAlignment: MainAxisAlignment.center,    // Perataan vertikal
  crossAxisAlignment: CrossAxisAlignment.start,   // Perataan horizontal
  children: [
    Text('Nama: Ahmad'),
    SizedBox(height: 8),                         // Spacing vertikal
    Text('Umur: 25 tahun'),
    SizedBox(height: 8),
    Text('Alamat: Jakarta'),
  ],
)
```

Row (Horizontal)

- Menyusun widget dari kiri ke kanan
- Child widget disusun secara horizontal
- Cocok untuk membuat toolbar, menu, atau deretan tombol

Contoh implementasi:
```
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,   // Perataan horizontal
  crossAxisAlignment: CrossAxisAlignment.center,      // Perataan vertikal
  children: [
    Icon(Icons.home),
    SizedBox(width: 8),                              // Spacing horizontal
    Icon(Icons.search),
    SizedBox(width: 8),
    Icon(Icons.settings),
  ],
)
```

## 3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

Pada halaman form yang pada tugas 8, saya menggunakan elemen input TextFormField, yang digunakan untuk semua input dalam form, dengan berbagai validasi berbeda:

- Name (input teks)
- Amount (input angka)
- Price (input angka)
- Description (input teks)
- Ukuran (input teks)
- Aroma (input teks)
- Top Notes (input teks)
- Middle Notes (input teks)
- Base Notes (input teks)

Terdapat elemen input yang tidak saya gunakan:
- Checkbox: Untuk input boolean (true/false) dan berguna untuk pilihan yang bisa dipilih lebih dari satu
- Radio Button: Untuk memilih satu opsi dari beberapa pilihan
- Switch: Toggle on/off, mirip checkbox tapi dengan tampilan yang berbeda
- Slider: Untuk memilih nilai dalam rentang tertentu
- DropdownButton: Untuk memilih satu opsi dari daftar pilihan, dan lebih hemat ruang dibanding radio button
- DatePicker: Untuk memilih tanggal
- TimePicker: Untuk memilih waktu
- RangeSlider: Untuk memilih rentang nilai
- Image Picker: Untuk mengambil gambar dari kamera atau galeri
- Color Picker: Untuk memilih warna

## 4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

Dalam aplikasi yang dibuat, saya telah mengimplementasikan pengaturan tema melalui ThemeData di file main.dart. Berikut adalah penjelasan detail tentang implementasi dan cara mengatur tema di Flutter:

Implementasi tema di aplikasi saat ini:

```
theme: ThemeData(
    colorScheme: ColorScheme.light(
        primary: (const Color(0xFF3C3633)),    
        secondary: (const Color(0xFF3C3633)), 
    ),
    useMaterial3: true,
),
```

Tema ini digunakan di beberapa tempat:

```
// Di AppBar
appBar: AppBar(
    backgroundColor: Theme.of(context).colorScheme.primary,
    foregroundColor: Colors.white,
)

// Di DrawerHeader
decoration: BoxDecoration(
    color: Theme.of(context).colorScheme.primary,
)

// Di ElevatedButton
style: ButtonStyle(
    backgroundColor: WidgetStateProperty.all(
        Theme.of(context).colorScheme.primary
    ),
)
```

## 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

1) Menggunakan Navigator.push() dan Navigator.pushReplacement()
- Pada ItemCard (saat tombol di homepage ditekan):
```
if (item.name == "Tambah Produk") {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ProductEntryFormPage()),
    );
}
```

- Pada LeftDrawer (navigasi melalui drawer):
```
ListTile(
    leading: const Icon(Icons.home_outlined),
    title: const Text('Halaman Utama'),
    onTap: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => MyHomePage(),
            ));
    },
),
```

2) Menggunakan Drawer untuk Navigasi Samping
```
drawer: const LeftDrawer(),  // Menambahkan drawer ke Scaffold
```
Fitur Navigasi yang Diimplementasikan:

- Navigasi dari homepage ke form tambah produk
- Navigasi melalui drawer ke halaman utama
- Navigasi melalui drawer ke form tambah produk
- Navigasi kembali menggunakan AppBar (back button otomatis)

