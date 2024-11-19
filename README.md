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

# :pushpin:Tugas 9
## 1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?

Model memastikan bahwa data JSON yang diterima atau dikirim sesuai dengan struktur yang diharapkan. Model memberikan kerangka kerja yang jelas sehingga kesalahan seperti tipe data atau properti yang hilang dapat terdeteksi lebih awal. Tanpa model, tidak ada mekanisme otomatis untuk memvalidasi apakah semua properti yang diperlukan ada dan memiliki tipe data yang benar. Ini dapat menyebabkan error runtime saat mencoba mengakses properti yang tidak ada atau salah tipe.

Selain itu, Model membuat kode lebih modular, sehingga mudah digunakan kembali dan dipelihara. Logika parsing dan pengiriman data didefinisikan di satu tempat (model), membuatnya mudah diperbarui jika ada perubahan struktur data JSON. Tanpa model, kita mungkin perlu menduplikasi logika parsing atau memanipulasi data JSON di berbagai bagian kode.

Jika tidak memakai model, tidak akan selalu terjadi error secara langsung, tetapi ada risiko yang dapat menyebabkan error atau bug, terutama dalam:

- Kesalahan Parsing: Jika struktur JSON berubah atau tidak sesuai dengan asumsi dalam kode.
- Kesalahan Tipe Data: Jika ingin mencoba memproses properti yang tidak ada atau memiliki tipe yang berbeda.
- Kesulitan Debugging: Kesalahan dalam nama properti atau struktur data menjadi lebih sulit ditemukan.

## 2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini

1. Membuat Permintaan HTTP ke Server

Library http memungkinkan aplikasi Flutter mengirimkan permintaan ke server untuk berkomunikasi dengan API yang telah dibuat, seperti:

- Login: Mengirimkan username dan password ke endpoint /login untuk memverifikasi kredensial pengguna.
- Register: Mengirimkan data pengguna baru ke endpoint /register untuk membuat akun.
- Logout: Meminta server untuk mengakhiri sesi pengguna.
 
2. Mendukung Format JSON

Respons dari server API Django biasanya berupa JSON, dan library http menyediakan kemudahan untuk mengakses data tersebut. JSON adalah format yang umum digunakan untuk bertukar data antara klien dan server.

3. Mengelola Respons dari Server
Library ini menyediakan akses ke informasi penting dalam respons, seperti:

- Status kode HTTP (200, 401, 400, dll.) untuk mengetahui apakah permintaan berhasil.
- Header respons untuk metadata.
- Isi tubuh respons (body) untuk mendapatkan data sebenarnya.

## 3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.

1. Manajemen Session

- Mengelola cookie session untuk menjaga state login pengguna
- Menyimpan dan mengirim cookie credentials di setiap request ke backend


2. HTTP Request Handler

- Menyediakan method untuk melakukan HTTP request (get, post, logout dll)
- Secara otomatis menyertakan cookie credentials di setiap request
- Menangani serialisasi/deserialisasi data JSON


3. State Management

- Menyimpan state autentikasi user (logged in/out)
- Memberikan informasi login state ke seluruh aplikasi

Alasan instance CookieRequest perlu dibagikan ke semua komponen:

1. Konsistensi Session

2. Efisiensi Resource

- Mencegah pembuatan multiple instance yang tidak perlu
- Menghemat memory karena hanya ada 1 instance yang digunakan bersama

3. State Synchronization

4. Maintainability

- Lebih mudah mengelola karena tidak perlu passing instance ke setiap screen
- Perubahan implementasi cukup dilakukan di 1 tempat

## 4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.

Proses dimulai ketika user mengisi form input product di Flutter. Setiap field pada form seperti nama, harga, dan deskripsi memiliki TextFormField yang dilengkapi validator untuk memastikan data yang dimasukkan sesuai dengan kebutuhan. Ketika user mengetik, data tersebut disimpan dalam state widget menggunakan setState().

Saat user menekan tombol save, pertama-tama form akan divalidasi. Jika valid, data dari form akan dikonversi menjadi format JSON. Data JSON ini kemudian dikirim ke Django melalui HTTP POST request menggunakan instance CookieRequest. Request ini menuju ke endpoint '/create-flutter/' di Django.

Di sisi Django, view akan menerima request tersebut dan memproses datanya. Data JSON di-decode menjadi dictionary Python, kemudian digunakan untuk membuat instance baru dari model Product. Setelah object product dibuat dan disimpan ke database, Django mengirimkan response sukses kembali ke Flutter.

Flutter kemudian menangani response ini dengan menampilkan pesan sukses menggunakan SnackBar dan melakukan navigasi ke halaman utama. Di halaman utama inilah proses menampilkan data dimulai.

Untuk menampilkan data, Flutter menggunakan FutureBuilder yang memanggil fungsi fetchProduct(). Fungsi ini melakukan HTTP GET request ke endpoint '/json/' di Django untuk mengambil semua data product. Django akan mengquery database untuk mengambil semua product milik user yang sedang login, men-serialize data tersebut menjadi JSON, dan mengirimkannya kembali ke Flutter.

Flutter menerima data JSON ini dan mengkonversinya menjadi list object ProductEntry menggunakan model class yang sudah didefinisikan. Model class ini memiliki factory constructor yang memudahkan proses parsing JSON menjadi object Dart yang terstruktur.

Selama proses fetching data berlangsung, FutureBuilder menampilkan CircularProgressIndicator untuk memberikan feedback visual kepada user. Jika data berhasil diambil, FutureBuilder akan merender GridView yang menampilkan product dalam bentuk card. Setiap card menampilkan informasi product seperti nama, harga, dan deskripsi yang diambil dari object ProductEntry.

FutureBuilder juga menangani kasus ketika tidak ada data atau terjadi error, dengan menampilkan pesan yang sesuai kepada user. Hal ini memastikan user experience yang baik dengan memberikan feedback yang jelas tentang status data mereka.

Seluruh proses ini terjadi secara asynchronous, sehingga tidak mengganggu responsivitas aplikasi. State management yang baik memastikan UI selalu mencerminkan status data terkini, dan error handling yang komprehensif memastikan user selalu mendapat feedback yang jelas tentang apa yang terjadi dengan data mereka.

Model class yang digunakan untuk struktur data memastikan type safety dan konsistensi data di sepanjang aplikasi. Dengan factory constructor untuk parsing JSON, proses konversi data menjadi lebih terstruktur dan mudah dimaintain.

Mekanisme ini menciptakan alur data yang konsisten dan terstruktur, mulai dari input user hingga tampilan akhir, dengan memperhatikan aspek user experience, performa, dan maintainability kode.

## 5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

1. Register:

- User mengisi form register (username & password)
- Data form divalidasi di Flutter
- Data diencode jadi JSON dan dikirim ke Django via HTTP POST
- Django decode JSON dan validasi data yaitu dengan cek password match dan username unik
- Jika valid, Django akan buat user baru dengan password terenkripsi, simpan ke database, dan return success response
- Saat flutter terima response, tampilkan success message, lalu redirect ke login page

2. Login:

- User input credentials di login form
- CookieRequest kirim credentials ke Django via HTTP POST
- Django: authenticate user dengan credentials, jika valid, buat session di database, lalu generate session cookie, dan return cookie & success response
- CookieRequest: Terima & simpan session cookie, dan set loggedIn = true
- Flutter: cek request.loggedIn. Jika true, redirect ke homepage, lalu tampilkan welcome message. Jika false, tampilkan error

3. Logout:

- User klik logout di menu
- CookieRequest kirim request ke Django
- Django: Hapus session dari database, dan return success response
- CookieRequest: Hapus session cookie, lalu set loggedIn = false
- Flutter: Tampilkan goodbye message, dan redirect ke login page

4. Session Management:

- Setiap request ke Django menyertakan session cookie
- Django validasi cookie di setiap request: Cek session valid di database, jika invalid, return error
- CookieRequest otomatis handle: Menyimpan cookie, menyertakan di request, dan update status loggedIn

## 6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).


1) Mengimplementasikan fitur registrasi akun pada proyek tugas Flutter.
- Membuat view method untuk register pada authentication/views.py
```
from django.contrib.auth.models import User
import json

...

@csrf_exempt
def register(request):
    if request.method == 'POST':
        data = json.loads(request.body)
        username = data['username']
        password1 = data['password1']
        password2 = data['password2']

        # Check if the passwords match
        if password1 != password2:
            return JsonResponse({
                "status": False,
                "message": "Passwords do not match."
            }, status=400)
        
        # Check if the username is already taken
        if User.objects.filter(username=username).exists():
            return JsonResponse({
                "status": False,
                "message": "Username already exists."
            }, status=400)
        
        # Create the new user
        user = User.objects.create_user(username=username, password=password1)
        user.save()
        
        return JsonResponse({
            "username": user.username,
            "status": 'success',
            "message": "User created successfully!"
        }, status=200)
    
    else:
        return JsonResponse({
            "status": False,
            "message": "Invalid request method."
        }, status=400)

```

- Menambahkan path baru pada authentication/urls.py
`path('register/', register, name='register'),`

- Membuat berkas baru pada folder screens dengan nama register.dart, lalu isi dengan kode berikut
```
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:breezy/screens/login.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  TextFormField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      hintText: 'Enter your username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12.0),
                  TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12.0),
                  TextFormField(
                    controller: _confirmPasswordController,
                    decoration: const InputDecoration(
                      labelText: 'Confirm Password',
                      hintText: 'Confirm your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please confirm your password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 24.0),
                  ElevatedButton(
                    onPressed: () async {
                      String username = _usernameController.text;
                      String password1 = _passwordController.text;
                      String password2 = _confirmPasswordController.text;

                      // Cek kredensial
                      // Untuk menyambungkan Android emulator dengan Django pada localhost,
                      // gunakan URL http://10.0.2.2/
                      final response = await request.postJson(
                          "http://127.0.0.1:8000/auth/register/",
                          jsonEncode({
                            "username": username,
                            "password1": password1,
                            "password2": password2,
                          }));
                      if (context.mounted) {
                        if (response['status'] == 'success') {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Successfully registered!'),
                            ),
                          );
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Failed to register!'),
                            ),
                          );
                        }
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 50),
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    child: const Text('Register'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
```

2)  Membuat halaman login pada proyek tugas Flutter.

- Membuat view method untuk login pada authentication/views.py
```
@csrf_exempt
def login(request):
    username = request.POST['username']
    password = request.POST['password']
    user = authenticate(username=username, password=password)
    if user is not None:
        if user.is_active:
            auth_login(request, user)
            # Status login sukses.
            return JsonResponse({
                "username": user.username,
                "status": True,
                "message": "Login sukses!"
                # Tambahkan data lainnya jika ingin mengirim data ke Flutter.
            }, status=200)
        else:
            return JsonResponse({
                "status": False,
                "message": "Login gagal, akun dinonaktifkan."
            }, status=401)

    else:
        return JsonResponse({
            "status": False,
            "message": "Login gagal, periksa kembali email atau kata sandi."
        }, status=401)
```
- Menambahkan URL routing terhadap fungsi login pada file urls.py di folder authentication
```
from django.urls import path
from authentication.views import login

app_name = 'authentication'

urlpatterns = [
    path('login/', login, name='login'),
]
```

- Menambahkan path pada breezy/urls.py
`path('auth/', include('authentication.urls'))`

3) Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.

- Membuat django-app bernama authentication dan tambahkan authentication ke INSTALLED_APPS pada settings.py main project Django

- Menjalankan `pip install django-cors-headers` dan menambahkan `django-cors-headers` ke requirement.txt. Lalu tambahkan corsheaders ke INSTALLED_APPS pada settings.py Django

- Menambahkan variabel berikut pada main project settings.py 

```
CORS_ALLOW_ALL_ORIGINS = True
CORS_ALLOW_CREDENTIALS = True
CSRF_COOKIE_SECURE = True
SESSION_COOKIE_SECURE = True
CSRF_COOKIE_SAMESITE = 'None'
SESSION_COOKIE_SAMESITE = 'None'
```

- Menambahkan `10.0.2.2` ke ALLOWED_HOSTS pada settings.py

- Install package pbp_django_auth dan provider
```
flutter pub add provider
flutter pub add pbp_django_auth
```

- Mengubah isi main.dart menjadi seperti ini
```
import 'package:breezy/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Breezy',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF685454),
            primary: const Color(0xFF685454),
          ),
        ),
        home: const LoginPage(),
      ),
    );
  }
}
```

4) Membuat model kustom sesuai dengan proyek aplikasi Django.

- Membuka endpoint JSON lalu salin data JSON tersebut

- Membuka situs web Quicktype untuk membuat model, ubah setup name menjadi ProductEntry, source type menjadi JSON, dan language menjadi Dart. Lalu copy code pada Quicktype tersebut

- Buat file baru yaitu product_entry.dart dan letaknya di lib/models/product_entry.dart
```
// To parse this JSON data, do
//
//     final productEntry = productEntryFromJson(jsonString);

import 'dart:convert';

List<ProductEntry> productEntryFromJson(String str) => List<ProductEntry>.from(json.decode(str).map((x) => ProductEntry.fromJson(x)));

String productEntryToJson(List<ProductEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductEntry {
    String model;
    String pk;
    Fields fields;

    ProductEntry({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory ProductEntry.fromJson(Map<String, dynamic> json) => ProductEntry(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String name;
    int price;
    String description;
    String ukuran;
    String aroma;
    String topNotes;
    String middleNotes;
    String baseNotes;

    Fields({
        required this.user,
        required this.name,
        required this.price,
        required this.description,
        required this.ukuran,
        required this.aroma,
        required this.topNotes,
        required this.middleNotes,
        required this.baseNotes,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        price: json["price"],
        description: json["description"],
        ukuran: json["ukuran"],
        aroma: json["aroma"],
        topNotes: json["top_notes"],
        middleNotes: json["middle_notes"],
        baseNotes: json["base_notes"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "price": price,
        "description": description,
        "ukuran": ukuran,
        "aroma": aroma,
        "top_notes": topNotes,
        "middle_notes": middleNotes,
        "base_notes": baseNotes,
    };
}
```

5) Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.

- Membuat file list_productentry.dart pada lib/screens

- Mengisi file list_productentry.dart dengan kode berikut
```
import 'package:flutter/material.dart';
import 'package:breezy/models/product_entry.dart';
import 'package:breezy/widgets/left_drawer.dart';
import 'package:breezy/screens/product_detail.dart'; 
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class ProductEntryPage extends StatefulWidget {
  const ProductEntryPage({super.key});

  @override
  State<ProductEntryPage> createState() => _ProductEntryPageState();
}

class _ProductEntryPageState extends State<ProductEntryPage> {
  Future<List<ProductEntry>> fetchProduct(CookieRequest request) async {
    final response = await request.get('http://127.0.0.1:8000/json/');
    var data = response;
    List<ProductEntry> listProduct = [];
    for (var d in data) {
      if (d != null) {
        listProduct.add(ProductEntry.fromJson(d));
      }
    }
    return listProduct;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchProduct(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData) {
              return const Center(
                child: Text(
                  'No product data available yet.',
                  style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
                ),
              );
            } else {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Menampilkan 3 card per baris
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  mainAxisExtent: 220, // Mengatur tinggi card
                ),
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetailPage(
                          product: snapshot.data![index],
                        ),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 3.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min, // Tambahkan ini agar Column mengikuti konten
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity, // Pastikan container membentang penuh
                          padding: const EdgeInsets.all(8.0),
                          decoration: const BoxDecoration(
                            color: Color(0xffB7C4CF), // Warna biru muda
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                snapshot.data![index].fields.name,
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                "IDR ${snapshot.data![index].fields.price}",
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black87,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            snapshot.data![index].fields.description,
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontSize: 12.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
          }
        },
      ),
    );
  }
}
```
- Menambahkan list_moodentry.dart ke widgets/left_drawer.dart dengan menambahkan kode berikut
```
ListTile(
              leading: const Icon(Icons.card_giftcard),
              title: const Text('Daftar Produk'),
              onTap: () {
                  // Route menu ke halaman mood
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ProductEntryPage()),
                  );
              },
          ),
```

- Mengubah fungsi tombol Lihat Produk pada halaman utama agar mengarahkan ke halaman ProductEntryPage pada file widgets/product_card.dart

```
 else if (item.name == "Lihat Daftar Produk") {
              Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => const ProductEntryPage()
                ),
              );
            }
```

6) Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item

- Membuat file product_detail.dart pada lib/screens lalu isi baris kode berikut
```
import 'package:flutter/material.dart';
import 'package:breezy/models/product_entry.dart';
import 'package:breezy/widgets/left_drawer.dart';

class ProductDetailPage extends StatelessWidget {
  final ProductEntry product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.fields.name),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "IDR ${product.fields.price}",
              style: const TextStyle(
                fontSize: 24.0,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(product.fields.description),
            const SizedBox(height: 16.0),
            Text("Size: ${product.fields.ukuran}"),
            const SizedBox(height: 8.0),
            Text("Aroma: ${product.fields.aroma}"),
            const SizedBox(height: 8.0),
            Text("Top Notes: ${product.fields.topNotes}"),
            const SizedBox(height: 8.0),
            Text("Middle Notes: ${product.fields.middleNotes}"),
            const SizedBox(height: 8.0),
            Text("Base Notes: ${product.fields.baseNotes}"),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Back to Product List'),
            ),
          ],
        ),
      ),
    );
  }
}
```

- Menambahkan ontap pada list_productentry.dart untuk mengarahkan ke product detail

```
onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => ProductDetailPage(
        product: snapshot.data![index],
      ),
    ),
  );
},
```

7)  Melakukan filter pada halaman daftar item dengan hanya menampilkan item yang terasosiasi dengan pengguna yang login
Pada fungsi show_xml dan show_json di main/views.py Django:

```
def show_xml(request):
    data = Product.objects.filter(user=request.user)
    return HttpResponse(serializers.serialize("xml", data), content_type="application/xml")
```

```
def show_json(request):
    data = Product.objects.filter(user=request.user)
    return HttpResponse(serializers.serialize("json", data), content_type="application/json")
```

Kedua fungsi ini menggunakan filter(user=request.user) untuk memfilter objek Product sehingga hanya menampilkan data yang dimiliki oleh user yang sedang login, yang bekerja dengan
- request.user merujuk pada user yang sedang login saat ini
- filter() adalah method Django ORM yang memfilter query berdasarkan kondisi yang diberikan
- user=request.user memastikan hanya data yang field user-nya sama dengan user yang login yang akan ditampilkan

Selain itu, untuk memastikan hanya user yang sudah login yang bisa mengakses data, beberapa fungsi seperti show_main dilindungi dengan decorator @login_required
```
@login_required(login_url='/login')
def show_main(request):

    context = {
        'nama' : request.user.username,
        'kelas' : 'PBP-A',
        'last_login': request.COOKIES['last_login'],
    }

    return render(request, "main.html", context)
```

Saat membuat product baru, baik melalui form biasa, AJAX, maupun Flutter, product tersebut otomatis terasosiasi dengan user yang membuatnya:
```
def create_product_entry(request):
    form = ProductForm(request.POST or None)

    if form.is_valid() and request.method == "POST":
        product_entry = form.save(commit=False)
        product_entry.user = request.user
        product_entry.save()
        return redirect('main:show_main')

    context = {'form': form}
    return render(request, "create_product_entry.html", context)
```

```
@csrf_exempt
def create_product_flutter(request):
    if request.method == 'POST':
        data = json.loads(request.body)
        new_product = Product.objects.create(
            user=request.user,
            name=data["name"],
            price=int(data["price"]),
            description=data["description"],
            ukuran=data["ukuran"],
            aroma=data["aroma"],
            top_notes=data["top"],      
            middle_notes=data["middle"], 
            base_notes=data["base"]   
        )

        new_product.save()

        return JsonResponse({"status": "success"}, status=200)
    else:
        return JsonResponse({"status": "error"}, status=401)
```
