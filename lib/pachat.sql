-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2018 at 08:59 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pachat`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_basispengetahuan`
--

CREATE TABLE `tbl_basispengetahuan` (
  `id_basispeng` int(11) NOT NULL,
  `kata_kunci` text NOT NULL,
  `jawaban` text NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_basispengetahuan`
--

INSERT INTO `tbl_basispengetahuan` (`id_basispeng`, `kata_kunci`, `jawaban`, `deleted_at`, `updated_at`) VALUES
(1, 'errormessageerrormessage', 'Maaf.. saya belum bisa menjawab pertanyaan anda. silahkan ajukan pertanyaan kembali :)', NULL, '2018-08-01 14:32:36'),
(2, 'matakuliah wajib semester 3 s1 informatika', 'Matakuliah Wajib semester 3 S1 Informatika yaitu : C31040201 (STRUKTUR DATA - 2 SKS), C31040203 (PEMROGRAMAN VISUAL - 2 SKS), C31040205 (SISTEM OPERASI - 2 SKS), C31040207 (KOMUNIKASI DATA - 2 SKS),  C31040209 (PERANGKAT LUNAK JARINGAN 1 - 3 SKS),  C31040211 (TEKNIK DIGITAL + PRAK - 3 SKS),  C31040215 (KALKULUS 2 - 2 SKS), C31040217 (FISIKA LISTRIK & MAGNET - 2 SKS ),  C31040219 (SUMBER DAYA ENERGI - 2 SKS). JUMLAH TOTAL : 20 SKS', NULL, '2018-08-05 15:20:14'),
(3, 'efisien isi krs', 'Waktu yang efisien dalam mengisi KRS adalah pada saat website anjungan mahasiswa sedang tidak digunakan oleh banyak mahasiswa pada waktu yang bersamaan, karena nantinya akan mengakibatkan proses yang lama dan lemot.', NULL, '2018-07-07 17:14:56'),
(4, 'krs', 'Kartu Rencana Studi (KRS) adalah kartu yang digunakan untuk merencanakan Matakuliah yang akan diambil. Di kertas KRS akan tertera Nama anda, NIM anda, Jurusan, dan jumlah semester yang yang sedang diikuti. Kartu inilah yang menjadi bukti selain Kartu Tanda Mahasiswa (KTM) merupakan bukti jika anda mahasiswa aktif studi di STT PLN Jakarta. ', NULL, NULL),
(5, 'lambat finalisasi krs', 'Jika anda terlambat melakukan finalisasi sesuai dengan jadwal yang sudah ditentukan segera menghubungi bagian BAAK untuk lebih lanjut dikarenakan sanksi ketika anda terlambat melakukan KRS adalah tidak bisa melanjutkan perkuliahan di semester yang akan datang.', NULL, '2018-07-07 04:42:32'),
(6, 'kelas penuh', 'Jika kelas yang anda pilih ketika KRS sudah penuh atau melebihi kapasitas kelas, anda dapat melakukan penghapusan kelas Matakuliah yang bersangkutan di kelas tersebut lalu memilih kelas yang masih kosong atau belum memenuhi kapasitas kelas untuk Matakuliah tersebut.', NULL, NULL),
(7, 'salah isi krs', 'Jika anda salah saat mengisi KRS, anda dapat menghapus Jadwal Matakuliah yang keliru saat anda pilih sebelumnya setelah itu anda melakukan pemilihan Jadwal Matakuliah yang sesuai kembali.', NULL, NULL),
(8, 'lambat isi krs', 'Jika anda terlambat dalam mengisi KRS sesuai jadwal tiap angkatan yang sudah ditentukan, anda dapat melakukannya kembali di KRS Bersama semua angkatan yang diadakan di akhir setelah semua angkatan telah melalukan KRS masing-masing.', NULL, NULL),
(9, 'isi krs', 'Cara mengisi KRS adalah dengan membuka terlebih dahulu website anjungan STT PLN di www.mahasiswa.sttpln.ac.id kemudian setelah masuk pada tampilan anjungan mahasiswa, kita memilih menu Kartu Rencana Studi (KRS). Cara mengisi KRS sering diajarkan oleh tiap-tiap jurusan pada saat sosialisasi KRS yang diadakan oleh jurusan dan juga oleh Himpunan Mahasiswa Jurusan (HMJ).', NULL, NULL),
(10, 'dosen matakuliah', 'Dosen akan mengajarkan Matakuliah di kampus. secara umum 1 matakuliah akan diajarkan oleh beberapa dosen sehingga Mahasiswa dapat memilih dosen mana yang cocok untuk diambil dalam memilih matakuliah ketika KRS.', NULL, NULL),
(11, 'batas isi krs', 'Batas pengisian KRS adalah 2 hari 2 malah untuk tiap angkatan dimana jadwalnya nanti akan dikeluarkan oleh Kampus STT PLN.', NULL, NULL),
(12, 'rekomendasi matakuliah semester depan', 'Untuk rekomendasi matakuliah pada semester depan adalah mengutamakan dahulu matakuliah wajibnya. kenapa harus mengutamakan matakuliah wajib agar nantinya anda dapat selalu fokus menyesaikan di tiap semesternya, setelah itu baru merancang matakuliah pilihan yang akan diambil di tiap semester.', NULL, NULL),
(13, 'semester 1 2 paket', 'Berdasarkan aturan dan regulasi dari kampus sehingga membuat Semester 1 dan 2 pasti akan dipaket. karena semester 1 dan 2 telah menjadi paket, maka nanti di semester 3 dan seterusnya baru akan dibebankan kepada mahasiswa yang bersangkutan untuk memilih dan merancang matakuliahnya masing-masing.', NULL, NULL),
(14, 'semester 1 2 paketin', 'Berdasarkan aturan dan regulasi dari kampus sehingga membuat Semester 1 dan 2 pasti akan dipaket. karena semester 1 dan 2 telah menjadi paket, maka nanti di semester 3 dan seterusnya baru akan dibebankan kepada mahasiswa yang bersangkutan untuk memilih dan merancang matakuliahnya masing-masing.', NULL, NULL),
(15, 'maksimal sks', 'Maksimal SKS yang dapat diambil adalah menyesuaikan Indeks Prestasi Semester (IPS) yang diraih oleh mahasiswa tersebut. untuk IPS < 3.00 hanya dapat mengambil maksimal 22 SKS sedangkan untuk IPS > 3.00 maka dapat mengambil sampai 24 SKS.', NULL, NULL),
(16, 'atur ambil sks sesuai ipk semester', 'Aturan dalam mengambil jumlah SKS  adalah dengan menyesuaikan Indeks Prestasi Semester (IPS) yang diraih oleh mahasiswa tersebut. untuk IPS < 3.00 hanya dapat mengambil maksimal 22 SKS sedangkan untuk IPS > 3.00 maka dapat mengambil sampai 24 SKS.', NULL, NULL),
(17, 'pilih dosen', 'Agar nantinya anda tepat dalam memilih dosen pada matakuliah yang ingin anda ambil, anda harus terlebih dahulu mengetahui dosen-dosen siapa aja yang mengajar matakuliah tersebut lalu menyesuaikan pada jadwal di Blangko RPM. untuk mengetahuinya bisa melalui jurusan masing-masing.', NULL, NULL),
(18, 'matakuliah prasyarat', 'Matakuliah Prasyarat adalah matakuliah yang jika ingin diambil diharuskan untuk lulus dalam matakuliah sebelumnya dikarenakan memiliki keterkaitan dalam segi materi pembelajaran. Matakuliah Prasyarat dapat dilihat di menu Blangko RPM. pada tabel tertera kolom Prasyarat lalu akan berisikan Kode Matakuliah yang harus lulus terlebih dahulu sebelum mengambil matakuliah tersebut. untuk setiap jurusan memiliki matakuliah prasyarat yang berbeda-beda dengan aturan yang bervariasi.', NULL, '2018-07-07 16:39:16'),
(19, 'syarat ambil matakuliah', 'Syarat-syarat dalam mengambil matakuliah adalah berstatus sebagai mahasiswa AKTIF di STT PLN, juga nantinya diwajibkan untuk melakukan pembayaran jumlah SKS yang telah diambil pada saat jadwal mengisi KRS.', NULL, NULL),
(20, 'rekomendasi matakuliah pilihan', 'Saat anda memilih Matakuliah Pilihan terlebih dahulu harus mengetahui dengan jelas dasar-dasar yang harus dipersiapkan dalam mengambil matakuliah tersebut. Matakuliah apa saja yang harus disiapkan agar nantinya tidak kesusahan dalam mempelajari Matakuliah Pilihan cukup penting untuk diperhatikan karena nantinya anda harus menentukan konsentrasi bidang pada Matakuliah Pilihan yang anda pilih sesuai passion anda.', NULL, '2018-07-15 20:14:29'),
(21, 'sks', 'Satuan Kredit Semester (SKS) adalah sistem yang memberikan keleluasaan kepada mahasiswa dalam memilih dan menyusun total SKS yang ingin diambil tiap semesternya. di STT PLN sendiri untuk menentukan berapa total SKS yang boleh diambil berdasarkan nilai Indeks Prestasi Semester (IPS) yang diraih pada semester terakhir.', NULL, NULL),
(22, 'blangko rpm', 'Blangko Rencana Pengambilan Matakuliah (RPM) adalah susunan jadwal Matakuliah pada Semester Genap/Ganjil setiap hari sesuai jamnya yang dikeluarkan secara resmi oleh masing-masing jurusan. Pada Blangko akan berisikan hari, jam dan kelas Matakuliah tersebut diadakan. Namun, tidak mengandung kode dari Dosen terkait yang mengajar matakuliah tersebut. Blangko RPM sangat berguna disaat pengisian KRS karena dapat membantu mahasiswa dalam menentukan jadwal yang disusun.', NULL, NULL),
(23, 'matakuliah pilihan', 'Matakuliah Pilihan adalah matakuliah yang dihadirkan oleh jurusan masing-masing untuk mendukung penjurusan mahasiswa dalam memilih konsentrasi bidangnya. Maksud Konsentrasi sendiri pada Matakuliah Pilihan adalah bidang-bidang yang terdapat di Matakuliah Pilihan. Matakuliah Pilihan tidak bersifat Wajib untuk diambil namun akan membantu menambah pengetahuan dan mengarahkan mahasiswa pada konsentrasi bidang yang diinginkan di masing-masing jurusan. Untuk mengetahui Matakuliah Pilihan lebih lanjut bisa memberikan pertanyaan dengan format : MATAKULIAH PILIHAN [spasi] (nama jurusan), contoh : MATAKULIAH PILIHAN [spasi] S1 INFORMATIKA.', NULL, '2018-08-09 13:43:10'),
(24, 'matakuliah wajib semester 4 s1 informatika', 'Matakuliah Wajib semester 4 S1 Informatika yaitu :  C31040202 (BAHASA RAKITAN - 2 SKS),  C31040204 (SISTEM BERKAS - 2 SKS),  C31040206 (PEMROGRAMAN OBJEK - 2 SKS),  C31040208 (PERANGKAT LUNAK JARINGAN 2 - 2 SKS),  C31040210 (MIKROPROSESOR + PRAK - 3 SKS),   C31040214 (TEORI BAHASA & OTOMATA - 2 SKS),  C31040216 (PENGOLAHAN CITRA - 2 SKS),  C31040218 (ETIKA PROFESI - 2 SKS), C31040220 (RANGKAIAN LISTRIK + PRAK - 3 SKS). JUMLAH TOTAL : 20 SKS', NULL, '2018-08-06 04:25:19'),
(25, 'matakuliah wajib semester 5 s1 informatika', 'Matakuliah Wajib semester 5 S1 Informatika yaitu :  C31040301 (SISTEM INFORMASI - 2 SKS), C31040303 (PEMROGRAMAN SQL - 2 SKS),  C31040305 (TEKNIK KOMPILASI - 2 SKS),  C31040307 (KECERDASAN BUATAN - 2 SKS), C31040309 (TEKNIK ANIMASI - 2 SKS),  C31040311 (SISTEM BASIS DATA + PRAK - 3 SKS),  C31040315 (JARINGAN KOMPUTER + PRAK - 3 SKS),  C31040319 (KEAMANAN SISTEM KOMPUTER - 2 SKS),  C31040321 (METODE NUMERIK - 2 SKS). JUMLAH TOTAL : 20 SKS', NULL, '2018-08-05 15:21:33'),
(26, 'matakuliah wajib semester 8 s1 informatika', 'Matakuliah Wajib semester 8 S1 Informatika yaitu :  C31040402 (Co - Ops Magang - 4 SKS),  C31040404 (SKRIPSI - 6 SKS). JUMLAH TOTAL : 10 SKS', NULL, '2018-08-06 04:25:35'),
(27, 'matakuliah wajib semester 6 s1 informatika', 'Matakuliah Wajib semester 6 S1 Informatika yaitu : C31040302 (ANALISA ALGORITMA - 2 SKS),  C31040304 (PERANCANGAN BASIS DATA - 2 SKS),  C31040306 (SIMULASI & PEMODELAN - 2 SKS),  C31040308 (SISTEM PENDUKUNG KEPUTUSAN - 2 SKS), C31040310 (REKAYASA SISTEM INFORMASI - 2 SKS), C31040312 (KOMPUTER & MASYARAKAT - 2 SKS),  C31040314 (MULTIMEDIA - 2 SKS),  C31040316 (EKONOMI TEKNIK - 2 SKS). JUMLAH TOTAL : 20 SKS', NULL, '2018-08-05 15:22:55'),
(28, 'matakuliah wajib semester 1 s1 informatika', 'Matakuliah Wajib semester 1 S1 Informatika yaitu :  C31040101 (PENDIDIKAN AGAMA - 2 SKS),  C31040103 (PANCASILA - 2 SKS), C31040105 (BAHASA INGGRIS TEKNIK - 2 SKS), C31040107 (ALGORITMA PEMROGRAMAN 1 + PRAK - 3 SKS), C31040111 (TEKNOLOGI INFORMASI - 2 SKS),   C31040113 (ALJABAR LINIER - 3 SKS), C31040115 (LOGIKA MATEMATIKA - 3 SKS), C31040117 (FISIKA MEKANIKA - 2 SKS). JUMLAH TOTAL : 19 SKS', NULL, '2018-08-06 04:27:35'),
(29, 'matakuliah wajib semester 2 s1 informatika', 'Matakuliah Wajib semester 2 S1 Informatika yaitu :  C31040102 (PENDIDIKAN KEWARGANEGARAAN - 2 SKS), C31040104 (BAHASA INDONESIA PENELITIAN - 2 SKS), C31040106 (ALGORITMA PEMROGRAMAN 2 + PRAK - 3 SKS), C31040110 (STATISTIK + PRAK - 3 SKS), C31040114 (INTERAKSI MANUSIA DAN KOMPUTER - 3 SKS), C31040116 (ORGANISASI & ARSITEKTUR KOMPUTER - 3 SKS), C31040118 (KALKULUS 1 - 2 SKS), C31040120 (MATEMATIKA DISKRET - 2 SKS). JUMLAH TOTAL : 20 SKS', NULL, '2018-08-05 15:24:26'),
(30, 'nama', 'Nama saya PAChat, saya adalah teman anda untuk membimbing dalam menjelaskan seputar Matakuliah :)', NULL, '2018-07-13 19:41:02'),
(31, 'matakuliah wajib semester 7 s1 informatika', 'Matakuliah Wajib semester 7 S1 Informatika yaitu :  C31040401 (RISET OPERASI - 2 SKS), C31040403 (METODE PENELITIAN ILMU KOMPUTER - 2 SKS), C31040405 (MANAJEMEN TEKNIK - 2 SKS), C31040409 (PEMROSESAN PARAREL - 2 SKS), C31040411 (SISTEM SYARAF BUATAN - 2 SKS), C31040413 (REKAYASA PERANGKAT LUNAK + PRAK - 4 SKS). JUMLAH TOTAL : 20 SKS', NULL, '2018-08-05 15:25:34'),
(32, 'matakuliah pilihan s1 informatika', 'Matakuliah Pilihan di S1 Informatika memiliki 2 konsentrasi bidang yaitu : (1) Konsentrasi Sistem Informasi dan Rekayasa Perangkat Lunak, dan (2) Konsentrasi Jaringan dan Komputasi Cerdas. Matakuliah Pilihan di S1 Informatika mulai dapat diambil setelah berada di Semester 6 dan telah menyelesaikan semua Matakuliah Wajib dari Semester 1-5. kembali lagi Matakuliah Pilihan tidak wajib untuk diambil semua konsentrasi bidangnya. mahasiswa cukup memilih bidang yang akan menjadi konsentrasinya pada semester depan dan akan membantu ketika mengerjakan Tugas Akhir (SKRIPSI) nantinya. Matakuliah Pilihan di S1 Informatika dapat diambil ketika memasuki Semester 6-8. Untuk informasi lebih lanjut seputar Matakuliah Pilihan berdasarkan semesternya bisa memberikan pertanyaan dengan format : MATAKULIAH PILIHAN [spasi] SEMESTER 6 [spasi] S1 INFORMATIKA.', NULL, '2018-08-05 16:11:49'),
(33, 'matakuliah pilihan semester 6 s1 informatika', 'Matakuliah Pilihan semester 6 S1 Informatika yaitu : (1) Konsentrasi Sistem Informasi dan Rekayasa Perangkat Lunak => C31041302 (SISTEM INFORMASI GEOGRAFIS - 2 SKS), C31041304 (DESIGN GRAFIS - 2 SKS), C31041306 (TECHNOPRENEURSHIP - 2 SKS), C31041308 (CLOUD COMPUTING). (2) Konsentrasi Jaringan dan Komputasi Cerdas => C31042302 (PENGANTAR TEKNOLOGI SCADA - 2 SKS), C31042304 (PLC - 2 SKS), C31042306 (MIKROKONTROLLER - 2 SKS), C31042308 (PERANCANGAN DAN MANAJEMEN JARINGAN - 2 SKS).', NULL, '2018-07-15 19:58:23'),
(34, 'matakuliah pilihan semester 7 s1 informatika', 'Matakuliah Pilihan semester 6 S1 Informatika yaitu : (1) Konsentrasi Sistem Informasi dan Rekayasa Perangkat Lunak => C31041401 (DATA MINING DAN WAREHOUSING - 2 SKS), C31041403 (REKAYASA PENGEMBANGAN WEB - 2 SKS), C31041405 (AUDIT TI - 2 SKS), C31041407 (WEB DESIGN - 2 SKS), C31041409 (MOBILE PROGRAMMING), C31041411 (OPTIMASI BASIS DATA). (2) Konsentrasi Jaringan dan Komputasi Cerdas => C31042401 (EMBEDDED SYSTEM - 2 SKS), C31042403 (SISTEM DAN KINERJA JARINGAN - 2 SKS), C31042405 (PERANCANGAN KARTU CERDAS - 2 SKS), C31042407 (FORENSIK KOMPUTER DAN JARINGAN NETWORK FORENSIK - 2 SKS), C31042409 (ROBOTIK - 2 SKS).', NULL, NULL),
(35, 'hallo salam kenal', 'hallo..!! salam kenal juga', NULL, NULL),
(36, 'matakuliah wajib semester 1 s1 elektro', 'Matakuliah Wajib semester 1 S1 Elektro yaitu :  C11040101 (Kalulus 1 - 3 SKS), C11040103 (FISIKA MEKANIKA, FLUIDA & PANAS + PRAK - 3 SKS), C11040105 ( PRAK FISIKA MEKANIKA, FLUIDA & PANAS - 1 SKS), C11040107 (KIMIA & ILMU BAHAN - 2 SKS), C11040109 (PENDIDIKAN PANCASILA - 2 SKS), C11040111 (BAHASA INDONESIA - 2 SKS), C11040113 (BAHASA INGGRIS TEKNIK - 2 SKS), C11040115 (PENDIDIKAN AGAMA - 2 SKS). JUMLAH TOTAL : 18 SKS', NULL, '2018-08-05 16:53:02'),
(37, 'matakuliah wajib semester 2 s1 elektro', 'Matakuliah Wajib semester 2 S1 Elektro yaitu : C11040102 (KALKULUS II - 3 SKS), C11040104 (FISIKA LISTRIK MAGNET, GELOMBANG & OPTIK - 4 SKS), C11040106 (PRAK FISIKA LISTRIK MAGNET, GELOMBANG & OPTIK - 1 SKS), C11040108 (FISIKA MODERN - 2 SKS),   C11040110 (PENDIDIKAN KEWARGANEGARAAN - 2 SKS), C11040112 (DASAR KONVEKSI ENERGI LISTRIK - 2 SKS), C11040114 (ALGORITMA & PEMROGRAMAN - 2 SKS), C11040118 (PRAK ALGORITMA & PEMROGRAMAN - 1 SKS), C11040116 (ALJABAR LINEAR & ANALISA VEKTOR - 3 SKS). JUMLAH TOTAL : 20 SKS', NULL, '2018-08-06 04:26:20'),
(38, 'matakuliah wajib semester 3 s1 elektro', 'Matakuliah Wajib semester 3 S1 Elektro yaitu : C11040201 (MATEMATIKA TEKNIK - 3 SKS), C11040203 (ELEKTRONIKA + PRAK - 5 SKS), C11040207 (RANGKAIAN LISTRIK 1 - 4 SKS), C11040215 (PRAK RANGKAIAN LISTRIK 1 - 1 SKS), C11040209 (ANALISA BILANGAN KOMPLEKS - 2 SKS), C11040211 (SUMBER DAYA ENERGI - 2 SKS), C11040213 (PROBABILITAS & STATISTIKA - 2 SKS). JUMLAH TOTAL : 19 SKS', NULL, NULL),
(39, 'matakuliah wajib semester 4 s1 elektro', 'Matakuliah Wajib semester 4 S1 Elektro yaitu : C11040202 (METODE NUMERIK - 2 SKS), C11040204 (TEKNIK DIGITAL - 2 SKS), C11040206 (PRAK TEKNIK DIGITAL - 1 SKS), C11040208 (RANGKAIAN LISTRIK 2 - 4 SKS), C11040210 (SINYAL & SISTEM - 4 SKS), C11040212 (MEDAN ELEKTROMAGNETIK - 4 SKS), C11040214 (SISTEM TELEKOMUNIKASI - 2 SKS), C11040216 (PRAK SISTEM TELEKOMUNIKASI - 1 SKS). JUMLAH TOTAL : 20 SKS', NULL, '2018-08-06 04:26:37'),
(40, 'matakuliah wajib semester 5 s1 elektro', 'Matakuliah Wajib semester 5 S1 Elektro yaitu : C11040301 (PENGUKURAN BESARAN LISTRIK - 2 SKS), C11040303 (PRAK PENGUKURAN BESARAN LISTRIK - 1 SKS),  C11040305 (MK SERTIFIKASI I HAZARDUS AREA - 2 SKS), C11040307 (MIKROPROCESSOR - 2 SKS), C11040309 (PRAK MIKROPROCESSOR - 1 SKS),   C11040311 (ELEKTRONIKA DAYA - 3 SKS), C11040313 (PRAK ELEKTRONIKA DAYA - 1 SKS), C11040315 (MK SERTIFIKASI I K3 - 2 SKS), Sisanya anda dapat mengambil MATAKULIAH PILIHAN di SEMESTER 5 sampai batas maksimal 24 SKS. untuk melihat Matakuliah Pilihan Semester 5 S1 Elektro, bisa memberikan pertanyaan dengan format : MATAKULIAH PILIHAN [spasi] SEMESTER 5 [spasi] S1 ELEKTRO.', NULL, '2018-08-05 16:12:59'),
(41, 'matakuliah wajib semester 6 s1 elektro', 'Matakuliah Wajib semester 6 S1 Elektro yaitu : C11040302 (SISTEM KONTROL - 3 SKS), C11040304 (PRAK SISTEM KONTROL - 1 SKS), C11040306 (MK SERTIFIKASI II INSTALASI LISTRIK - 2 SKS), C11040308 (EKONOMI TEKNIK - 2 SKS), C11040310 (ILMU PENGETAHUAN LINGKUNGAN - 2 SKS), Sisanya anda dapat mengambil MATAKULIAH PILIHAN di SEMESTER 6 sampai batas maksimal 24 SKS. untuk melihat Matakuliah Pilihan Semester 6 S1 Elektro, bisa memberikan pertanyaan dengan format : MATAKULIAH PILIHAN [spasi] SEMESTER 6 [spasi] S1 ELEKTRO.', NULL, '2018-08-05 16:13:19'),
(42, 'matakuliah wajib semester 7 s1 elektro', 'Matakuliah Wajib semester 7 S1 Elektro yaitu : C11040401 (RISET OPERASI - 2 SKS), C11040403 (METODOLOGI PENELITIAN), C11040405 (MANAJEMEN TEKNIK - 2 SKS),  Sisanya anda dapat mengambil MATAKULIAH PILIHAN di SEMESTER 7 sampai batas maksimal 24 SKS. untuk melihat Matakuliah Pilihan Semester 7 S1 Elektro, bisa memberikan pertanyaan dengan format : MATAKULIAH PILIHAN [spasi] SEMESTER 7 [spasi] S1 ELEKTRO.', NULL, '2018-08-05 16:13:32'),
(43, 'matakuliah wajib semester 8 s1 elektro', 'Matakuliah Wajib semester 8 S1 Elektro yaitu : C110404500 (KERJA MAGANG - 4 SKS), C110404400 (SKRIPSI - 6 SKS). JUMLAH TOTAL : 10 SKS', NULL, '2018-08-05 16:52:41'),
(44, 'matakuliah pilihan s1 elektro', 'Matakuliah Pilihan di S1 Elektro memiliki 3 konsentrasi bidang yaitu : (1) Konsentrasi Tenaga Listrik, (2) Konsentrasi Energi Terbarukan, dan (3) Konsentrasi Elektronika Industri. Matakuliah Pilihan di S1 Elektro mulai dapat diambil setelah berada di Semester 5-7. kembali lagi Matakuliah Pilihan tidak wajib untuk diambil semua konsentrasi bidangnya. mahasiswa cukup memilih bidang yang akan menjadi konsentrasinya pada semester depan dan akan membantu ketika mengerjakan Tugas Akhir (SKRIPSI) nantinya. Untuk informasi lebih lanjut seputar Matakuliah Pilihan berdasarkan semesternya bisa memberikan pertanyaan dengan format : MATAKULIAH PILIHAN [spasi] SEMESTER 5 [spasi] S1 ELEKTRO.', NULL, '2018-08-05 16:10:56'),
(45, 'matakuliah pilihan semester 5 s1 elektro', 'Matakuliah Pilihan semester 5 S1 Elektro yaitu : (1) Konsentrasi Tenaga Listrik => C11041301 (TRAFO & MESIN INDUKSI - 4 SKS), C11041303 (PRAK TRAFO & MESIN INDUKSI - 1 SKS), C11041305 (PEMBANGKIT TENAGA LISTRIK - 2 SKS), C11041307 (TRANSMISI DAYA LISTRIK - 2 SKS). (2) Konsentrasi Energi Terbarukan => C11041301 (TRAFO & MESIN INDUKSI - 4 SKS), C11041303 (PRAK TRAFO & MESIN INDUKSI - 1 SKS), C11041305 (PEMBANGKIT TENAGA LISTRIK - 2 SKS), C11041307 (TRANSMISI DAYA LISTRIK - 2 SKS). (3) Konsentrasi Elektronika Industri => C11042301 (ELEKTRONIKA ANALOG - 4 SKS), C11042303 (SENSOR & TRANDUSER - 2 SKS), C11042305 (KOMUNIKASI DATA & TELEMETRI - 3 SKS).', NULL, '2018-08-01 11:27:34'),
(46, 'matakuliah pilihan semester 6 s1 elektro', 'Matakuliah Pilihan semester 6 S1 Elektro yaitu : (1) Konsentrasi Tenaga Listrik => C11041302 (MESIN ARUS SEARAH & MESIN SINKRON - 4 SKS), C11041304 (PRAK MESIN ARUS SEARAH & MESIN SINKRON - 1 SKS), C11041306 (DISTRIBUSI DAYA LISTRIK - 2 SKS), C11041308 (SISTEM SCADA - 2 SKS), C11041310 (MATERIAL TEKNIK LISTRIK - 2 SKS), C11041312 (PEMANFAATAN TENAGA LISTRIK - 2 SKS). (2) Konsentrasi Energi Terbarukan => C11041302 (MESIN ARUS SEARAH & MESIN SINKRON), C11041304 (PRAK MESIN ARUS SEARAH & MESIN SINKRON - 1 SKS), C11041306 (SEMIKONDUKTOR DAN SEL SURYA - 2 SKS), C11043304 (REAKTOR NUKLIR - 2 SKS). (3) Konsentrasi Elektronika Industri => C11042302 (MIKROKONTROLLER - 2 SKS), C11042304 (PRAK MIKROKONTROLLER - 1 SKS), C11042306 (MESIN MESIN LISTRIK - 3 SKS), C11042308 (PRAK MESIN MESIN LISTRIK - 1 SKS), C11042310 (PENGOLAHAN SINYAL DIGITAL - 2 SKS), C11042312 (TEKNIK KONTROL FUZZY - 2 SKS), C11042314 (SOFTWARE ENGINEERING - 2 SKS).', NULL, '2018-08-01 11:21:40'),
(47, 'matakuliah pilihan semester 7 s1 elektro', 'Matakuliah Pilihan semester 7 S1 Elektro yaitu : (1) Konsentrasi Tenaga Listrik => C11041401 (OPERASI SISTEM TENAGA LISTRIK - 2 SKS), C11041403 (TEKNIK TEGANGAN TINGGI - 2 SKS), C11041405 (PRAK TEKNIK TEGANGAN TINGGI - 1 SKS), C11041407 (PROTEKSI SISTEM TENAGA LISTRIK - 2 SKS), C11041409 (ANALISA SISTEM TENAGA LISTRIK - 3 SKS), C11041411 (PRAK ANALISA SISTEM TENAGA LISTRIK - 1 SKS), C11041413 (PERENCANAAN SISTEM TENAGA LISTRIK - 2 SKS), C11041415 (PENGGUNAAN MOTOR LISTRIK - 2 SKS). (2) Konsentrasi Energi Terbarukan => C11041401 (OPERASI SISTEM TENAGA LISTRIK - 2 SKS), C11041403 (TEKNIK TEGANGAN TINGGI - 2 SKS), C11041405 (PRAK TEKNIK TEGANGAN TINGGI - 1 SKS), C11041407 (PROTEKSI SISTEM TENAGA LISTRIK - 2 SKS), C11042401 (KOMP SIMETRIS & AN SISTEM TENAGA LISTRIK - 4 SKS), C11042403 (SMART GRID), C11042405 (TEKNOLOGI DAN EFFISIENSI ENERGI TERBARUKAN - 2 SKS). (3) Konsentrasi Elektronika Industri => C11042401 (ELEKTRONIKA INDUSTRI - 4 SKS), C11042403 (TEKNIK KONTROL LANJUT - 2 SKS), C11042405 (SISTEM KONTROL INDUSTRI - 4 SKS), C11042407 (PRAK SISTEM KONTROL INDUSTRI - 1 SKS), C11042409 (PLC - 2 SKS), C11042411 (SIST KONTROL PEMBANGKIT TENAGA LISTRIK - 2 SKS), C11042413 (OPTOELEKTRONIK & LASER - 2 SKS).', NULL, '2018-08-01 11:27:18'),
(48, 'matakuliah wajib', 'Matakuliah wajib dapat dilihat melalui Kode Matakuliah terkait. Sebagai contoh C31040301 (SISTEM INFORMASI). angka pada digit ke 6 jika mengandung angka 0 maka dikatakan Matakuliah Wajib untuk diambil. namun jika terkandung angka selain 0 sebagai contoh C31042401 (EMBEDDED SYSTEM), matakuliah tersebut termasuk dalam Matakuliah Pilihan. untuk menanyakan mengenai Matakuliah Wajib tiap semester anda bisa memasukkan pertanyaan dengan format : MATAKULIAH WAJIB [spasi] (semester) [spasi] (nama jurusan), contoh : MATAKULIAH WAJIB [spasi] SEMESTER 1 [spasi] S1 INFORMATIKA.', NULL, '2018-08-05 16:28:14'),
(49, 'matakuliah wajib semester 1 s1 mesin', 'Matakuliah Wajib semester 1 S1 Mesin yaitu : C12040101 (PENDIDIKAN AGAMA - 2 SKS), C12040103 (BAHASA INDONESIA - 2 SKS), C12040105 (PENDIDIKAN PANCASILA - 2 SKS), C12040107 (KALKULUS - 3 SKS), C12040109 (FISIKA MEKANIKA - 2 SKS), C12040111 (FISIKA FLUIDA & PANAS - 2 SKS), C12040113 (PRAK FISIKA FLUIDA & PANAS - 1 SKS), C12040115 (KIMIA DASAR - 2 SKS), C12040117 (PRAK KIMIA DASAR - 1 SKS), C12040119 (MENGGAMBAR TEKNIK - 2 SKS), C12040121 (PRAK MENGGAMBAR TEKNIK - 1 SKS). JUMLAH TOTAL : 20 SKS', NULL, NULL),
(50, 'matakuliah wajib semester 2 s1 mesin', 'Matakuliah Wajib semester 2 S1 Mesin yaitu : C12040102 (PENDIDIKAN KEWARGANEGARAAN - 2 SKS), C12040104 (BAHASA INGGRIS TEKNIK - 2 SKS), C12040106 (KALKULUS LANJUT - 3 SKS), C12040108 (FISIKA LISTRIK & MAGNET - 2 SKS), C12040110 (PRAK FISIKA LISTRIK & MAGNET - 1 SKS), C12040112 (STATIKA STRUKTUR - 2 SKS), C12040114 (PROSES PRODUKSI 1 - 2 SKS), C12040116 (MENGGAMBAR MESIN - 2 SKS), C12040118 (PRAK MENGGAMBAR MESIN - 1 SKS), C12040120 (PRAK CAD/CAM - 1 SKS), C12040122 (TEKNIK LINGKUNGAN PEMBANGKITAN - 2 SKS). JUMLAH TOTAL : 20 SKS', NULL, NULL),
(51, 'matakuliah wajib semester 3 s1 mesin', 'Matakuliah Wajib semester 3 S1 Mesin yaitu : C12040201 (ALJABAR LINEAR - 3 SKS), C12040203 (METODE NUMERIK - 2 SKS), C12040205 (SUMBER DAYA ENERGI - 2 SKS), C12040207 (MEKANIKA KEKUATAN MATERIAL - 2 SKS), C12040209 (METALURGI FISIK - 2 SKS), C12040211 (PRAK ILMU LOGAM - 1 SKS), C12040213 (PROSES PRODUKSI 2 - 2 SKS), C12040215 (KINEMATIKA - 2 SKS), C12040217 (TERMODINAMIKA 1 - 2 SKS), C12040219 (MEKANIKA FLUIDA 1 - 2 SKS). JUMLAH TOTAL : 20 SKS', NULL, NULL),
(52, 'matakuliah wajib semester 4 s1 mesin', 'Matakuliah Wajib semester 4 S1 Mesin yaitu : C12040202 (MATEMATIKA TEKNIK - 3 SKS), C12040204 (PROBABILITAS & STATISTIK - 2 SKS), C12040206 (PRAK PROSES PRODUKSI), C12040208 (DINAMIKA - 2 SKS ), C12040210 (MATERIAL TEKNIK - 2 SKS), C12040212 (ELEMEN MESIN 1 - 2 SKS), C12040214 (PERPINDAHAN PANAS - 3 SKS), C12040216 (TERMODINAMIKA 2 - 2 SKS), C12040218 (MEKANIKA FLUIDA 2 - 2 SKS), C12040220 (PRAK FENOMENA DASAR MESIN - 1 SKS). JUMLAH TOTAL : 20 SKS', NULL, NULL),
(53, 'matakuliah wajib semester 5 s1 mesin', 'Matakuliah Wajib semester 5 S1 Mesin yaitu : C12040301 (SISTEM PNEUMATIK & HIDROLIK - 2 SKS), C12040303 (GETARAN MEKANIS - 2 SKS), C12040305 (ELEMEN MESIN 2 - 3 SKS), C12040307 (TUGAS ELEMEN MESIN -  1 SKS), C12040309 (MOTOR BAKAR - 2 SKS), C12040311 (TEKNIK TENAGA UAP - 2 SKS), C12040313 (TEKNIK TENAGA AIR - 2 SKS), C12040315 (TEKNIK PENGATURAN - 2 SKS), C12040317 (MEKATRONIKA - 2 SKS), C12040319 (SMK 3 - 2 SKS). JUMLAH TOTAL : 20 SKS', NULL, NULL),
(54, 'matakuliah wajib semester 6 s1 mesin', 'Matakuliah Wajib semester 6 S1 Mesin yaitu : C12040302 (KEWIRAUSAHAAN - 2 SKS), C12040304 (HUKUM & PERATURAN - 2 SKS), C12040306 (INSTRUMEN & PENGUKURAN - 2 SKS), C12040308 (TEKNIK TENAGA LISTRIK - 2 SKS), C12040310 (PRAK TEKNIK TENAGA LISTRIK - 1 SKS), C12040312 (POMPA DAN KOMPRESOR - 2 SKS), C12040314 (TEKNIK PENDINGINAN - 2 SKS), C12040316 (PRAK KONVERSI ENERGI -  1 SKS), C12040318 (TEKNIK TENAGA GAS - 2 SKS). Sisanya anda dapat mengambil MATAKULIAH PILIHAN di SEMESTER 6 sampai batas maksimal 24 SKS. untuk melihat Matakuliah Pilihan Semester 6 S1 Mesin, bisa memberikan pertanyaan dengan format : MATAKULIAH PILIHAN [spasi] SEMESTER 6 [spasi] S1 MESIN.', NULL, NULL),
(55, 'matakuliah wajib semester 7 s1 mesin', 'Matakuliah Wajib semester 7 S1 Mesin yaitu : C12040401 (RISET OPERASI - 2 SKS), C12040403 (BAHAN BAKAR & PELUMAS - 2 SKS), C12040405 (ASSET MANAJEMEN - 2 SKS), C12040407 (METODOLOGI PENELITIAN - 2 SKS), C12040409 (MANAJEMEN TEKNIK - 2 SKS), C12040411 (EKONOMI TEKNIK - 2 SKS), C12040413 (PROGRAM APLIKASI KOMPUTER - 2 SKS). Sisanya anda dapat mengambil MATAKULIAH PILIHAN di SEMESTER 7 sampai batas maksimal 24 SKS. untuk melihat Matakuliah Pilihan Semester 7 S1 Mesin, bisa memberikan pertanyaan dengan format : MATAKULIAH PILIHAN [spasi] SEMESTER 7 [spasi] S1 MESIN.', NULL, NULL),
(56, 'matakuliah wajib semester 8 s1 mesin', 'Matakuliah Wajib semester 8 S1 Mesin yaitu : C12040400 (KERJA MAGANG - 4 SKS), C12040500 (SKRIPSI - 6 SKS).', NULL, NULL),
(57, 'matakuliah pilihan semester 6 s1 mesin', 'Matakuliah Pilihan semester 6 S1 Mesin yaitu : C12041302 (PERPINDAHAN PANAS LANJUT - 2 SKS), C12041304 (PERENCANAAN MESIN FLUIDA - 2 SKS), C12041306 (TURBIN GAS DAN ALAT BANTU - 2 SKS), C12041308 (KETEL UAP & ALAT BANTU - 2 SKS), C12041310 (PEMBANGKIT LISTRIK TENAGA MESIN GAS (PLTMG) - 2 SKS), C12041312 (PERENCANAAN PENGKONDISIAN UDARA - 2 SKS), C12042302 (METAL MATRIK KOMPOSIT - 2 SKS), C12042304 (TEKNIK PENGOLAHAN BAHAN - 2 SKS), C12042306 (KOROSI & PENCEGAHANNYA - 2 SKS), C12042308 (TEKNIK PENGELASAN - 2 SKS).', NULL, NULL),
(58, 'matakuliah pilihan semester 7 s1 mesin', 'Matakuliah Pilihan semester 7 S1 Mesin yaitu : C12041401 (PENUKAR KALOR [HEAT EXCHANGERR] - 2 SKS), C12041403 (MESIN KONVERSI ENERGI TERBARUKAN - 2 SKS), C12041405 (TURBIN AIR & ALAT BANTU - 2 SKS), C12041407 (TURBIN UAP & ALAT BANTU - 2 SKS), C12041409 (AIR KETEL & AIR PENDINGIN - 2 SKS), C12041411 (TEKNIK PENDINGIN LANJUT -  2 SKS), C12041413 (PERENCANAAN MESIN PENDINGIN - 2 SKS), C12042401 (ANALISA KERUSAKAN - 2 SKS), C12042403 (PEMILIHAN BAHAN & PROSES - 2 SKS), C12042405 (MEKANIKA METALURGI - 2 SKS).', NULL, '2018-08-07 06:52:34'),
(59, 'matakuliah wajib semester 1 s1 sipil', 'Matakuliah Wajib semester 1 S1 Sipil yaitu : C21040101 (KALKULUS - 3 SKS), C21040103 (FISIKA DASAR - 2 SKS), C21040105 (PRAK FISIKA DASAR - 1 SKS), C21040107 (KIMIA TERAPAN - 2 SKS), C21040109 (PRAK KIMIA TERAPAN -  1 SKS), C21040111 (PENDIDIKAN AGAMA - 2 SKS), C21040113 (GEOLOGI TEKNIK - 2 SKS), C21040115 (BAHASA INGGRIS - 2 SKS), C21040117 (PANCASILA - 2 SKS), C21040119 (GAMBAR TEKNIK - 3 SKS). JUMLAH TOTAL : 20 SKS', NULL, NULL),
(60, 'matakuliah wajib semester 2 s1 sipil', 'Matakuliah Wajib semester 2 S1 Sipil yaitu : C21040102 (KALKULUS LANJUT - 3 SKS), C21040104 (STATIKA & PROBABILITAS - 2 SKS), C21040106 (KEWARGANEGARAAN - 2 SKS), C21040108 (BAHASA INDONESIA - 2 SKS), C21040110 (ILMU UKUR TANAH - 2 SKS), C21040112 (PRAK ILMU UKUR TANAH - 1 SKS), C21040114 (ALGORITMA & PEMROGRAMAN - 2 SKS), C21040116 (MEKANIKA STATIS TERTENTU 1 - 3 SKS), C21040118 (TEKNOLOGI BAHAN & STRUKTUR BANGUNAN - 3 SKS). JUMLAH TOTAL : 20 SKS', NULL, NULL),
(61, 'matakuliah wajib semester 3 s1 sipil', 'Matakuliah Wajib semester 3 S1 Sipil yaitu : C21040201 (ALJABAR LINEAR - 3 SKS), C21040203 (METODE NUMERIK - 2 SKS), C21040205 (SUMBER DAYA ENERGI - 2 SKS), C21040207 (MEKANIKA STATIS TERTENTU 2 - 2 SKS), C21040209 (ILMU LINGKUNGAN - 2 SKS), C21040211 (MEKANIKA TANAH 1 - 2 SKS), C21040213 (PRAK MEKANIKA TANAH 1 - 1 SKS), C21040215 (MEKANIKA FLUIDA - 3 SKS), C21040217 (PRAK MEKANIKA FLUIDA - 1 SKS), C21040219 (HIDROLOGI - 2 SKS). JUMLAH TOTAL : 20 SKS', NULL, NULL),
(62, 'matakuliah wajib semester 4 s1 sipil', 'Matakuliah Wajib semester 4 S1 Sipil yaitu : C21040202 (MATEMATIKA TEKNIK - 3 SKS), C21040204 (MEKANIKA TANAH 2 - 2 SKS), C21040206 (PRAK MEKANIKA TANAH 2 - 1 SKS), C21040208 (MEKANIKA BAHAN - 2 SKS), C21040210 (HIDROLIKA - 2 SKS), C21040212 (TEKNOLOGI BETON - 2 SKS), C21040214 (PRAK TEKNOLOGI BETON - 1 SKS), C21040216 (TEKNIK PENYEHATAN & LINGKUNGAN - 2 SKS), C21040218 (PERANCANGAN GEOMETRI DAN PERKERASAN JALAN - 3 SKS), C21040220 (REKAYASA PONDASI DANGKAL - 2 SKS). JUMLAH TOTAL : 20 SKS', NULL, NULL),
(63, 'matakuliah wajib semester 5 s1 sipil', 'Matakuliah Wajib semester 5 S1 Sipil yaitu : C21040301 (STRUKTUR BETON BERTULANG 1 - 2 SKS),  C21040303 (STRUKTUR BAJA 1 - 2 SKS), C21040305 (ANALISIS STRUKTUR STATIS TAK TENTU - 2 SKS), C21040307 (IRIGASI & BANGUNAN AIR - 2 SKS), C21040309 (REKAYASA PONDASI DALAM - 2 SKS), C21040311 (PEMINDAHAN TANAH MEKANIS - 2 SKS), C21040313 (PERENCANAAN DAN PEMODELAN TRANSPORTASI - 2 SKS), C21040315 (SISTEM MANAJEMEN KESEHATAN & KESELAMATAN KERJA - 2 SKS), C21040317 (PENGANTAR TEKNIK TENAGA LISTRIK - 2 SKS), C21040319 (DRAINASE & SANITASI LINGKUNGAN). JUMLAH TOTAL : 20 SKS', NULL, NULL),
(64, 'matakuliah wajib semester 6 s1 sipil', 'Matakuliah Wajib semester 6 S1 Sipil yaitu : C21040302 (EKONOMI TEKNIK - 2 SKS), C21040304 (STRUKTUR BETON BERTULANG 2 - 2 SKS), C21040306 (STUKTUR BAJA 2 - 2 SKS), C21040308 (MANAJEMEN KONSTRUKSI - 2 SKS), C21040310 (TEKNIK TENAGA AIR - 2 SKS), C21040312 (ANALISIS STRUKTUR METODE MATRIKS - 2 SKS), C21040314 (REKAYASA BENDUNGAN - 2 SKS), C21040316 (METODE PELAKSANAAN PROYEK KONSTRUKSI - 2 SKS). Sisanya anda dapat mengambil MATAKULIAH PILIHAN di SEMESTER 6 sampai batas maksimal 24 SKS. untuk melihat Matakuliah Pilihan Semester 6 S1 Sipil, bisa memberikan pertanyaan dengan format : MATAKULIAH PILIHAN [spasi] SEMESTER 6 [spasi] S1 SIPIL.', NULL, '2018-08-09 02:32:48'),
(65, 'matakuliah wajib semester 7 s1 sipil', 'Matakuliah Wajib semester 7 S1 Sipil yaitu : C21040401 (ASPEK HUKUM PROYEK KONSTRUKSI - 2 SKS), C21040403 (MANAJEMEN TEKNIK - 2 SKS), C21040405 (METODOLOGI PENELITIAN - 2 SKS), C21040407 (REKAYASA GEMPA - 2 SKS), C21040409 (ANGGARAN BIAYA PROYEK KONSTRUKSI - 2 SKS), C21040411 (RISET OPERASI - 2 SKS). Sisanya anda dapat mengambil MATAKULIAH PILIHAN di SEMESTER 7 sampai batas maksimal 24 SKS. untuk melihat Matakuliah Pilihan Semester 7 S1 Sipil, bisa memberikan pertanyaan dengan format : MATAKULIAH PILIHAN [spasi] SEMESTER 7 [spasi] S1 SIPIL.', NULL, NULL),
(66, 'matakuliah wajib semester 8 s1 sipil', 'Matakuliah Wajib semester 8 S1 Sipil yaitu : C21040400 (KERJA MAGANG - 4 SKS), C21040500 (SKRIPSI - 6 SKS). JUMLAH TOTAL : 10 SKS', NULL, NULL),
(67, 'matakuliah pilihan semester 6 s1 sipil', 'Matakuliah Pilihan semester 6 S1 Sipil yaitu : (1) Konsentrasi Struktur => C21041302 (ANALISIS DINAMIKA STRUKTUR - 2 SKS), C21041304 (PENYELIDIKAN LOKASI PROYEK - 2 SKS).  (2) Konsentrasi Hidro => C21042302 (TEKNIK PANTAI & PELABUHAN - 2 SKS), C21042304 (TEKNIK SUNGAI - 2 SKS).  (3) Konsentrasi Lingkungan => C21043302 (MANAJEMEN & PENGELOLAHAN AIR LIMBAH - 2 SKS), C21043304 (TRANSPOR SEDIMEN - 2 SKS). (3) Konsentrasi Manajemen Kontruksi => C21044302 (KONTRAK KONSTRUKSI - 2 SKS), C21044304 (PERENCANAAN & PENGENDALIAN PROYEK - 2 SKS).', NULL, '2018-08-09 07:12:25'),
(68, 'matakuliah pilihan semester 7 s1 sipil', 'Matakuliah Pilihan semester 6 S1 Sipil yaitu : (1) Konsentrasi Struktur => C21041401 (STRUKTUR BETON PERCETAK & PRATEGANG - 2 SKS), C21041403 (STRUKTUR BAJA KOMPOSIT - 2 SKS), C21041405 (STRUKTUR KAYU - 2 SKS). (2) Konsentrasi Hidro => C21042401 (PENGELOLAAN SUMBER DAYA AIR - 2 SKS), C21042403 (ALIRAN AIR TANAH - 2 SKS), C21042405 (HIDROLIKA TERAPAN - 2 SKS). (3) Konsentrasi Lingkungan => C21043401 (AMDAL & ANALISIS RESIKO LINGKUNGAN - 2 SKS), C21043403 (MANAJEMEN LINGKUNGAN PEMBANGKIT LISTRIK - 2 SKS), C21043405 (PENGELOLAAN AIR BERSIH - 2 SKS). (3) Konsentrasi Manajemen Kontruksi => C21044401 (SISTEM INFORMASI PROYEK KONSTRUKSI - 2 SKS), C21044403 (SISTEM MANAJEMEN MUTU PROYEK KONTRUKSI - 2 SKS), C21044405 (EVALUASI BIAYA KONTRUKSI & OPERASIONAL BANGUNAN - 2 SKS).', NULL, NULL),
(69, 'matakuliah pilihan s1 sipil', 'Matakuliah Pilihan di S1 Sipil memiliki 4 konsentrasi bidang yaitu : (1) Konsentrasi Struktur, (2) Konsentrasi Hidro, (3) Konsentrasi Lingkungan, dan (4) Konsentrasi Manajemen Kontruksi. Matakuliah Pilihan di S1 Sipil mulai dapat diambil setelah berada di Semester 6 & 7. kembali lagi Matakuliah Pilihan tidak wajib untuk diambil semua konsentrasi bidangnya. mahasiswa cukup memilih bidang yang akan menjadi konsentrasinya pada semester depan dan akan membantu ketika mengerjakan Tugas Akhir (SKRIPSI) nantinya. Untuk informasi lebih lanjut seputar Matakuliah Pilihan berdasarkan semesternya bisa memberikan pertanyaan dengan format : MATAKULIAH PILIHAN [spasi] SEMESTER 6 [spasi] S1 SIPIL.', NULL, NULL),
(70, 'matakuliah wajib semester 1 d3 elektro', 'Matakuliah Wajib semester 1 D3 Elektro yaitu : E71040101 (MATEMATIKA TERAPAN 1 - 3 SKS),   E71040103 (FISIKA LISTRIK & MAGNET - 2 SKS), E71040105 (PRAK FISIKA LISTRIK & MAGNET - 1 SKS), E71040107 (ILMU BAHAN - 2 SKS), E71040109 (PENDIDIKAN AGAMA - 2 SKS), E71040111 (BAHASA INDONESIA PELAPORAN - 2 SKS), E71040113 (BAHASA INGGRIS TEKNIK - 2 SKS), E71040115 (TEKNOLOGI MEKANIK - 2 SKS), E71040117 (PANCASILA - 2 SKS), E71040119 (PROGRAM APLIKASI KOMPUTER - 2 SKS), E71040121 (PRAK PROGRAM APLIKASI KOMPUTER - 1 SKS). JUMLAH TOTAL : 21 SKS', NULL, NULL),
(71, 'matakuliah wajib semester 2 d3 elektro', 'Matakuliah Wajib semester 2 D3 Elektro yaitu : E71040102 (MATEMATIKA TERAPAN 2 - 2 SKS), E71040104 (FISIKA MEKANIK & PANAS - 2 SKS), E71040106 (PRAK FISIKA MEKANIK & PANAS - 1 SKS), E71040108 (PENDIDIKAN KEWARGANEGARAAN - 2 SKS), E71040110 (KONVERSI TENAGA LISTRIK - 2 SKS), E71040112 (PRAK KONVERSI TENAGA LISTRIK - 1 SKS), E71040114 (RANGKAIAN LISTRIK - 4 SKS),  E71040116 (PRAK RANGKAIAN LISTRIK - 1 SKS), E71040118 (TEKNIK DIGITAL -  2 SKS), E71040120 (PRAK TEKNIK DIGITAL - 1 SKS), E71040122 (ELEKTRONIKA - 2 SKS). JUMLAH TOTAL : 21 SKS', NULL, NULL),
(72, 'matakuliah wajib semester 3 d3 elektro', 'Matakuliah Wajib semester 3 D3 Elektro yaitu : E71040201 (SISTEM TELEKOMUNIKASI - 2 SKS), E71040203 (PRAK SISTEM TELEKOMUNIKASI - 1 SKS), E71040205 (ELEKTRONIKA DAYA - 2 SKS), E71040207 (PRAK ELEKTRONIKA DAYA - 1 SKS), E71040209 (MESIN ABB - 4 SKS), E71040211 (PRAK MESIN ABB - 1 SKS), E71040213 (JARINGAN TRANSMISI & GARDU INDUK - 4 SKS), E71040215 (PRAK GARDU INDUK - 2 SKS), E71040217 (PRAK ELEKTRONIKA - 1 SKS), E71040219 (MENGGAMBAR LISTRIK [CAD-CAM] - 1 SKS), E71040221 (SERTIFIKASI1 : SMK3 - 2 SKS). JUMLAH TOTAL : 21 SKS	 ', NULL, NULL),
(73, 'matakuliah wajib semester 4 d3 elektro', 'Matakuliah Wajib semester 4 D3 Elektro yaitu : E71040202 (SISTEM KONTROL - 2 SKS), E71040204 (PRAK SISTEM KONTROL - 1 SKS), E71040206 (PEMBUMIAN PERALATAN SISTEM TENAGA LISTRIK - 2 SKS), E71040208 (SERTIFIKASI 2 : KESELAMATAN KETENAGALISTRIKAN - 2 SKS), E71040210 (MESIN AS - 2 SKS), E71040212 (PRAK MESIN AS - 1 SKS), E71040214 (PRAK JARINGAN TRANSMISI - 2 SKS), E71040216 (MANAJEMEN TEKNIK - 2 SKS). Sisanya anda dapat mengambil MATAKULIAH PERMINATAN di SEMESTER 4. untuk melihat Matakuliah Perminatan Semester 4 D3 Elektro, bisa memberikan pertanyaan dengan format : MATAKULIAH PERMINATAN [spasi] SEMESTER 4 [spasi] D3 ELEKTRO.', NULL, NULL),
(74, 'matakuliah wajib semester 5 d3 elektro', 'Matakuliah Wajib semester 5 D3 Elektro yaitu : E71040301 (PROTEKSI INSTALASI TENAGA LISTRIK - 2 SKS), E71040303 (PRAK PROTEKSI INSTALASI TENAGA LISTRIK - 2 SKS), E71040305 (INSTRUMENASI & PENGUKURAN - 2 SKS), E71040307 (PRAK PERALATAN KONTROL & INSTRUMEN - 2 SKS), E71040309 (PRAK INSTRUMENTASI & PENGUKURAN - 1 SKS). Sisanya anda dapat mengambil MATAKULIAH PERMINATAN di SEMESTER 5. untuk melihat Matakuliah Perminatan Semester 5 D3 Elektro, bisa memberikan pertanyaan dengan format : MATAKULIAH PERMINATAN [spasi] SEMESTER 5 [spasi] D3 ELEKTRO.', NULL, NULL),
(75, 'matakuliah wajib semester 6 d3 elektro', 'Matakuliah Wajib semester 6 D3 Elektro yaitu :  E71040300 (KERJA MAGANG - 4 SKS),  E71040400 (PROYEK AKHIR - 6 SKS). JUMLAH TOTAL : 10 SKS', NULL, NULL),
(76, 'matakuliah minat', 'Matakuliah Peminatan sebenarnya menyerupai Matakuliah Pilihan di jenjang S1. namun Peminatan lebih dikaitkan pada jurusan jenjang D3 terkhususnya D3 Elektro. Untuk mengetahui Matakuliah Perminatan lebih lanjut bisa memberikan pertanyaan dengan format : MATAKULIAH PERMINATAN [spasi] S1 INFORMATIKA.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pesan`
--

CREATE TABLE `tbl_pesan` (
  `id_pesan` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `role_nama` int(1) NOT NULL,
  `pesan` text NOT NULL,
  `stem` text NOT NULL,
  `role_bot` int(1) NOT NULL,
  `id_basispeng` int(11) NOT NULL,
  `date_in` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pesan`
--

INSERT INTO `tbl_pesan` (`id_pesan`, `nama`, `role_nama`, `pesan`, `stem`, `role_bot`, `id_basispeng`, `date_in`) VALUES
(248, 'PACE', 0, 'matakuliah wajib ??', 'matakuliah wajib', 1, 48, '2018-08-01 15:11:43'),
(252, 'PACE', 0, 'kapan kamu sekolahnya ??', 'sekolah', 1, 1, '2018-08-01 15:50:12'),
(253, 'PACE', 0, 'cuy matakuliah pilihan itu apa ya ??', 'matakuliah pilihan', 1, 23, '2018-08-01 16:55:39'),
(255, 'PACE', 0, 'apa sih krs itu ??', 'krs', 1, 4, '2018-08-01 17:13:03'),
(256, 'randis', 0, 'hallo', 'hallo', 1, 35, '2018-08-03 15:12:41'),
(257, 'randis', 0, 'kamu kenapa ??', '', 1, 1, '2018-08-03 15:12:53'),
(258, 'randis', 0, 'apa sih matakuliah itu ??', 'matakuliah', 1, 48, '2018-08-03 17:18:48'),
(259, 'randis', 0, 'kamu ??', '', 1, 1, '2018-08-03 17:18:58'),
(260, 'pace', 0, 'matakuliah wajib semester 1 s1 mesin', 'matakuliah wajib semester 1 s1 mesin', 1, 49, '2018-08-06 04:53:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id_user` int(100) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(6) NOT NULL,
  `password` varchar(6) NOT NULL,
  `title` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id_user`, `nama_lengkap`, `email`, `username`, `password`, `title`) VALUES
(1, 'Muhammad Iriansyah', 'pace@gmail.com', 'admin', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_basispengetahuan`
--
ALTER TABLE `tbl_basispengetahuan`
  ADD PRIMARY KEY (`id_basispeng`);

--
-- Indexes for table `tbl_pesan`
--
ALTER TABLE `tbl_pesan`
  ADD PRIMARY KEY (`id_pesan`),
  ADD KEY `id_basispeng` (`id_basispeng`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_basispengetahuan`
--
ALTER TABLE `tbl_basispengetahuan`
  MODIFY `id_basispeng` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `tbl_pesan`
--
ALTER TABLE `tbl_pesan`
  MODIFY `id_pesan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_user` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_pesan`
--
ALTER TABLE `tbl_pesan`
  ADD CONSTRAINT `tbl_pesan_ibfk_1` FOREIGN KEY (`id_basispeng`) REFERENCES `tbl_basispengetahuan` (`id_basispeng`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
