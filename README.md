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

1) Buat proyek Flutter baru pada terminal dengan nama breezy, kemudian masuk ke dalam direktori proyek tersebut
```
flutter create breezy
cd breezy
```

2) Jalankan proyek 
```
flutter run
```

3) Melakukan git init pada root folder dan melakukan add-commit-push ke proyek repositori baru di GitHub dengan nama "breezy-mobile"

4) Buat file baru bernama menu.dart pada direktori breezy/lib. Masukkan kode ini di atas file menu.dart
```
import 'package:flutter/material.dart';
```

5) Dari file main.dart, cut kode bagian class MyHomePage dan class _MyHomePageState dan paste ke file menu.dart

6) Pada file main.dart, tambahkan import berikut

```
import 'package:mental_health_tracker/menu.dart';
```

7) Mengubah sifat widget halaman menu menjadi Stateless, hapus semua isi dari class MyHomePage, menambahkan `MyHomePage({super.key})` sebagai constructor class MyHomePage, hapus seluruh isi `class _MyHomePageState`, dan menambahkan widget build
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

8) Mendeklarasikan tiga variabel yang berisi NPM, nama, dan kelas pada class MyHomePage di menu.dart
```
class MyHomePage extends StatelessWidget {
  final String npm = '2306245895'; // NPM
  final String name = 'Ridya Azizah Khayyira Mumtaz'; // Nama
  final String className = 'PBP A'; // Kelas
```

9) Membuat class baru bernama InfoCard pada menu.dart serta menambah color
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

10) Membuat button card dengan class baru bernama ItemHomepage yang berisi atribut dari card yang akan dibuat
```
class ItemHomepage {
     final String name;
     final IconData icon;
     final Color color;

     ItemHomepage(this.name, this.icon, this.color);
 }
```

11) Pada file menu.dart, buat list of ItemHomepage di dalam class MyHomepage yang berisi tombol yang ingin ditambahkan
```
final List<ItemHomepage> items = [
    ItemHomepage("Lihat Daftar Produk", Icons.card_giftcard, Color(0xFF967E76)),
    ItemHomepage("Tambah Produk", Icons.add, Color(0xFFD7C0AE)),
    ItemHomepage("Logout", Icons.logout, Color(0xFFEEE3CB)),
  ];
```

12) Membuat class ItemCard untuk menampilkan tombol-tombol dan menampilkan snackbar yang berisi pesan "Kamu telah menekan tombol [nama button]"
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

13) Mengintegrasikan dan menampilkan seluruh card, ubah bagian Widget build() pada class MyHomepage
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