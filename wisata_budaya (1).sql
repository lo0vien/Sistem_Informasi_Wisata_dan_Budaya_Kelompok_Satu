-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 22, 2025 at 05:16 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisata_budaya`
--

-- --------------------------------------------------------

--
-- Table structure for table `budaya`
--

CREATE TABLE `budaya` (
  `id_budaya` int NOT NULL,
  `nama_budaya` varchar(150) NOT NULL,
  `jenis_budaya` varchar(100) DEFAULT NULL,
  `deskripsi` text,
  `id_daerah` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `budaya`
--

INSERT INTO `budaya` (`id_budaya`, `nama_budaya`, `jenis_budaya`, `deskripsi`, `id_daerah`) VALUES
(1, 'Tari Saman', 'Tarian Tradisional', 'Tari Saman adalah bagian penting dari identitas budaya Provinsi Aceh. Bentuknya sebagai tarian tradisional yang diwariskan turun-temurun dan kerap ditampilkan dalam upacara adat, festival, dan perayaan lokal.\r\n\r\nNilai-nilai yang terkandung dalam Tari Saman mencerminkan sejarah, spiritualitas, dan keterampilan komunitas setempat. Upaya pelestarian melalui pendidikan, pentas seni, dan dokumentasi terus dilakukan agar tradisi ini tetap hidup di generasi mendatang.', 1),
(2, 'Rumah Krong Bade', 'Arsitektur Tradisional', 'Rumah Krong Bade adalah bagian penting dari identitas budaya Provinsi Aceh. Bentuknya sebagai arsitektur tradisional yang diwariskan turun-temurun dan kerap dipertahankan dalam komunitas adat.\r\n\r\nNilai-nilai yang terkandung dalam Rumah Krong Bade mencerminkan filosofi hidup, struktur sosial, dan kearifan lokal yang adaptif terhadap lingkungan. Pelestarian melalui restorasi, pendidikan lokal, dan promosi pariwisata berkontribusi pada keberlangsungan tradisi ini.', 1),
(3, 'Ulos Batak', 'Kain Tradisional', 'Ulos Batak adalah bagian penting dari identitas budaya Provinsi Sumatera Utara. Bentuknya sebagai kain tenun tradisional yang digunakan dalam berbagai upacara adat dan memiliki nilai simbolik tinggi.\r\n\r\nNilai-nilai yang terkandung dalam Ulos mencerminkan doa, harapan, dan kedudukan sosial. Pelestarian melalui pendidikan tenun, pameran, dan penggunaan dalam upacara adat menjaga tradisi ini tetap hidup.', 2),
(4, 'Gondang Sabangunan', 'Musik Tradisional', 'Gondang Sabangunan adalah bagian penting dari identitas budaya Provinsi Sumatera Utara. Bentuknya sebagai ansambel musik tradisional yang dimainkan di acara adat dan keagamaan.\r\n\r\nNilai yang terkandung dalam Gondang Sabangunan meliputi penghormatan leluhur dan ikatan sosial komunitas. Pelestarian melalui pertunjukan dan pembelajaran musik tradisi menjadi langkah penting menjaga kesinambungan budaya.', 2),
(5, 'Tari Piring', 'Tarian Tradisional', 'Tari Piring adalah bagian penting dari identitas budaya Provinsi Sumatera Barat. Bentuknya sebagai tarian tradisional yang memadukan keterampilan gerak dan irama gamelan.\r\n\r\nNilai-nilai dalam Tari Piring mencerminkan rasa syukur dan keterampilan artistik masyarakat Minangkabau. Upaya pelestarian dilakukan melalui pagelaran seni dan pendidikan tari untuk generasi muda.', 3),
(6, 'Rumah Gadang', 'Arsitektur Tradisional', 'Rumah Gadang adalah bagian penting dari identitas budaya Provinsi Sumatera Barat. Arsitektur rumah adat ini mencerminkan struktur sosial dan estetika Minangkabau.\r\n\r\nNilai-nilai yang terkandung mencakup kekerabatan, adat, dan kebijaksanaan lokal. Pelestarian dilakukan melalui konservasi bangunan dan pendidikan budaya.', 3),
(7, 'Tanjak', 'Pakaian Tradisional', 'Tanjak adalah bagian penting dari identitas budaya Provinsi Riau. Bentuknya sebagai pelengkap pakaian adat yang memiliki makna sosial dan simbolik dalam upacara.\r\n\r\nNilai-nilai dalam penggunaan Tanjak mencerminkan status, adat, dan tradisi Melayu. Upaya pelestarian melalui demonstrasi seni dan pendidikan budaya mendukung keberlangsungan tradisi ini.', 4),
(8, 'Tarian Zapin', 'Tarian Tradisional', 'Tarian Zapin adalah bagian penting dari identitas budaya Provinsi Riau. Sebagai tarian tradisional Melayu, Zapin menonjolkan gerak dalam kelompok yang diiringi gambus.\r\n\r\nNilai-nilai yang terkandung mencakup nilai estetika dan kebersamaan komunitas. Pelestarian melalui pertunjukan dan pembelajaran tari menjadi sarana menjaga tradisi.', 4),
(9, 'Tarian Melayu', 'Tarian Tradisional', 'Tarian Melayu adalah bagian penting dari identitas budaya Provinsi Kepulauan Riau. Bentuknya sebagai ragam tarian yang dipertunjukkan pada acara adat dan perayaan.\r\n\r\nNilai-nilai yang terkandung mencakup estetika, adat, dan nilai sosial. Pelestarian dilakukan melalui pementasan dan kegiatan seni budaya untuk generasi muda.', 5),
(10, 'Kain Songket Kepri', 'Kain Tradisional', 'Kain Songket Kepri adalah bagian penting dari identitas budaya Provinsi Kepulauan Riau. Hasil tenun songket kerap digunakan dalam upacara adat dan acara resmi.\r\n\r\nNilai-nilai yang terkandung mencerminkan keindahan motif dan keterampilan tenun. Program pelestarian melibatkan pelatihan tenun dan promosi produk budaya lokal.', 5),
(11, 'Tari Sekapur Sirih', 'Tarian Tradisional', 'Tari Sekapur Sirih adalah bagian penting dari identitas budaya Provinsi Jambi. Tari ini biasanya dipertunjukkan sebagai penghormatan dan penyambutan tamu.\r\n\r\nNilai-nilai yang terkandung mencerminkan adat istiadat dan keramahan masyarakat setempat. Pelestarian dilakukan melalui pelatihan dan integrasi dalam acara budaya.', 6),
(12, 'Tenun Kerinci', 'Kain Tradisional', 'Tenun Kerinci adalah bagian penting dari identitas budaya Provinsi Jambi. Tenun ini menampilkan motif khas yang terkait dengan sejarah dan kehidupan masyarakat Kerinci.\r\n\r\nNilai-nilai yang terkandung mencerminkan estetika dan kearifan lokal. Pelestarian melalui workshop tenun dan pemasaran produk tradisional membantu menjaga keterampilan ini.', 6),
(13, 'Tari Gending Sriwijaya', 'Tarian Tradisional', 'Tari Gending Sriwijaya adalah bagian penting dari identitas budaya Provinsi Sumatera Selatan. Tarian ini menampilkan gerak dan kostum yang menggambarkan sejarah kerajaan di kawasan ini.\r\n\r\nNilai-nilai yang terkandung mencerminkan kebanggaan sejarah dan identitas lokal. Pelestarian melalui pertunjukan resmi dan pendidikan seni membantu mempertahankan tradisi.', 7),
(14, 'Songket Palembang', 'Kain Tradisional', 'Songket Palembang adalah bagian penting dari identitas budaya Provinsi Sumatera Selatan. Songket dikenal karena keindahan motif dan teknik menenun yang khas.\r\n\r\nNilai-nilai yang terkandung mencakup status sosial dan estetika tradisional. Program pelestarian meliputi pelatihan menenun dan promosi produk budaya.', 7),
(15, 'Tambang Timah Tradisional', 'Kegiatan Tradisional', 'Tambang Timah Tradisional adalah bagian penting dari identitas budaya Provinsi Bangka Belitung. Kegiatan ini menyiratkan sejarah ekonomi pulau dan cara hidup masyarakat lokal.\r\n\r\nNilai-nilai yang terkandung mencerminkan keterampilan lokal dan adaptasi terhadap lingkungan pulau. Pelestarian berupa dokumentasi sejarah dan pengembangan wisata budaya menjadi langkah penting.', 8),
(16, 'Tarian Lembuswana', 'Tarian Tradisional', 'Tarian Lembuswana adalah bagian penting dari identitas budaya Provinsi Bangka Belitung. Tarian ini biasanya dipentaskan pada acara adat dan festival lokal.\r\n\r\nNilai-nilai yang terkandung mencerminkan kehormatan dan ritual komunitas. Upaya pelestarian melalui pentas dan pendidikan tradisi terus dijalankan.', 8),
(17, 'Festival Tabot', 'Upacara Adat', 'Festival Tabot adalah bagian penting dari identitas budaya Provinsi Bengkulu. Upacara ini mengandung nilai religius dan sejarah yang diadakan setiap tahun.\r\n\r\nNilai-nilai yang terkandung mencerminkan penghormatan dan solidaritas komunitas. Pelestarian dilakukan melalui ritual berkelanjutan dan promosi budaya kepada pengunjung.', 9),
(18, 'Tari Andun', 'Tarian Tradisional', 'Tari Andun adalah bagian penting dari identitas budaya Provinsi Bengkulu. Tarian ini sering ditampilkan dalam upacara adat dan perayaan lokal.\r\n\r\nNilai-nilai yang terkandung termasuk ungkapan tradisi dan keindahan gerak. Pelestarian melalui pentas seni dan pendidikan tari menjadi bagian dari kegiatan budaya.', 9),
(19, 'Ngumbai Lawok', 'Upacara Adat', 'Ngumbai Lawok adalah bagian penting dari identitas budaya Provinsi Lampung. Tradisi ini terkait dengan ritual nelayan dan rasa syukur atas hasil laut.\r\n\r\nNilai-nilai yang terkandung mencerminkan hubungan manusia dengan alam laut. Pelestarian dilakukan melalui perayaan lokal dan dokumentasi budaya.', 10),
(20, 'Pakaian Adat Lampung', 'Pakaian Tradisional', 'Pakaian Adat Lampung adalah bagian penting dari identitas budaya Provinsi Lampung. Busana tradisional ini sering dikenakan pada acara penting dan upacara adat.\r\n\r\nNilai-nilai yang terkandung mencakup simbol kebanggaan dan estetika lokal. Program pelestarian termasuk pelatihan pembuat kain dan pameran budaya.', 10),
(21, 'Sunda Wiwitan', 'Kepercayaan & Tradisi', 'Sunda Wiwitan adalah bagian penting dari identitas budaya Provinsi Banten. Kepercayaan tradisional ini mempertahankan sejumlah ritual dan nilai kosmologi lokal.\r\n\r\nNilai-nilai yang terkandung mencerminkan hubungan spiritual masyarakat dengan alam. Pelestarian melibatkan dokumentasi dan pembelajaran adat.', 11),
(22, 'Tari Debus', 'Tarian Tradisional', 'Tari Debus adalah bagian penting dari identitas budaya Provinsi Banten. Tarian ini menampilkan unsur keberanian dan ritual tradisional.\r\n\r\nNilai-nilai yang terkandung mencerminkan kekuatan simbolik dan keberanian komunitas. Pelestarian melalui pentas dan festival membantu menjaga tradisi.', 11),
(23, 'Ondel-ondel', 'Pertunjukan Rakyat', 'Ondel-ondel adalah bagian penting dari identitas budaya Provinsi DKI Jakarta. Pertunjukan boneka raksasa ini sering muncul dalam acara-acara publik sebagai simbol Betawi.\r\n\r\nNilai-nilai yang terkandung mencerminkan perlindungan spiritual dan hiburan komunitas. Pelestarian melalui pertunjukan dan pameran membantu memperkenalkan budaya Betawi ke khalayak luas.', 12),
(24, 'Betawi Kulinari', 'Tradisi Kuliner', 'Betawi Kulinari adalah bagian penting dari identitas budaya Provinsi DKI Jakarta. Ragam masakan Betawi menghadirkan cita rasa khas yang sering dijumpai pada pasar dan perayaan.\r\n\r\nNilai-nilai yang terkandung mencerminkan sejarah urban dan nilai sosial komunitas. Pelestarian kuliner dilakukan melalui festival makanan dan pengajaran resep tradisional.', 12),
(25, 'Tari Jaipong', 'Tarian Tradisional', 'Tari Jaipong adalah bagian penting dari identitas budaya Provinsi Jawa Barat. Tarian ini menonjolkan gerakan enerjik dan diiringi musik tradisional seperti gamelan degung.\r\n\r\nNilai-nilai yang terkandung mencakup semangat seni dan keceriaan komunitas Sunda. Pelestarian melalui sanggar tari dan pentas seni membantu mempertahankan tradisi ini.', 13),
(26, 'Angklung', 'Alat Musik Tradisional', 'Angklung adalah bagian penting dari identitas budaya Provinsi Jawa Barat. Alat musik bambu ini dimainkan dalam orkestra tradisional dan modern, mencerminkan kreativitas masyarakat Sunda.\r\n\r\nNilai yang terkandung dalam angklung meliputi kerjasama dan pendidikan musikal. Program pelestarian termasuk pengajaran di sekolah dan pementasan internasional.', 13),
(27, 'Gamelan', 'Musik Tradisional', 'Gamelan adalah bagian penting dari identitas budaya Provinsi Jawa Tengah. Ansambel musik ini mengiringi tarian, wayang, dan upacara adat dalam berbagai kesempatan.\r\n\r\nNilai-nilai yang terkandung mencerminkan harmoni sosial dan estetika tradisional. Pelestarian melalui lembaga seni dan pendidikan musik mendukung regenerasi pelaku seni.', 14),
(28, 'Wayang Kulit', 'Seni Pertunjukan', 'Wayang Kulit adalah bagian penting dari identitas budaya Provinsi Jawa Tengah. Pertunjukan wayang mengandung cerita epik yang menjadi media pendidikan dan hiburan.\r\n\r\nNilai-nilai yang terkandung meliputi moral, sejarah, dan mitologi lokal. Upaya pelestarian meliputi pementasan, dokumentasi, dan pengajaran kepada generasi muda.', 14),
(29, 'Batik Yogyakarta', 'Kain Tradisional', 'Batik Yogyakarta adalah bagian penting dari identitas budaya Provinsi DI Yogyakarta. Motif batik mengandung makna dan penanda status sosial serta estetika yang khas.\r\n\r\nNilai-nilai yang terkandung mencakup kreativitas, simbolisme, dan keterampilan teknik membatik. Pelestarian dilakukan lewat workshop, museum, dan penggunaan batik dalam upacara adat.', 15),
(30, 'Tari Ramayana', 'Tari Klasik', 'Tari Ramayana adalah bagian penting dari identitas budaya Provinsi DI Yogyakarta. Pertunjukan tari ini sering digelar di kompleks candi sebagai pameran seni klasik.\r\n\r\nNilai-nilai yang terkandung mencerminkan kisah epik, estetika klasik, dan pendidikan moral. Upaya pelestarian melalui pentas rutin dan pendidikan seni mempertahankan kualitas pertunjukan.', 15),
(31, 'Reog Ponorogo', 'Seni Pertunjukan', 'Reog Ponorogo adalah bagian penting dari identitas budaya Provinsi Jawa Timur. Pertunjukan ini menampilkan atraksi topeng besar dan kuasa simbol yang kuat dalam ritual tradisional.\r\n\r\nNilai yang terkandung mencerminkan kekuatan komunitas dan ritus tradisional. Pelestarian melalui festival dan sekolah seni membantu menjaga warisan pertunjukan ini.', 16),
(32, 'Tari Gandrung', 'Tarian Tradisional', 'Tari Gandrung adalah bagian penting dari identitas budaya Provinsi Jawa Timur. Tari ini mengekspresikan rasa syukur dan dinamikanya sering dipertunjukkan dalam festival lokal.\r\n\r\nNilai-nilai yang terkandung mencerminkan ekspresi sosial dan rasa syukur komunitas. Pelestarian dilakukan melalui sanggar dan penampilan budaya di berbagai acara.', 16),
(33, 'Ngaben', 'Upacara Adat', 'Ngaben adalah bagian penting dari identitas budaya Provinsi Bali. Upacara pembakaran jenazah ini mengandung makna spiritual dan adat yang mendalam bagi masyarakat Hindu Bali.\r\n\r\nNilai-nilai yang terkandung mencerminkan siklus kehidupan dan keyakinan spiritual. Pelestarian melalui dokumentasi, partisipasi komunitas, dan pengaturan ritual memastikan kelestarian tradisi.', 17),
(34, 'Tari Kecak', 'Tarian Tradisional', 'Tari Kecak adalah bagian penting dari identitas budaya Provinsi Bali. Tarian ini menonjolkan paduan vokal dan gerak yang khas serta sering dipentaskan sebagai atraksi wisata budaya.\r\n\r\nNilai-nilai yang terkandung mencerminkan seni kolaboratif dan aspek spiritual. Upaya pelestarian berlangsung melalui pelatihan penari dan pementasan berkelanjutan.', 17),
(35, 'Tari Peresean', 'Tarian Tradisional', 'Tari Peresean adalah bagian penting dari identitas budaya Provinsi Nusa Tenggara Barat. Tarian ini menampilkan pertarungan tradisional menggunakan tongkat bambu dalam bentuk seni.\r\n\r\nNilai-nilai yang terkandung termasuk keberanian, teknik, dan nilai sosial komunitas Sasak. Pelestarian melalui festival budaya dan pelatihan generasi muda membantu menjaga tradisi ini.', 18),
(36, 'Tenun Sasak', 'Kain Tradisional', 'Tenun Sasak adalah bagian penting dari identitas budaya Provinsi Nusa Tenggara Barat. Kain tenun ini menampilkan motif khas Sasak yang bernilai estetika tinggi.\r\n\r\nNilai-nilai yang terkandung mencerminkan keterampilan wanita tenun dan simbol budaya. Pelestarian melalui pusat kerajinan dan pemasaran produk lokal mendukung kelangsungan keterampilan.', 18),
(37, 'Tari Caci', 'Tarian Tradisional', 'Tari Caci adalah bagian penting dari identitas budaya Provinsi Nusa Tenggara Timur. Tarian perang ini melibatkan tanding cambuk yang diikuti ritual dan musik khas lokal.\r\n\r\nNilai-nilai yang terkandung mencerminkan keberanian, tradisi, dan hubungan sosial antar komunitas. Pelestarian dilakukan melalui pertunjukan festival dan pembelajaran tradisional.', 19),
(38, 'Tenun Ikat Flores', 'Kain Tradisional', 'Tenun Ikat Flores adalah bagian penting dari identitas budaya Provinsi Nusa Tenggara Timur. Kain ikat khas Flores menampilkan motif yang merefleksikan mitos dan kehidupan lokal.\r\n\r\nNilai-nilai yang terkandung mencerminkan kearifan lokal dan teknik pewarisan keterampilan. Program pelestarian melibatkan pelatihan dan promosi produk budaya.', 19),
(39, 'Rumah Betang', 'Arsitektur Tradisional', 'Rumah Betang adalah bagian penting dari identitas budaya Provinsi Kalimantan Barat. Rumah panjang khas Dayak ini menjadi simbol komunitas dan struktur sosial adat.\r\n\r\nNilai-nilai yang terkandung mencakup gotong royong, seni ukir, dan fungsi sosial. Pelestarian melalui restorasi dan program budaya membantu menjaga rumah tradisional ini.', 20),
(40, 'Tari Radap Rahayu', 'Tarian Tradisional', 'Tari Radap Rahayu adalah bagian penting dari identitas budaya Provinsi Kalimantan Barat. Tarian ini menampilkan gerak ritmis dan kostum tradisional Dayak.\r\n\r\nNilai-nilai yang terkandung mencerminkan cerita leluhur dan ekspresi seni komunitas. Pelestarian dilakukan melalui pementasan dan pendidikan seni.', 20),
(41, 'Tari Hudoq', 'Tarian Tradisional', 'Tari Hudoq adalah bagian penting dari identitas budaya Provinsi Kalimantan Tengah. Tarian topeng ini terkait dengan upacara adat dan simbol perlindungan terhadap tanaman.\r\n\r\nNilai-nilai yang terkandung mencerminkan hubungan manusia dengan alam dan siklus pertanian. Pelestarian melalui upacara adat dan pendidikan tradisi menjadi kunci menjaga keberlangsungan.', 21),
(42, 'Kerajinan Anyaman', 'Kerajinan Tradisional', 'Kerajinan Anyaman adalah bagian penting dari identitas budaya Provinsi Kalimantan Tengah. Teknik anyaman menghasilkan berbagai produk rumah tangga dan pernak-pernik.\r\n\r\nNilai-nilai yang terkandung mencerminkan keterampilan dan kreativitas komunitas. Program pelestarian melibatkan pelatihan dan dukungan pemasaran.', 21),
(43, 'Tari Baksa Kembang', 'Tarian Tradisional', 'Tari Baksa Kembang adalah bagian penting dari identitas budaya Provinsi Kalimantan Selatan. Tarian ini menampilkan gerak elegan dan kostum khas Banjar.\r\n\r\nNilai-nilai yang terkandung mencerminkan estetika lokal dan tradisi istana. Pelestarian melalui pertunjukan resmi dan pendidikan seni mempertahankan kualitas seni ini.', 22),
(44, 'Rumah Lamin', 'Arsitektur Tradisional', 'Rumah Lamin adalah bagian penting dari identitas budaya Provinsi Kalimantan Selatan. Rumah adat ini memadukan fungsi sosial dan nilai artistik suku Banjar.\r\n\r\nNilai-nilai yang terkandung mencerminkan struktur sosial dan tradisi lokal. Pelestarian melalui restorasi dan edukasi budaya menjadi bagian dari upaya menjaga warisan.', 22),
(45, 'Tarian Dayak Benuaq', 'Tarian Tradisional', 'Tarian Dayak Benuaq adalah bagian penting dari identitas budaya Provinsi Kalimantan Timur. Tarian ini mengekspresikan mitos dan cerita komunitas Dayak setempat.\r\n\r\nNilai-nilai yang terkandung mencerminkan ritual dan hubungan budaya dengan alam. Pelestarian melalui pementasan festival dan pendidikan adat mendukung kelestarian tradisi.', 23),
(46, 'Kerajinan Ukir Dayak', 'Kerajinan Tradisional', 'Kerajinan Ukir Dayak adalah bagian penting dari identitas budaya Provinsi Kalimantan Timur. Seni ukir pada peralatan dan rumah adat mencerminkan simbol-simbol leluhur.\r\n\r\nNilai-nilai yang terkandung mencerminkan estetika dan makna spiritual. Upaya pelestarian meliputi pelatihan pengrajin dan promosi hasil kerajinan.', 23),
(47, 'Tari Dayak Kayan', 'Tarian Tradisional', 'Tari Dayak Kayan adalah bagian penting dari identitas budaya Provinsi Kalimantan Utara. Tarian ini menampilkan gerak yang berhubungan dengan ritual dan kehidupan sehari-hari.\r\n\r\nNilai yang terkandung mencerminkan tradisi suku dan kearifan lokal. Pelestarian melalui pertunjukan adat dan pembelajaran kultur mendukung kesinambungan tradisi.', 24),
(48, 'Upacara Adat Kaltara', 'Upacara Adat', 'Upacara Adat Kaltara adalah bagian penting dari identitas budaya Provinsi Kalimantan Utara. Upacara tradisional ini mengandung ritual-ritual yang berkaitan dengan alam dan masyarakat.\r\n\r\nNilai-nilai yang terkandung mencerminkan kosmologi lokal dan praktik sosial. Pelestarian dilakukan lewat dokumentasi dan pelibatan generasi muda dalam ritual.', 24),
(49, 'Tari Maengket', 'Tarian Tradisional', 'Tari Maengket adalah bagian penting dari identitas budaya Provinsi Sulawesi Utara. Tarian ini sering dipertunjukkan pada acara adat dan pesta panen.\r\n\r\nNilai-nilai yang terkandung mencerminkan ungkapan syukur dan kebersamaan komunitas. Pelestarian dilakukan melalui sanggar dan pentas lokal.', 25),
(50, 'Klappertaart Manado', 'Kuliner Tradisional', 'Klappertaart Manado adalah bagian penting dari identitas budaya Provinsi Sulawesi Utara. Kue ini menjadi ikon kuliner yang populer di berbagai acara dan sebagai oleh-oleh.\r\n\r\nNilai-nilai yang terkandung mencerminkan adaptasi kuliner lokal dengan pengaruh sejarah. Pelestarian melalui promosi kuliner dan usaha rumah tangga mendukung ekonomi lokal.', 25),
(51, 'Tari Tilamohu', 'Tarian Tradisional', 'Tari Tilamohu adalah bagian penting dari identitas budaya Provinsi Gorontalo. Tarian ini menampilkan gerak lembut dan simbolik yang berkaitan dengan adat setempat.\r\n\r\nNilai-nilai yang terkandung mencerminkan keharmonisan dan tradisi lokal. Pelestarian dilakukan melalui pentas budaya dan pengajaran tari.', 26),
(52, 'Pakaian Tradisional Gorontalo', 'Pakaian Tradisional', 'Pakaian Tradisional Gorontalo adalah bagian penting dari identitas budaya Provinsi Gorontalo. Busana adat mencerminkan estetika dan fungsi dalam berbagai upacara.\r\n\r\nNilai-nilai yang terkandung mencakup simbol sosial dan kearifan lokal. Pelestarian dilakukan melalui pameran dan kegiatan budaya.', 26),
(53, 'Tari Lulo', 'Tarian Tradisional', 'Tari Lulo adalah bagian penting dari identitas budaya Provinsi Sulawesi Tengah. Tarian ini menonjolkan ritme dan gerak khas yang berkaitan dengan tradisi lokal.\r\n\r\nNilai-nilai yang terkandung mencerminkan nilai ritual dan sosial. Pelestarian melalui pentas komunitas dan pengajaran tradisi menjadi penting untuk menjaga kesinambungan.', 27),
(54, 'Kain Tenun Donggala', 'Kain Tradisional', 'Kain Tenun Donggala adalah bagian penting dari identitas budaya Provinsi Sulawesi Tengah. Tenun khas ini menampilkan motif yang berakar pada kehidupan masyarakat setempat.\r\n\r\nNilai-nilai yang terkandung mencerminkan keterampilan tenun dan nilai estetika. Pelestarian melalui pelatihan pengrajin serta promosi produk membantu keberlangsungan tradisi.', 27),
(55, 'Tari Pakarena', 'Tarian Tradisional', 'Tari Pakarena adalah bagian penting dari identitas budaya Provinsi Sulawesi Selatan. Tarian klasik ini menggambarkan keanggunan dan nilai-nilai perempuan Bugis-Makassar.\r\n\r\nNilai-nilai yang terkandung mencerminkan estetika budaya dan fungsi sosial. Pelestarian dilaksanakan lewat sanggar seni dan pertunjukan publik.', 28),
(56, 'Phinisi', 'Perahu Tradisional', 'Phinisi adalah bagian penting dari identitas budaya Provinsi Sulawesi Selatan. Perahu tradisional ini melambangkan keterampilan pelayaran dan sejarah maritim kawasan.\r\n\r\nNilai-nilai yang terkandung mencerminkan tradisi maritim dan teknik kapal tradisional. Pelestarian melalui restorasi perahu dan pendidikan keahlian mendukung kelestarian budaya.', 28),
(57, 'Tari Peresean Buton', 'Tarian Tradisional', 'Tari Peresean Buton adalah bagian penting dari identitas budaya Provinsi Sulawesi Tenggara. Tarian ini menunjukkan tradisi dan keterampilan lokal yang diiringi musik tradisional.\r\n\r\nNilai-nilai yang terkandung mencerminkan proses ritual dan nilai sosial komunitas. Pelestarian melalui festival budaya dan pembelajaran generasi muda terus dilakukan.', 29),
(58, 'Tenun Buton', 'Kain Tradisional', 'Tenun Buton adalah bagian penting dari identitas budaya Provinsi Sulawesi Tenggara. Kain ini menampilkan motif khas dan teknik tenun tradisional.\r\n\r\nNilai-nilai yang terkandung mencerminkan keterampilan dan identitas komunitas. Pelestarian dilakukan melalui pelatihan tenun dan pemasaran produk budaya.', 29),
(59, 'Tari Paduppa', 'Tarian Tradisional', 'Tari Paduppa adalah bagian penting dari identitas budaya Provinsi Sulawesi Barat. Tarian ini sering dipertunjukkan pada acara adat dan ritual masyarakat Mandar.\r\n\r\nNilai-nilai yang terkandung mencerminkan tradisi lokal dan estetika ritual. Pelestarian melalui pentas seni dan pendidikan budaya menjadi kunci menjaga tradisi.', 30),
(60, 'Upacara Adat Mandar', 'Upacara Adat', 'Upacara Adat Mandar adalah bagian penting dari identitas budaya Provinsi Sulawesi Barat. Upacara ini menampilkan ritual-ritual yang berkaitan dengan laut dan kehidupan pesisir.\r\n\r\nNilai-nilai yang terkandung mencerminkan keterkaitan komunitas dengan alam laut. Pelestarian dilakukan melalui dokumentasi dan pelibatan generasi muda dalam praktik adat.', 30),
(61, 'Tari Cakalele', 'Tarian Tradisional', 'Tari Cakalele adalah bagian penting dari identitas budaya Provinsi Maluku. Tarian ini memadukan gerak perang dan ritual yang merefleksikan sejarah maritim.\r\n\r\nNilai-nilai yang terkandung mencerminkan keberanian dan semangat komunitas. Pelestarian melalui festival budaya dan pementasan membantu menjaga kearifan tradisi.', 31),
(62, 'Musik Tifa', 'Alat Musik Tradisional', 'Musik Tifa adalah bagian penting dari identitas budaya Provinsi Maluku. Alat musik tifa mengiringi tarian dan upacara adat dengan ritme khas.\r\n\r\nNilai-nilai yang terkandung mencerminkan ekspresi artistik dan spiritual. Pelestarian dilakukan melalui pelatihan dan pertunjukan komunitas.', 31),
(63, 'Upacara Adat Tobelo', 'Upacara Adat', 'Upacara Adat Tobelo adalah bagian penting dari identitas budaya Provinsi Maluku Utara. Ritual ini mencerminkan nilai sosial dan spiritual komunitas pesisir.\r\n\r\nNilai-nilai yang terkandung termasuk tata adat dan tradisi maritim. Pelestarian dilakukan melalui penguatan komunitas dan dokumentasi budaya.', 32),
(64, 'Tenun Halmahera', 'Kain Tradisional', 'Tenun Halmahera adalah bagian penting dari identitas budaya Provinsi Maluku Utara. Tenun lokal menampilkan motif khas yang terkait dengan simbol dan sejarah lokal.\r\n\r\nNilai-nilai yang terkandung mencerminkan keterampilan dan identitas budaya. Pelestarian melalui pelatihan dan pemasaran produk membantu menjaga keberlangsungan.', 32),
(65, 'Tifa & Tari Yospan', 'Alat Musik & Tari', 'Tifa & Tari Yospan adalah bagian penting dari identitas budaya Provinsi Papua. Kombinasi musik dan tarian ini sering dipertunjukkan dalam acara komunitas dan festival.\r\n\r\nNilai-nilai yang terkandung mencerminkan identitas sosial dan ekspresi budaya. Pelestarian dilakukan melalui pentas, dokumentasi, dan pendidikan keterampilan seni.', 33),
(66, 'Upacara Dani', 'Upacara Adat', 'Upacara Dani adalah bagian penting dari identitas budaya Provinsi Papua. Upacara adat suku Dani melibatkan ritual, pakaian tradisional, dan pertunjukan yang sarat makna spiritual.\r\n\r\nNilai-nilai yang terkandung mencerminkan tradisi leluhur dan struktur sosial komunitas. Pelestarian upacara dilakukan lewat festival dan pendidikan budaya.', 33),
(67, 'Tari Cakalele (varian)', 'Tarian Tradisional', 'Tari Cakalele (varian) adalah bagian penting dari identitas budaya Provinsi Papua Barat. Versi lokal tari ini memadukan gerak perang dan ritual laut sebagai ekspresi budaya.\r\n\r\nNilai-nilai yang terkandung mencerminkan sejarah maritim dan tradisi komunitas pesisir. Pelestarian melalui pertunjukan dan dokumentasi budaya menjadi prioritas.', 34),
(68, 'Kerajinan Batu Bacan', 'Kerajinan Tradisional', 'Kerajinan Batu Bacan adalah bagian penting dari identitas budaya Provinsi Papua Barat. Batu permata Bacan memiliki nilai seni dan ekonomi bagi masyarakat setempat.\r\n\r\nNilai-nilai yang terkandung mencerminkan keterampilan pengolahan batu dan nilai estetika. Pelestarian meliputi teknik pewarisan keterampilan dan promosi hasil kerajinan.', 34),
(69, 'Tradisi Nelayan Lokal', 'Tradisi', 'Tradisi Nelayan Lokal adalah bagian penting dari identitas budaya Provinsi Papua Barat Daya. Praktik nelayan tradisional mencerminkan hubungan komunitas dengan laut dan sumber daya pesisir.\r\n\r\nNilai-nilai yang terkandung meliputi keterampilan kelautan dan kearifan lokal. Pelestarian dilakukan lewat pelatihan, dokumentasi, dan integrasi praktik berkelanjutan.', 35),
(70, 'Pakaian Adat Papua', 'Pakaian Tradisional', 'Pakaian Adat Papua adalah bagian penting dari identitas budaya Provinsi Papua Barat Daya. Busana adat menampilkan ragam ornamen dan makna simbolik.\r\n\r\nNilai-nilai yang terkandung mencerminkan identitas suku dan kepercayaan lokal. Pelestarian melibatkan dokumentasi dan penggunaan pada upacara adat.', 35),
(71, 'Tari Perang Papua', 'Tarian Tradisional', 'Tari Perang Papua adalah bagian penting dari identitas budaya Provinsi Papua Tengah. Tarian ini sering mencerminkan cerita kepahlawanan dan ritual komunitas pegunungan.\r\n\r\nNilai-nilai yang terkandung mencerminkan keberanian dan tradisi lokal. Pelestarian dilakukan melalui pentas budaya dan edukasi tradisi.', 36),
(72, 'Ukiran Kayu Tradisional', 'Kerajinan Tradisional', 'Ukiran Kayu Tradisional adalah bagian penting dari identitas budaya Provinsi Papua Tengah. Seni ukir mencerminkan motif-motif leluhur yang memiliki makna spiritual.\r\n\r\nNilai-nilai yang terkandung mencerminkan keterampilan dan simbolisme budaya. Pelestarian melalui pelatihan pengrajin dan pameran mendukung keberlangsungan tradisi.', 36),
(73, 'Festival Lembah Baliem', 'Festival Budaya', 'Festival Lembah Baliem adalah bagian penting dari identitas budaya Provinsi Papua Pegunungan. Festival ini menampilkan pertunjukan tradisi, pakaian adat, dan upacara komunitas.\r\n\r\nNilai-nilai yang terkandung mencerminkan penghormatan leluhur dan kebersamaan komunitas. Pelestarian melalui penyelenggaraan festival dan pendidikan budaya menjaga kesinambungan tradisi.', 37),
(74, 'Pakaian Adat Suku Dani', 'Pakaian Tradisional', 'Pakaian Adat Suku Dani adalah bagian penting dari identitas budaya Provinsi Papua Pegunungan. Busana tradisional yang dikenakan dalam upacara mengandung makna simbolik kuat.\r\n\r\nNilai-nilai yang terkandung mencerminkan posisi sosial dan spiritual dalam komunitas. Pelestarian melalui dokumentasi, pameran, dan partisipasi generasi muda membantu mempertahankan warisan budaya.', 37);

-- --------------------------------------------------------

--
-- Table structure for table `daerah`
--

CREATE TABLE `daerah` (
  `id_daerah` int NOT NULL,
  `nama_provinsi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `daerah`
--

INSERT INTO `daerah` (`id_daerah`, `nama_provinsi`) VALUES
(1, 'Nangroe Aceh'),
(2, 'Sumatera Utara'),
(3, 'Sumatera Barat'),
(4, 'Riau'),
(5, 'Kepulauan Riau'),
(6, 'Jambi'),
(7, 'Sumatera Selatan'),
(8, 'Bangka Belitung'),
(9, 'Bengkulu'),
(10, 'Lampung'),
(11, 'Banten'),
(12, 'DKI Jakarta'),
(13, 'Jawa Barat'),
(14, 'Jawa Tengah'),
(15, 'DI Yogyakarta'),
(16, 'Jawa Timur'),
(17, 'Bali'),
(18, 'Nusa Tenggara Barat'),
(19, 'Nusa Tenggara Timur'),
(20, 'Kalimantan Barat'),
(21, 'Kalimantan Tengah'),
(22, 'Kalimantan Selatan'),
(23, 'Kalimantan Timur'),
(24, 'Kalimantan Utara'),
(25, 'Sulawesi Utara'),
(26, 'Gorontalo'),
(27, 'Sulawesi Tengah'),
(28, 'Sulawesi Selatan'),
(29, 'Sulawesi Tenggara'),
(30, 'Sulawesi Barat'),
(31, 'Maluku'),
(32, 'Maluku Utara'),
(33, 'Papua'),
(34, 'Papua Barat'),
(35, 'Papua Barat Daya'),
(36, 'Papua Tengah'),
(37, 'Papua Pegunungan');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` enum('admin','user') DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `email`, `password`, `role`, `created_at`) VALUES
(1, 'Admin', 'admin@gmail.com', 'admin123', 'admin', '2025-10-22 03:20:27'),
(2, 'User', 'user@gmail.com', 'user123', 'user', '2025-10-22 03:20:27');

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE `wisata` (
  `id_wisata` int NOT NULL,
  `nama_wisata` varchar(150) NOT NULL,
  `jenis_wisata` varchar(100) DEFAULT NULL,
  `alamat` text,
  `deskripsi` text,
  `id_daerah` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`id_wisata`, `nama_wisata`, `jenis_wisata`, `alamat`, `deskripsi`, `id_daerah`) VALUES
(1, 'Pantai Lampuuk', 'Pantai', 'Aceh Besar, Aceh', 'Pantai Lampuuk adalah destinasi pantai yang menonjol di Provinsi Aceh. Tempat ini menawarkan kombinasi keindahan alam dan fasilitas pendukung yang membuat pengunjung betah, mulai dari jalur akses yang memadai hingga layanan lokal seperti pemandu wisata dan tempat makan.\r\n\r\nSelain sebagai objek wisata, Pantai Lampuuk kerap menjadi lokasi penyelenggaraan acara budaya dan kegiatan komunitas yang memperkaya pengalaman pengunjung. Pengelola setempat juga berupaya menerapkan praktik pariwisata berkelanjutan untuk menjaga kelestarian lingkungan.', 1),
(2, 'Museum Tsunami Aceh', 'Edukasi', 'Banda Aceh, Aceh', 'Museum Tsunami Aceh adalah destinasi edukasi yang menonjol di Provinsi Aceh. Tempat ini menawarkan kombinasi keindahan arsitektur simbolik dan ruang edukasi yang membantu pengunjung memahami dampak dan upaya pemulihan pasca-bencana.\r\n\r\nSelain sebagai objek edukatif, Museum Tsunami Aceh kerap menjadi lokasi diskusi, pameran, dan kegiatan komunitas untuk memperkuat ketahanan bencana. Koleksi dan dokumentasinya membantu generasi muda memahami sejarah serta pentingnya mitigasi bencana.', 1),
(3, 'Danau Toba', 'Danau Alam', 'Kabupaten Toba, Sumatera Utara', 'Danau Toba adalah destinasi danau alam yang menonjol di Provinsi Sumatera Utara. Tempat ini menawarkan pemandangan vulkanik dramatis dan Pulau Samosir yang kaya budaya Batak, serta berbagai fasilitas pariwisata seperti penginapan dan lokasi kuliner.\r\n\r\nSelain panorama alamnya, Danau Toba sering menjadi pusat kegiatan budaya Batak seperti pertunjukan musik dan tarian tradisional yang memperkaya pengalaman wisatawan. Upaya pelestarian lingkungan terus dijalankan agar keindahan dan ekosistem danau tetap terjaga.', 2),
(4, 'Air Terjun Sipiso-piso', 'Air Terjun', 'Karo, Sumatera Utara', 'Air Terjun Sipiso-piso adalah destinasi air terjun yang menonjol di Provinsi Sumatera Utara. Air terjun dengan ketinggian spektakuler ini menawarkan panorama tebing dan lembah yang memikat pengunjung, cocok untuk fotografi dan trekking ringan.\r\n\r\nSelain keindahan alamnya, area ini sering menjadi tujuan wisata edukasi tentang geologi dan konservasi. Pengelolaan jalur dan fasilitas didesain untuk meminimalkan dampak terhadap lingkungan sekitar.', 2),
(5, 'Jam Gadang', 'Landmark', 'Bukittinggi, Sumatera Barat', 'Jam Gadang adalah destinasi landmark yang menonjol di Provinsi Sumatera Barat. Menara jam ini menjadi ikon kota Bukittinggi dan pusat aktivitas wisata serta perdagangan lokal di sekitarnya.\r\n\r\nSelain sebagai simbol sejarah, Jam Gadang sering menjadi panggung acara budaya dan festival yang menampilkan tarian Minangkabau. Keberadaannya juga mendukung ekonomi kreatif lokal melalui kerajinan dan kuliner tradisional.', 3),
(6, 'Lembah Harau', 'Alam Pegunungan', 'Kabupaten Lima Puluh Kota, Sumatera Barat', 'Lembah Harau adalah destinasi alam pegunungan yang menonjol di Provinsi Sumatera Barat. Tebing granit dan air terjun yang menjulang menciptakan lanskap spektakuler bagi pengunjung dan pecinta alam.\r\n\r\nSelain pemandangan, Lembah Harau menyajikan aktivitas petualangan seperti panjat tebing dan trekking serta observasi burung. Konservasi dan pengelolaan ekowisata menjadi fokus untuk menjaga ekosistem lembah.', 3),
(7, 'Pulau Rupat', 'Pulau', 'Bengkalis, Riau', 'Pulau Rupat adalah destinasi pulau yang menonjol di Provinsi Riau. Dikenal dengan garis pantai panjang dan pasir yang landai, pulau ini menjadi tempat bersantai dan pengamatan alam pantai.\r\n\r\nSelain panorama pantai, Pulau Rupat mendukung kegiatan lokal seperti perikanan dan wisata budaya masyarakat pesisir. Pengembangan infrastruktur ramah lingkungan terus dilakukan agar pariwisata tumbuh berkelanjutan.', 4),
(8, 'Taman Nasional Tesso Nilo', 'Cagar Alam', 'Riau', 'Taman Nasional Tesso Nilo adalah destinasi cagar alam yang menonjol di Provinsi Riau. Hutan tropisnya menjadi rumah bagi flora dan fauna langka, termasuk beberapa spesies gajah dan satwa endemik.\r\n\r\nSelain konservasi, kawasan ini menjadi lokasi penelitian dan wisata edukasi yang meningkatkan kesadaran lingkungan. Usaha konservasi bersinergi dengan masyarakat lokal untuk menjaga habitat dan mata pencaharian berkelanjutan.', 4),
(9, 'Pulau Bintan', 'Pulau', 'Bintan, Kepri', 'Pulau Bintan adalah destinasi pulau yang menonjol di Provinsi Kepulauan Riau. Pantainya yang menawan dan resort-resort kelas menengah hingga atas membuatnya populer bagi wisatawan domestik dan mancanegara.\r\n\r\nSelain fasilitas wisata mewah, pulau ini menawarkan ekowisata pesisir dan aktivitas laut seperti snorkeling dan jelajah pulau. Pengelolaan pariwisata berfokus pada keseimbangan antara pembangunan dan pelestarian pesisir.', 5),
(10, 'Nagoya Hill Mall', 'Kota & Hiburan', 'Batam, Kepri', 'Nagoya Hill Mall adalah pusat hiburan dan belanja yang menonjol di wilayah Batam, Provinsi Kepulauan Riau. Mall ini menjadi magnet belanja, kuliner, dan hiburan bagi wisatawan sehari-hari dan pengunjung mancanegara.\r\n\r\nSelain pengalaman urban, kawasan sekitar menyediakan akses ke pelabuhan dan layanan transportasi yang memudahkan kunjungan singkat. Perpaduan antara budaya lokal dan fasilitas modern membuat area ini dinamis.', 5),
(11, 'Candi Muaro Jambi', 'Sejarah', 'Muaro Jambi, Jambi', 'Candi Muaro Jambi adalah destinasi sejarah yang menonjol di Provinsi Jambi. Kompleks candi ini menawarkan wawasan mendalam tentang kebudayaan masa lampau dan peradaban di wilayah Sumatera Timur.\r\n\r\nSelain nilai arkeologi, kawasan ini sering menjadi lokasi penelitian dan wisata edukasi yang mendorong pelestarian warisan budaya. Pengelolaan situs melibatkan kolaborasi antara pemerintah dan komunitas lokal untuk perlindungan jangka panjang.', 6),
(12, 'Air Terjun Sungai Jernih', 'Air Terjun', 'Kerinci, Jambi', 'Air Terjun Sungai Jernih adalah destinasi air terjun yang menonjol di Provinsi Jambi. Kejernihan aliran dan lingkungan hutan yang rimbun memberikan pengalaman alam yang tenang dan menyegarkan.\r\n\r\nSelain rekreasi, kawasan ini menjadi titik observasi keanekaragaman hayati dan kegiatan konservasi. Pengembangan akses dan fasilitas bertujuan menjaga kondisi alami area sekitar.', 6),
(13, 'Danau Ranau', 'Danau', 'OKU Selatan, Sumatera Selatan', 'Danau Ranau adalah destinasi danau yang menonjol di Provinsi Sumatera Selatan. Panorama danau yang luas dikelilingi bukit-bukit hijau menawarkan suasana tenang untuk wisata keluarga dan aktivitas berperahu.\r\n\r\nSelain pemandangan, Danau Ranau menjadi lokasi festival dan kegiatan budaya lokal yang memperkenalkan tradisi masyarakat setempat. Upaya pengelolaan berkelanjutan dilakukan untuk menjaga kualitas air dan ekosistem.', 7),
(14, 'Benteng Kuto Besak', 'Sejarah', 'Palembang, Sumatera Selatan', 'Benteng Kuto Besak adalah destinasi sejarah yang menonjol di Provinsi Sumatera Selatan. Benteng ini menjadi saksi sejarah dan titik kebanggaan arsitektur lama di Palembang.\r\n\r\nSelain sebagai situs bersejarah, area sekitarnya berkembang menjadi pusat aktivitas masyarakat dan kuliner khas Palembang. Pelestarian bangunan cagar budaya menjadi prioritas bagi pihak terkait.', 7),
(15, 'Pantai Tanjung Tinggi', 'Pantai', 'Belitung, Babel', 'Pantai Tanjung Tinggi adalah destinasi pantai yang menonjol di Provinsi Bangka Belitung. Dikenal karena batu granit besar dan pasir putih, pantai ini menjadi ikon fotografi alam dan pelancongan.\r\n\r\nSelain pemandangan, kawasan ini mendorong wisata kreativitas lokal seperti penginapan kecil dan kuliner khas laut. Kebersihan dan pengelolaan sampah menjadi fokus untuk menjaga pesisir tetap indah.', 8),
(16, 'Museum Kata Andrea Hirata', 'Edukasi', 'Belitung, Babel', 'Museum Kata Andrea Hirata adalah destinasi edukasi dan sastra yang menonjol di Belitung, Provinsi Bangka Belitung. Museum ini merayakan karya sastra terkenal dan memperkenalkan nilai literasi melalui pameran kreatif.\r\n\r\nSelain aspek budaya, museum menggerakkan pariwisata budaya yang mendukung ekonomi lokal melalui tur literasi dan kegiatan kreatif. Kegiatan ini turut mengangkat identitas budaya setempat.', 8),
(17, 'Pantai Panjang', 'Pantai', 'Kota Bengkulu, Bengkulu', 'Pantai Panjang adalah destinasi pantai yang menonjol di Provinsi Bengkulu. Garis pantai yang panjang dan pemandangan matahari terbenam menjadi daya tarik utama bagi wisatawan.\r\n\r\nSelain keindahan alam, Pantai Panjang sering menjadi lokasi festival budaya dan kegiatan olahraga pantai yang menghidupkan ekonomi lokal. Pengelolaan pariwisata menekankan pelestarian lingkungan pesisir.', 9),
(18, 'Benteng Marlborough', 'Sejarah', 'Kota Bengkulu, Bengkulu', 'Benteng Marlborough adalah destinasi sejarah yang menonjol di Provinsi Bengkulu. Benteng peninggalan kolonial ini memberi wawasan tentang masa lalu dan arsitektur pertahanan.\r\n\r\nSelain fungsi edukasi, benteng menjadi lokasi pameran dan kegiatan sejarah yang melibatkan komunitas serta sekolah. Konservasi situs difokuskan agar struktur dan nilai sejarah tetap terjaga.', 9),
(19, 'Pantai Mutun', 'Pantai', 'Pesawaran, Lampung', 'Pantai Mutun adalah destinasi pantai yang menonjol di Provinsi Lampung. Ombak tenang dan fasilitas rekreasi membuatnya populer untuk keluarga dan wisata lokal.\r\n\r\nSelain wisata pantai, kawasan ini mendukung aktivitas perikanan dan pariwisata berbasis komunitas. Program kebersihan pantai dan keamanan pengunjung rutin dilaksanakan.', 10),
(20, 'Way Kambas National Park', 'Konservasi', 'Lampung Timur, Lampung', 'Way Kambas National Park adalah destinasi konservasi yang menonjol di Provinsi Lampung. Kawasan ini penting untuk pelestarian gajah sumatera dan habitat satwa liar lainnya.\r\n\r\nSelain konservasi, taman nasional menjadi pusat edukasi lingkungan dan ekowisata yang melibatkan masyarakat setempat. Program-program rehabilitasi satwa dan kunjungan edukatif mendukung konservasi jangka panjang.', 10),
(21, 'Pantai Anyer', 'Pantai', 'Serang, Banten', 'Pantai Anyer adalah destinasi pantai yang menonjol di Provinsi Banten. Pantai ini populer untuk wisata hari libur dan kegiatan air seperti banana boat serta jalan-jalan di pesisir.\r\n\r\nSelain rekreasi, kawasan Anyer menjadi pusat usaha kecil wisata dan kuliner pesisir. Pengembangan fasilitas pariwisata disesuaikan dengan upaya pelestarian lingkungan laut.', 11),
(22, 'Tanjung Lesung', 'Pantai', 'Pandeglang, Banten', 'Tanjung Lesung adalah destinasi pantai yang menonjol di Provinsi Banten. Kawasan ini dikembangkan sebagai destinasi terpadu dengan resort, pantai, dan aktivitas laut.\r\n\r\nSelain fasilitas modern, Tanjung Lesung menonjolkan pengalaman alam dan komunitas pesisir. Upaya perencanaan mengutamakan pembangunan berkelanjutan untuk keseimbangan pariwisata.', 11),
(23, 'Monumen Nasional (Monas)', 'Landmark', 'Gambir, Jakarta Pusat', 'Monumen Nasional (Monas) adalah destinasi landmark yang menonjol di Provinsi DKI Jakarta. Monas menjadi simbol sejarah bangsa dan lokasi utama bagi wisata edukasi ibu kota.\r\n\r\nSelain monumen, kawasan Monas sering menjadi pusat kegiatan nasional, festival, dan pameran yang memperkaya pengalaman pengunjung. Pengelolaan fasilitas mendukung aksesibilitas dan kegiatan publik.', 12),
(24, 'Kota Tua', 'Sejarah', 'Tamansari, Jakarta Barat', 'Kota Tua adalah destinasi sejarah yang menonjol di Provinsi DKI Jakarta. Kawasan ini menampilkan arsitektur kolonial, museum, dan kafe yang menarik wisatawan sejarah dan budaya.\r\n\r\nSelain kunjungan edukatif, Kota Tua mendukung aktivitas seni jalanan, pertunjukan musik, dan festival budaya. Revitalisasi area membantu melestarikan nilai sejarah sekaligus mendorong ekonomi kreatif.', 12),
(25, 'Kawah Putih', 'Alam', 'Ciwidey, Jawa Barat', 'Kawah Putih adalah destinasi alam yang menonjol di Provinsi Jawa Barat. Danau kawah dengan warna unik dan suasana sejuk menjadi daya tarik bagi wisatawan dan fotografer.\r\n\r\nSelain pemandangan, kawasan ini menjadi lokasi penelitian geologi dan ekowisata yang mendidik. Pengelolaan area menitikberatkan pada perlindungan kualitas air dan vegetasi sekitar.', 13),
(26, 'Tangkuban Perahu', 'Gunung', 'Lembang, Jawa Barat', 'Tangkuban Perahu adalah destinasi gunung yang menonjol di Provinsi Jawa Barat. Gunung berapi ini menawarkan kawah yang dapat diakses dan panorama pegunungan yang indah.\r\n\r\nSelain wisata alam, tempat ini sarat dengan legenda lokal yang menambah nilai budaya bagi pengunjung. Pengelolaan keselamatan dan jalur wisata diatur untuk pengalaman yang aman dan informatif.', 13),
(27, 'Candi Borobudur', 'Sejarah', 'Magelang, Jawa Tengah', 'Candi Borobudur adalah destinasi sejarah yang menonjol di Provinsi Jawa Tengah. Sebagai candi Buddha terbesar di dunia, Borobudur menawarkan nilai seni, arsitektur, dan religius yang mendalam.\r\n\r\nSelain kunjungan ziarah, Borobudur menjadi pusat studi arkeologi dan acara budaya yang memperkenalkan tradisi lokal. Upaya konservasi dan pengelolaan pengunjung menjaga kelestarian situs warisan dunia ini.', 14),
(28, 'Kota Lama Semarang', 'Sejarah', 'Semarang, Jawa Tengah', 'Kota Lama Semarang adalah destinasi sejarah yang menonjol di Provinsi Jawa Tengah. Area lama yang dipenuhi bangunan kolonial memberikan wawasan tentang masa lalu perkotaan Jawa.\r\n\r\nSelain jalan-jalan sejarah, kawasan ini mendukung usaha kultural seperti museum, galeri, dan kafe tematik. Revitalisasi membantu menjaga warisan sambil mendukung perkembangan ekonomi kreatif.', 14),
(29, 'Candi Prambanan', 'Sejarah', 'Sleman, Yogyakarta', 'Candi Prambanan adalah destinasi sejarah yang menonjol di Provinsi DI Yogyakarta. Kompleks candi Hindu ini menampilkan arsitektur megah dan relief yang kaya makna simbolis.\r\n\r\nSelain kunjungan wisata, Prambanan menjadi panggung pertunjukan Ramayana dan kegiatan budaya lainnya. Pengelolaan situs mengedepankan konservasi dan pengalaman edukatif bagi pengunjung.', 15),
(30, 'Keraton Yogyakarta', 'Sejarah & Budaya', 'Yogyakarta', 'Keraton Yogyakarta adalah destinasi budaya yang menonjol di Provinsi DI Yogyakarta. Istana ini menjadi pusat tradisi, upacara, dan pelestarian seni Jawa.\r\n\r\nSelain menjadi situs sejarah, Keraton menyelenggarakan pertunjukan seni, pameran, dan pendidikan budaya untuk masyarakat dan wisatawan. Partisipasi komunitas penting untuk menjaga kelangsungan tradisi keraton.', 15),
(31, 'Gunung Bromo', 'Gunung', 'Probolinggo, Jawa Timur', 'Gunung Bromo adalah destinasi gunung yang menonjol di Provinsi Jawa Timur. Panorama lautan pasir dan matahari terbit menjadikan Bromo favorit bagi wisatawan petualang dan fotografer.\r\n\r\nSelain pemandangan, Bromo menjadi lokasi acara budaya Tengger yang kaya tradisi. Pengelolaan kawasan berfokus pada keselamatan pengunjung dan pelestarian lingkungan pegunungan.', 16),
(32, 'Pantai Kuta (Banyuwangi)', 'Pantai', 'Banyuwangi, Jawa Timur', 'Pantai Kuta di Banyuwangi adalah destinasi pantai yang menonjol di Provinsi Jawa Timur. Pantai berpasir dengan panorama alam yang unik menawarkan pengalaman berselancar dan relaksasi.\r\n\r\nSelain wisata alam, area ini mendukung komunitas lokal melalui homestay dan kuliner khas. Pengelolaan pariwisata mengedepankan keterlibatan masyarakat untuk manfaat ekonomi berkelanjutan.', 16),
(33, 'Pura Tanah Lot', 'Budaya', 'Tabanan, Bali', 'Pura Tanah Lot adalah destinasi budaya yang menonjol di Provinsi Bali. Pura di atas karang ini terkenal sebagai tempat melihat matahari terbenam yang dramatis dan pusat kegiatan spiritual.\r\n\r\nSelain nilai religius, Tanah Lot menjadi ikon pariwisata yang mendukung ekonomi kreatif dan seni Bali. Upaya konservasi dan pengaturan kunjungan penting untuk menjaga struktur batu karang dan lingkungan sekitar.', 17),
(34, 'Pantai Kuta', 'Pantai', 'Badung, Bali', 'Pantai Kuta adalah destinasi pantai yang menonjol di Provinsi Bali. Pantai ini terkenal karena ombaknya yang cocok untuk berselancar dan suasana pantai yang semarak.\r\n\r\nSelain hiburan dan belanja, kawasan Kuta mempertahankan nilai budaya Bali melalui upacara dan pertunjukan tradisional. Tata kelola pariwisata menekankan keseimbangan antara aktivitas ekonomi dan pelestarian budaya.', 17),
(35, 'Pantai Kuta Lombok', 'Pantai', 'Kuta, Lombok', 'Pantai Kuta Lombok adalah destinasi pantai yang menonjol di Provinsi Nusa Tenggara Barat. Pasir putih dan perairan jernih menjadikannya tujuan populer bagi peselancar dan pencari ketenangan.\r\n\r\nSelain panorama, komunitas lokal menawarkan homestay dan kegiatan budaya Sasak yang memperkaya kunjungan. Pengembangan pariwisata diarahkan untuk menjaga karakter lokal dan lingkungan pesisir.', 18),
(36, 'Gili Trawangan', 'Pulau', 'Lombok Utara', 'Gili Trawangan adalah destinasi pulau yang menonjol di Provinsi Nusa Tenggara Barat. Pulau kecil ini terkenal dengan kehidupan bawah lautnya yang indah serta suasana santai tanpa kendaraan bermotor.\r\n\r\nSelain snorkeling dan diving, Gili Trawangan menawarkan kehidupan malam yang ramah wisatawan dan infrastruktur ramah lingkungan. Pelestarian terumbu karang menjadi fokus utama komunitas setempat.', 18),
(37, 'Pulau Komodo', 'Alam & Satwa', 'Flores, NTT', 'Pulau Komodo adalah destinasi alam dan satwa yang menonjol di Provinsi Nusa Tenggara Timur. Habitat komodo serta lanskap pulau yang unik membuatnya menjadi tujuan ekowisata populer.\r\n\r\nSelain observasi satwa, kegiatan wisata diarahkan pada edukasi konservasi dan pelestarian habitat. Pengelolaan kawasan menyeimbangkan kebutuhan wisata dan perlindungan spesies langka.', 19),
(38, 'Pantai Pink', 'Pantai', 'Pulau Komodo area, NTT', 'Pantai Pink adalah destinasi pantai yang menonjol di Provinsi Nusa Tenggara Timur. Warna pasir yang sedikit kemerahan menciptakan pemandangan unik yang memikat wisatawan.\r\n\r\nSelain estetika, kawasan pantai mendukung kunjungan yang bertanggung jawab untuk menjaga warna pasir dan ekosistem sekitarnya. Pengunjung didorong untuk mengikuti pedoman konservasi saat berkunjung.', 19),
(39, 'Taman Nasional Tanjung Puting', 'Konservasi', 'Katingan, Kalimantan Barat', 'Taman Nasional Tanjung Puting adalah destinasi konservasi yang menonjol di Provinsi Kalimantan Barat. Kawasan ini terkenal untuk observasi orangutan dan ekosistem rawa tropis yang kaya.\r\n\r\nSelain penelitian, kawasan ini menjadi pusat ekowisata yang melibatkan masyarakat lokal dalam program konservasi. Tur konservasi dan kunjungan edukatif menjadi pengalaman utama bagi pengunjung.', 20),
(40, 'Jembatan Kapuas', 'Landmark', 'Pontianak, Kalbar', 'Jembatan Kapuas adalah destinasi landmark yang menonjol di Provinsi Kalimantan Barat. Sebagai salah satu jembatan panjang di wilayah Kalimantan, jembatan ini menjadi simbol konektivitas dan pembangunan.\r\n\r\nSelain fungsi transportasi, area sekitar jembatan berkembang menjadi pusat perdagangan dan aktivitas lokal. Pemandangan sungai dan aktivitas pelabuhan menambah daya tarik bagi wisatawan.', 20),
(41, 'Taman Nasional Sebangau', 'Konservasi', 'Kalimantan Tengah', 'Taman Nasional Sebangau adalah destinasi konservasi yang menonjol di Provinsi Kalimantan Tengah. Hutan rawa ini merupakan habitat bagi berbagai spesies, termasuk orangutan dan keanekaragaman hayati lainnya.\r\n\r\nSelain konservasi, kawasan ini menyediakan program penelitian dan wisata edukasi yang mendorong partisipasi warga. Upaya perlindungan habitat dilakukan bersama antara pemerintah dan komunitas lokal.', 21),
(42, 'Pasar Terapung Palangka', 'Pasar Tradisional', 'Palangka Raya, Kalteng', 'Pasar Terapung Palangka adalah destinasi budaya dan pasar yang menonjol di Provinsi Kalimantan Tengah. Pasar ini menampilkan interaksi dagang tradisional di atas sungai yang khas.\r\n\r\nSelain aktivitas pasar, pengunjung dapat menikmati kuliner lokal dan melihat kehidupan sungai masyarakat. Konservasi sungai dan ekonomi lokal menjadi fokus pengembangan kawasan.', 21),
(43, 'Pasar Terapung Siring', 'Budaya & Pasar', 'Banjarmasin, Kalsel', 'Pasar Terapung Siring adalah destinasi budaya yang menonjol di Provinsi Kalimantan Selatan. Aktivitas jual beli di atas perahu memberikan pengalaman unik belanja tradisional.\r\n\r\nSelain wisata pasar, kawasan ini menjadi tempat pelestarian kuliner Banjar dan kegiatan budaya air. Pengelolaan pariwisata mendukung kesejahteraan nelayan dan pedagang setempat.', 22),
(44, 'Pegunungan Meratus', 'Alam', 'Kalimantan Selatan', 'Pegunungan Meratus adalah destinasi alam yang menonjol di Provinsi Kalimantan Selatan. Pegunungan ini menjadi kawasan penting bagi budaya Dayak dan keanekaragaman flora serta fauna.\r\n\r\nSelain ekowisata, Meratus menjadi fokus penelitian dan pelestarian pengetahuan tradisional suku-suku setempat. Kolaborasi antara ilmuwan dan komunitas mendukung pelestarian lingkungan dan budaya.', 22),
(45, 'Bukit Bangkirai', 'Alam', 'Kutai Kartanegara, Kaltim', 'Bukit Bangkirai adalah destinasi alam yang menonjol di Provinsi Kalimantan Timur. Hutan tropis dengan jembatan gantung dan trek canopy memberikan pengalaman petualangan alam.\r\n\r\nSelain ekowisata, kawasan ini menyajikan peluang edukasi tentang hutan hujan tropis dan konservasi. Pengelolaan kawasan mendorong partisipasi wisata berkelanjutan komunitas lokal.', 23),
(46, 'Taman Nasional Kutai', 'Konservasi', 'Kalimantan Timur', 'Taman Nasional Kutai adalah destinasi konservasi yang menonjol di Provinsi Kalimantan Timur. Hutan tropis luas menjadi habitat beragam spesies dan menyediakan jalur penelitian ilmiah.\r\n\r\nSelain pelestarian, taman nasional mendukung kegiatan wisata edukatif yang melibatkan pemandu lokal. Upaya perlindungan habitat dikombinasikan dengan program pemberdayaan masyarakat.', 23),
(47, 'Pulau Bunyu', 'Pulau', 'Kalimantan Utara', 'Pulau Bunyu adalah destinasi pulau yang menonjol di Provinsi Kalimantan Utara. Pulau ini dikenal dengan kegiatan perikanan dan lanskap pesisir yang tenang untuk relaksasi.\r\n\r\nSelain perikanan, Pulau Bunyu menawarkan kesempatan untuk melihat kehidupan pesisir dan budaya nelayan setempat. Pengembangan pariwisata diarahkan untuk memberi manfaat ekonomi pada komunitas lokal.', 24),
(48, 'Taman Nasional Kayan Mentarang', 'Konservasi', 'Kalimantan Utara', 'Taman Nasional Kayan Mentarang adalah destinasi konservasi yang menonjol di Provinsi Kalimantan Utara. Kawasan ini memiliki hutan primer luas dan keanekaragaman hayati tinggi.\r\n\r\nSelain konservasi, wilayah ini mendukung penelitian dan ekowisata terpadu yang bertanggung jawab. Kerja sama dengan masyarakat adat menjadi kunci untuk perlindungan sumber daya alam.', 24),
(49, 'Bunaken', 'Taman Laut', 'Manado, Sulawesi Utara', 'Bunaken adalah destinasi taman laut yang menonjol di Provinsi Sulawesi Utara. Terumbu karang yang mempesona dan keanekaragaman bawah laut menjadikannya tujuan favorit penyelam.\r\n\r\nSelain diving, kawasan ini didukung oleh program konservasi laut dan komunitas penyelam lokal. Pengelolaan berbasis komunitas membantu menjaga kesehatan terumbu karang jangka panjang.', 25),
(50, 'Danau Tondano', 'Danau', 'Minahasa, Sulawesi Utara', 'Danau Tondano adalah destinasi danau yang menonjol di Provinsi Sulawesi Utara. Danau ini menawarkan panorama air tenang dan aktivitas wisata seperti memancing dan berperahu.\r\n\r\nSelain keindahan, kawasan ini berfungsi sebagai sumber kehidupan dan rekreasi bagi masyarakat setempat. Program pemeliharaan kualitas air menjadi bagian dari pengelolaan kawasan.', 25),
(51, 'Pulau Saronde', 'Pulau', 'Gorontalo', 'Pulau Saronde adalah destinasi pulau yang menonjol di Provinsi Gorontalo. Pasir putih dan air jernih menjadikan pulau ini tujuan snorkeling dan relaksasi.\r\n\r\nSelain wisata bahari, Pulau Saronde mengangkat budaya pesisir dan produk lokal sebagai bagian dari atraksi. Pengelolaan berkelanjutan menjadi perhatian untuk menjaga keindahan pulau.', 26),
(52, 'Danau Limboto', 'Danau', 'Gorontalo', 'Danau Limboto adalah destinasi danau yang menonjol di Provinsi Gorontalo. Danau ini menjadi pusat kegiatan lokal dan rekreasi alam bagi masyarakat.\r\n\r\nSelain panorama, upaya restorasi dan pengelolaan lingkungan dilakukan untuk mempertahankan fungsi ekosistem dan manfaat ekonomi setempat.', 26),
(53, 'Togean Islands', 'Kepulauan', 'Tojo Una-Una, Sulawesi Tengah', 'Togean Islands adalah destinasi kepulauan yang menonjol di Provinsi Sulawesi Tengah. Kepulauan ini menawarkan keindahan laut, snorkeling, dan kehidupan bawah laut yang kaya.\r\n\r\nSelain ekowisata, komunitas lokal terlibat dalam pelestarian terumbu karang dan praktik perikanan yang berkelanjutan. Pendekatan konservasi membantu menjaga ekosistem laut jangka panjang.', 27),
(54, 'Lore Lindu National Park', 'Konservasi', 'Sulteng', 'Lore Lindu National Park adalah destinasi konservasi yang menonjol di Provinsi Sulawesi Tengah. Taman nasional ini melindungi flora dan fauna endemik serta situs arkeologi prasejarah.\r\n\r\nSelain konservasi, taman nasional menjadi ruang penelitian dan pendidikan lingkungan yang melibatkan masyarakat lokal. Kegiatan ekowisata diarahkan pada pendidikan dan perlindungan alam.', 27),
(55, 'Pantai Losari', 'Pantai', 'Makassar, Sulawesi Selatan', 'Pantai Losari adalah destinasi pantai yang menonjol di Provinsi Sulawesi Selatan. Garis pantai ini populer untuk menikmati matahari terbenam dan kuliner khas Makassar.\r\n\r\nSelain panorama, kawasan ini menjadi pusat aktivitas masyarakat dan festival yang menarik wisatawan. Pengelolaan area menitikberatkan kebersihan dan akses publik.', 28),
(56, 'Fort Rotterdam', 'Sejarah', 'Makassar, Sulawesi Selatan', 'Fort Rotterdam adalah destinasi sejarah yang menonjol di Provinsi Sulawesi Selatan. Benteng ini menjadi saksi masa kolonial dan pusat budaya lokal.\r\n\r\nSelain nilai sejarah, area ini menjadi tempat pameran, museum, dan kegiatan budaya yang mendukung pendidikan sejarah. Konservasi bangunan penting untuk mempertahankan nilai warisan.', 28),
(57, 'Wakatobi', 'Taman Laut', 'Wakatobi, Sulawesi Tenggara', 'Wakatobi adalah destinasi taman laut yang menonjol di Provinsi Sulawesi Tenggara. Terumbu karang yang menakjubkan dan keanekaragaman hayati bawah laut menjadikannya destinasi menyelam kelas dunia.\r\n\r\nSelain kegiatan diving, Wakatobi mengintegrasikan komunitas lokal dalam pelestarian laut dan program pariwisata berkelanjutan. Pendidikan konservasi menjadi bagian penting dari pengalaman pengunjung.', 29),
(58, 'Pantai Nirwana', 'Pantai', 'Kendari, Sulawesi Tenggara', 'Pantai Nirwana adalah destinasi pantai yang menonjol di Provinsi Sulawesi Tenggara. Ombak tenang dan panorama pesisir mendukung rekreasi keluarga serta aktivitas air.\r\n\r\nSelain wisata, kawasan ini merupakan pusat budaya pesisir yang menghadirkan kuliner dan pertunjukan lokal. Upaya pengelolaan berkelanjutan diarahkan untuk melindungi pesisir dan mendukung ekonomi lokal.', 29),
(59, 'Taman Nasional Taka Bonerate', 'Taman Laut', 'Sulawesi Barat', 'Taman Nasional Taka Bonerate adalah destinasi taman laut yang menonjol di Provinsi Sulawesi Barat. Perairan yang kaya terumbu dan atol menjadikannya lokasi menyelam yang istimewa.\r\n\r\nSelain keindahan bawah laut, kawasan ini mendukung kegiatan penelitian dan pengelolaan terumbu karang. Kolaborasi dengan komunitas pesisir dirancang untuk kesejahteraan dan pelestarian lingkungan.', 30),
(60, 'Pulau Karampuang', 'Pulau', 'Mamuju, Sulawesi Barat', 'Pulau Karampuang adalah destinasi pulau yang menonjol di Provinsi Sulawesi Barat. Pulau kecil ini menawarkan pesona pantai dan kesempatan interaksi budaya dengan masyarakat setempat.\r\n\r\nSelain panorama, pengembangan pariwisata diarahkan untuk melibatkan komunitas lokal dan menjaga kelestarian pulau. Praktik pariwisata yang bertanggung jawab menjadi landasan pengelolaan.', 30),
(61, 'Pulau Banda', 'Pulau & Sejarah', 'Banda, Maluku', 'Pulau Banda adalah destinasi pulau dan sejarah yang menonjol di Provinsi Maluku. Pulau ini menyimpan jejak perdagangan rempah-rempah dan benteng-benteng kolonial yang menarik untuk dieksplorasi.\r\n\r\nSelain nilai sejarah, Banda menawarkan pengalaman menyelam dan wisata bahari yang memadukan aspek budaya dan alam. Pelestarian situs bersejarah menjadi bagian dari strategi pariwisata lokal.', 31),
(62, 'Pantai Ora', 'Pantai', 'Seram Utara, Maluku', 'Pantai Ora adalah destinasi pantai yang menonjol di Provinsi Maluku. Teluk berair jernih dan resort yang ramah lingkungan menciptakan suasana tropis yang tenang.\r\n\r\nSelain relaksasi, kawasan ini mendukung aktivitas snorkeling dan pengalaman budaya komunitas pesisir. Konservasi terumbu dan program pelestarian menjadi fokus pengelolaan.', 31),
(63, 'Pulau Halmahera', 'Pulau', 'Halmahera, Maluku Utara', 'Pulau Halmahera adalah destinasi pulau yang menonjol di Provinsi Maluku Utara. Lanskap pulau yang bervariasi dan potensi keanekaragaman hayati menawarkan pengalaman petualangan.\r\n\r\nSelain alam, Pulau Halmahera memiliki warisan budaya dan tradisi lokal yang dipertahankan oleh komunitas. Pengembangan pariwisata diarahkan untuk manfaat sosial-ekonomi masyarakat lokal.', 32),
(64, 'Keraton Ternate & Forts', 'Sejarah', 'Ternate, Maluku Utara', 'Keraton Ternate & Forts adalah destinasi sejarah yang menonjol di Provinsi Maluku Utara. Kawasan ini mencerminkan sejarah perdagangan rempah dan tata politik lokal masa lalu.\r\n\r\nSelain situs sejarah, area ini menjadi pusat kegiatan budaya dan edukasi yang memperkenalkan jejak sejarah setempat. Pelestarian benteng dan situs menjadi penting untuk generasi mendatang.', 32),
(65, 'Danau Sentani', 'Danau', 'Jayapura, Papua', 'Danau Sentani adalah destinasi danau yang menonjol di Provinsi Papua. Danau luas dengan pulau-pulau kecil menawarkan panorama indah dan budaya lokal yang hidup.\r\n\r\nSelain pemandangan, Danau Sentani menjadi pusat pameran seni dan festival budaya yang memperkenalkan tarian serta kerajinan. Upaya pelestarian budaya dan lingkungan berjalan seiring untuk menjaga keunikan daerah.', 33),
(66, 'Lembah Baliem', 'Budaya & Alam', 'Wamena, Papua', 'Lembah Baliem adalah destinasi budaya dan alam yang menonjol di Provinsi Papua. Kawasan ini terkenal dengan festival budaya, rumah adat, dan lanskap pegunungan yang spektakuler.\r\n\r\nSelain atraksi budaya, Lembah Baliem menjadi tempat penelitian antropologi dan ekowisata yang melibatkan masyarakat asli. Konservasi tradisi dan lingkungan menjadi fokus untuk kesinambungan budaya.', 33),
(67, 'Raja Ampat', 'Taman Laut', 'Raja Ampat, Papua Barat', 'Raja Ampat adalah destinasi taman laut yang menonjol di Provinsi Papua Barat. Kepulauan ini terkenal dengan keanekaragaman hayati laut luar biasa yang menarik penyelam dari seluruh dunia.\r\n\r\nSelain menyelam, Raja Ampat mendukung pelestarian terumbu karang dan pemanfaatan pariwisata berkelanjutan. Komunitas lokal terlibat aktif dalam upaya konservasi dan pengembangan penyuluhan lingkungan.', 34),
(68, 'Pulau Mansuar', 'Pulau', 'Raja Ampat, Papua Barat', 'Pulau Mansuar adalah destinasi pulau yang menonjol di Provinsi Papua Barat. Pulau ini menawarkan pantai berbatu, teluk tenang, dan akses ke spot menyelam bertingkat.\n\n\r\nSelain panorama, komunitas setempat menyediakan layanan wisata yang berfokus pada pengalaman alam. Peran masyarakat penting dalam menjaga kelestarian kawasan laut dan pesisir.', 34),
(69, 'Pulau Mapia', 'Pulau', 'Papua Barat Daya', 'Pulau Mapia adalah destinasi pulau yang menonjol di Provinsi Papua Barat Daya. Pulau terpencil ini menawarkan pengalaman alami dan interaksi dengan ekosistem pesisir yang relatif belum terjamah.\r\n\r\nSelain kesempatan eksplorasi alam, kegiatan wisata diarahkan pada pelestarian alam dan pelibatan komunitas nelayan. Konsep pariwisata berkelanjutan diterapkan untuk menjaga kelestarian pulau.', 35),
(70, 'Taman Laut Onin', 'Taman Laut', 'Kaimana, Papua Barat Daya', 'Taman Laut Onin adalah destinasi taman laut yang menonjol di Provinsi Papua Barat Daya. Perairan yang kaya kehidupan laut menawarkan pengalaman menyelam dan snorkeling.\r\n\r\nSelain pesona bawah laut, taman laut mendukung program konservasi dan penelitian biodiversitas laut. Sinergi antara ilmuwan dan masyarakat lokal memperkuat upaya pelestarian.', 35),
(71, 'Pegunungan Cyclops', 'Pegunungan', 'Jayapura Selatan, Papua Tengah', 'Pegunungan Cyclops adalah destinasi pegunungan yang menonjol di Provinsi Papua Tengah. Pegunungan ini menampilkan lanskap subur dan keanekaragaman hayati yang menarik bagi pendaki dan peneliti.\r\n\r\nSelain alam, kawasan ini menjadi ruang pendidikan lingkungan dan penelitian konservasi. Pengelolaan berfokus pada perlindungan habitat alami dan akses wisata yang bertanggung jawab.', 36),
(72, 'Danau Jayapura', 'Danau', 'Papua Tengah', 'Danau Jayapura adalah destinasi danau yang menonjol di Provinsi Papua Tengah. Danau ini menawarkan pemandangan tenang dan nilai ekologi yang penting bagi komunitas setempat.\r\n\r\nSelain sebagai sumber kehidupan lokal, danau menjadi tempat rekreasi dan kegiatan budaya. Upaya pelestarian lingkungan diarahkan untuk menjaga kualitas air dan habitat alami.', 36),
(73, 'Lembah Baliem (varian)', 'Budaya & Alam', 'Wamena, Papua Pegunungan', 'Lembah Baliem adalah destinasi budaya dan alam yang menonjol di Provinsi Papua Pegunungan. Festival dan tradisi lokal memberi wawasan mendalam tentang kehidupan suku-suku pegunungan.\r\n\r\nSelain atraksi budaya, kawasan ini juga mendukung studi antropologi dan pariwisata edukatif. Pelestarian tradisi serta lingkungan menjadi fokus kegiatan pembangunan lokal.', 37),
(74, 'Puncak Jayawijaya', 'Pegunungan', 'Papua Pegunungan', 'Puncak Jayawijaya adalah destinasi pegunungan yang menonjol di Provinsi Papua Pegunungan. Sebagai puncak tertinggi di Indonesia, area ini menjadi tujuan pendakian ekstrim dan studi geologi.\r\n\r\nSelain tantangan alam, kawasan ini memiliki nilai budaya dan tradisi masyarakat adat. Pengelolaan jalur dan keselamatan menjadi prioritas untuk pengalaman pendakian yang aman dan terkontrol.', 37);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `budaya`
--
ALTER TABLE `budaya`
  ADD PRIMARY KEY (`id_budaya`),
  ADD KEY `id_daerah` (`id_daerah`);

--
-- Indexes for table `daerah`
--
ALTER TABLE `daerah`
  ADD PRIMARY KEY (`id_daerah`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id_wisata`),
  ADD KEY `id_daerah` (`id_daerah`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `budaya`
--
ALTER TABLE `budaya`
  MODIFY `id_budaya` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `daerah`
--
ALTER TABLE `daerah`
  MODIFY `id_daerah` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id_wisata` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `budaya`
--
ALTER TABLE `budaya`
  ADD CONSTRAINT `budaya_ibfk_1` FOREIGN KEY (`id_daerah`) REFERENCES `daerah` (`id_daerah`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wisata`
--
ALTER TABLE `wisata`
  ADD CONSTRAINT `wisata_ibfk_1` FOREIGN KEY (`id_daerah`) REFERENCES `daerah` (`id_daerah`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
