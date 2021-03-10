-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Mar 2021 pada 17.57
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apirestoran`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `details`
--

CREATE TABLE `details` (
  `iddetail` int(10) UNSIGNED NOT NULL,
  `idorder` int(11) NOT NULL,
  `idmenu` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `hargajual` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoris`
--

CREATE TABLE `kategoris` (
  `idkategori` int(10) UNSIGNED NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategoris`
--

INSERT INTO `kategoris` (`idkategori`, `kategori`, `keterangan`, `created_at`, `updated_at`) VALUES
(109, 'Snack Murah', 'Snack Murah', '2021-03-10 04:21:01', '2021-03-10 04:50:17'),
(115, 'Minuman', 'Kategori Kue', '2021-03-10 04:47:12', '2021-03-10 04:47:12'),
(117, 'Okky', 'Okky nn', '2021-03-10 04:47:20', '2021-03-10 04:50:51'),
(122, 'Nungka', 'nungka', '2021-03-10 06:17:40', '2021-03-10 06:18:03'),
(123, 'Makanan', 'Kategori Makanan', '2021-03-10 08:02:18', '2021-03-10 08:02:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `idmenu` int(10) UNSIGNED NOT NULL,
  `idkategori` bigint(20) NOT NULL,
  `menu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`idmenu`, `idkategori`, `menu`, `gambar`, `harga`, `created_at`, `updated_at`) VALUES
(7, 7, 'BUKSU s', 'http://localhost:8000/upload/klepon.jpg', 90000, '2021-03-10 05:00:00', '2021-03-10 08:34:33'),
(8, 116, 'Donat', 'http://localhost:8000/upload/donat.jpg', 5000, '2021-03-10 05:00:27', '2021-03-10 05:00:27'),
(11, 115, 'Es Degan', 'http://localhost:8000/upload/esdegan.jpg', 4000, '2021-03-10 07:58:44', '2021-03-10 07:58:44'),
(12, 109, 'Alfamart', 'http://localhost:8000/upload/alfamart.png', 9000, '2021-03-10 08:00:15', '2021-03-10 08:39:18'),
(13, 123, 'Kue Putu', 'http://localhost:8000/upload/bolu kukus.jpg', 1231, '2021-03-10 08:02:40', '2021-03-10 08:40:11'),
(14, 115, 'Jus Aplukan', 'http://localhost:8000/upload/jusalpukat.jpg', 1231, '2021-03-10 08:03:54', '2021-03-10 08:41:51'),
(15, 115, 'Es Campur', 'http://localhost:8000/upload/escampur.jpg', 70000, '2021-03-10 08:40:32', '2021-03-10 08:40:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2021_03_06_064714_create_kategoris_table', 1),
(3, '2021_03_06_072331_create_pelanggans_table', 1),
(5, '2021_03_06_091251_create_menus_table', 2),
(6, '2021_03_07_143816_user', 3),
(7, '2021_03_10_085042_create_orders_table', 4),
(8, '2021_03_10_085314_create_details_table', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `idorder` int(10) UNSIGNED NOT NULL,
  `idpelanggan` int(11) NOT NULL,
  `tglorder` date NOT NULL,
  `total` int(11) NOT NULL,
  `bayar` int(11) NOT NULL,
  `kembali` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`idorder`, `idpelanggan`, `tglorder`, `total`, `bayar`, `kembali`, `status`, `created_at`, `updated_at`) VALUES
(1, 101, '2021-03-10', 90000, 0, 0, 0, NULL, '2021-03-10 09:07:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggans`
--

CREATE TABLE `pelanggans` (
  `idpelanggan` int(10) UNSIGNED NOT NULL,
  `pelanggan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pelanggans`
--

INSERT INTO `pelanggans` (`idpelanggan`, `pelanggan`, `alamat`, `telp`, `created_at`, `updated_at`) VALUES
(17, 'Hipolito Greenfelder', '491 Johathan Street Suite 123\nMertzmouth, MI 56357-3636', '(628) 532-3238', '2021-03-06 07:50:56', '2021-03-06 07:50:56'),
(21, 'Dr. Kyle Walker', '6520 Volkman Vista Apt. 851\nSawaynhaven, OR 83901-4910', '1-449-368-9165', '2021-03-06 07:50:56', '2021-03-06 07:50:56'),
(23, 'Gia Welch', '866 Sven Lane Suite 880\nChadville, UT 08977-0711', '1-814-522-7284', '2021-03-06 07:50:56', '2021-03-06 07:50:56'),
(24, 'Dr. Demarco Pfannerstill', '746 McCullough Common\nPort Brianberg, IL 75130', '590.220.9422', '2021-03-06 07:50:56', '2021-03-06 07:50:56'),
(25, 'Dr. Brenda Zieme', '98002 Borer Cliffs Suite 610\nEdisonfurt, WV 12648', '(581) 361-0904', '2021-03-06 07:50:56', '2021-03-06 07:50:56'),
(26, 'Eliseo Corwin I', '6778 Glenna Flats\nSengershire, DE 53940-8907', '+1.506.726.2427', '2021-03-06 07:50:56', '2021-03-06 07:50:56'),
(27, 'Prof. Pete Kihn', '268 Clara Tunnel Suite 997\nSipesport, HI 88036', '(670) 545-9406', '2021-03-06 07:50:56', '2021-03-06 07:50:56'),
(28, 'April Grant', '860 Stehr Court\nRobelton, OK 63507', '+1.274.389.8860', '2021-03-06 07:50:56', '2021-03-06 07:50:56'),
(29, 'Shayne Konopelski III', '59785 Jerald Flat Suite 324\nPort Ernestinaport, IA 61853-1710', '(550) 864-7144', '2021-03-06 07:50:56', '2021-03-06 07:50:56'),
(30, 'Jolie Jenkins', '556 Fidel Drives\nNorth Trevion, IN 03673', '+1-932-312-9015', '2021-03-06 07:50:56', '2021-03-06 07:50:56'),
(31, 'Tina Grimes', '3805 Ankunding Knolls Apt. 218\nPort Demarco, IA 39621', '(661) 456-2910', '2021-03-06 07:50:56', '2021-03-06 07:50:56'),
(32, 'Mr. Carter Hegmann', '52717 Michale Turnpike\nWest Giuseppe, ID 86265-2653', '1-357-419-2665', '2021-03-06 07:50:56', '2021-03-06 07:50:56'),
(33, 'Nikki Fisher', '4972 Green Court\nWest Makenzieshire, GA 30566', '483.282.1657', '2021-03-06 07:50:56', '2021-03-06 07:50:56'),
(34, 'Dwight Casper', '184 Sandra Mission\nNorth Virgie, MT 36891-7942', '+15276858617', '2021-03-06 07:50:56', '2021-03-06 07:50:56'),
(35, 'Torey Bergnaum', '674 Vandervort Ramp Suite 940\nWest Sandymouth, NY 55637', '+1.390.216.2849', '2021-03-06 07:50:56', '2021-03-06 07:50:56'),
(36, 'Lue Boyle', '92388 Emmalee Knolls Suite 689\nFarrellport, SD 20371-8592', '668.842.6736', '2021-03-06 07:50:56', '2021-03-06 07:50:56'),
(37, 'Eula Mosciski', '3810 Metz Ville\nAshtynville, MD 88043', '+1-917-863-0242', '2021-03-06 07:50:56', '2021-03-06 07:50:56'),
(38, 'Immanuel Olson', '87863 Jayson Lock Apt. 079\nLeonorview, OK 56569', '646-363-1251', '2021-03-06 07:50:56', '2021-03-06 07:50:56'),
(39, 'Frances Hill', '7528 Claudine Key Apt. 829\nWest Shania, DC 95616-9774', '260-443-1186', '2021-03-06 07:50:56', '2021-03-06 07:50:56'),
(40, 'Ms. Zoie Gleichner I', '2422 Steuber Club\nLake Merlfort, OH 48259-3301', '+1.216.682.6017', '2021-03-06 07:50:56', '2021-03-06 07:50:56'),
(41, 'Gregg Aufderhar', '7090 Cade Common Suite 950\nEast Jeramieburgh, SC 92035', '+1-927-472-5954', '2021-03-06 07:50:56', '2021-03-06 07:50:56'),
(42, 'Rahsaan Beier', '20103 Glover Key Suite 127\nSouth Maritzamouth, PA 44342', '228.861.8181', '2021-03-06 07:50:56', '2021-03-06 07:50:56'),
(43, 'Jailyn Waters', '9168 Kutch Highway Suite 884\nPort Miller, IN 59454', '+1 (653) 956-2979', '2021-03-06 07:50:56', '2021-03-06 07:50:56'),
(44, 'Dr. Cassandre Wuckert III', '61974 Kozey Trail Apt. 771\nPort Virginie, KY 91639-6506', '+1.440.375.9449', '2021-03-06 07:50:56', '2021-03-06 07:50:56'),
(45, 'Faye Reilly', '54574 Oberbrunner Square\nPort Connie, DC 05860-5625', '+1-804-486-8254', '2021-03-06 07:50:56', '2021-03-06 07:50:56'),
(46, 'Jacquelyn Predovic', '90614 Sylvan Street\nWatsicaville, CT 34089', '(645) 683-8046', '2021-03-06 07:50:56', '2021-03-06 07:50:56'),
(47, 'Chase Gislason', '22328 Terry Streets Apt. 949\nWatersburgh, RI 19128-1815', '1-675-339-2751', '2021-03-06 07:50:56', '2021-03-06 07:50:56'),
(48, 'Shawn Auer', '6267 Williamson Garden\nQuigleyview, HI 35444-7197', '+1 (709) 882-7805', '2021-03-06 07:50:56', '2021-03-06 07:50:56'),
(49, 'Mariana Schneider DDS', '37803 Eichmann Hill\nTheresechester, FL 83064', '646.838.8993', '2021-03-06 07:50:56', '2021-03-06 07:50:56'),
(50, 'Prof. Delfina Jast DDS', '89094 Jenkins View Apt. 161\nSouth Susannaton, TN 69428-0527', '559.906.2850', '2021-03-06 07:50:56', '2021-03-06 07:50:56'),
(51, 'Dr. Collin Corkery', '325 Virgil Route\nWuckertview, NH 94616', '+1-294-393-9579', '2021-03-06 07:50:56', '2021-03-06 07:50:56'),
(52, 'Kaylin Becker MD', '65655 Celestino Lock\nNew Greggborough, ID 09036-0794', '+1-795-753-1670', '2021-03-06 07:50:56', '2021-03-06 07:50:56'),
(53, 'Katharina Emmerich', '9028 Kohler Summit\nEast Dejah, NE 22711', '+1-975-884-6846', '2021-03-06 07:50:56', '2021-03-06 07:50:56'),
(54, 'Halie Kerluke PhD', '4903 Beatty Islands\nParkerstad, NH 81285', '380.906.9372', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(55, 'Madaline Rowe', '6375 Andreanne Springs Suite 985\nMargaretefurt, LA 20354', '+1-209-638-2721', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(56, 'Leta Emmerich', '71304 Sigrid Ramp Apt. 978\nWest Dudleychester, MO 00178-1114', '778.405.7719', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(57, 'Mr. Augustus Frami', '2341 Kulas Stravenue Apt. 435\nHaaghaven, WA 75608', '+1-559-709-4282', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(58, 'Miss Eden Reynolds I', '16417 Nicolas Club\nSouth Rosaberg, MA 38706', '692-532-0643', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(59, 'Enrique Harris', '42429 Ebert Square Suite 704\nBradburgh, ME 06477', '750-289-6772', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(60, 'Kacey Leuschke', '39736 Emard Pines Suite 702\nLilyanshire, RI 18760-2602', '+1-334-208-6628', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(61, 'Makayla Beer', '577 Spencer Square Suite 980\nNathanmouth, AR 27919', '1-271-230-4335', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(62, 'Jerry Hermann II', '603 Jerde Inlet Apt. 020\nBashirianside, FL 67606', '(610) 843-6488', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(63, 'Vinnie Keebler', '6214 Cortez Shores Suite 305\nSouth Jamieberg, CT 20757', '+1-405-443-8916', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(64, 'Alexzander Upton', '80926 Collier Drives Suite 909\nWizaton, MD 71915-9779', '843-346-7655', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(65, 'Cayla Crist', '5520 Lemke Stream Suite 558\nWest Rocky, AZ 29009', '705.840.1562', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(66, 'Mr. Brannon D\'Amore II', '4288 Brent Forest\nKunzeberg, WA 04060', '794-526-7434', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(67, 'Sherman Erdman DDS', '1204 Jensen Summit\nKleinfort, NJ 37828-9384', '(346) 405-8017', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(68, 'Marcella Wunsch MD', '769 Jerod Spurs Suite 958\nHarberberg, NV 18470', '552-524-4006', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(69, 'Imani Stracke', '3823 Yessenia Well\nPacochaland, AZ 29642-0114', '+1.519.253.7775', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(70, 'Dr. Kari Okuneva', '54468 Arianna Springs\nEast Autumnhaven, OR 90869-6342', '+1-372-494-6088', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(71, 'Ms. Lorena Johns', '9069 Gilberto Passage\nWest Cathy, HI 95956-8355', '326-979-5557', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(72, 'Geraldine Hayes I', '97014 Smith Circle Apt. 549\nElvaville, IA 10447-7553', '1-361-823-7681', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(73, 'Telly Kshlerin', '4660 Shawna Square Apt. 488\nNorth Dinafort, HI 21771-1359', '+1.254.981.4345', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(74, 'Clara Hand', '4051 Orn Prairie\nLake Catharineberg, NH 49023', '1-203-793-1580', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(75, 'Otho Kassulke', '3558 Rice Park Apt. 024\nEast Laury, SC 72171-7385', '236.369.9121', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(76, 'Dr. Brad Streich Jr.', '7435 Myah Plains\nCatalinaborough, ME 15116', '1-965-734-9127', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(77, 'Miss Alverta Feil Sr.', '46417 Rosamond Pike Apt. 015\nEast Cecile, OH 42920-7658', '1-257-415-5558', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(78, 'Tiara Grant', '560 VonRueden Park Suite 608\nNew Hassanborough, OH 42555', '815.331.6780', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(79, 'Prof. Nichole Barton', '24967 Schuppe Locks\nNew Nikkitown, IA 28870-4602', '(572) 529-7700', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(80, 'Naomie Gislason III', '1540 O\'Reilly Skyway Apt. 756\nDimitrifort, UT 15327-4470', '849.731.8555', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(81, 'Jaunita Tromp', '5415 Mitchell Grove\nPort Wilhelminebury, MT 45760-2196', '(820) 746-2344', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(82, 'Evangeline Hilpert', '33630 Milan Bridge Apt. 409\nWest Felipatown, MT 98644', '1-623-845-0491', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(83, 'Abigayle Marquardt I', '44425 Emilia Junction Suite 750\nLynchberg, TN 41192', '(760) 902-3805', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(84, 'Earnestine Hill', '867 Hermiston Wells\nNew Loyce, MD 38696', '1-621-435-4320', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(85, 'Johnpaul Nienow', '343 Waelchi Mountain Suite 362\nJasonport, RI 00044-5451', '359-446-0319', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(86, 'Isai Kreiger', '739 Spencer Estates\nLake Libbie, IN 15236', '+1 (332) 879-5979', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(87, 'Dr. Keaton Pollich', '289 Ankunding Haven\nWest Deonte, DE 31052', '+1-448-607-6543', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(88, 'Mr. Lourdes Wisozk', '222 Torp Gardens Suite 671\nNew Karianne, SC 21093', '292.653.5331', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(89, 'Josephine Lowe', '28106 Fay Stravenue Apt. 324\nNorth Keyonview, ID 91152-0622', '270.756.8532', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(90, 'Prof. Cynthia Considine', '25927 Lessie Rapid\nEast Markchester, WA 42020-4981', '892.281.0879', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(91, 'Prof. Orlando Nienow MD', '517 Katheryn Forest\nEast Gardnerville, NE 95215', '+1-513-585-0719', '2021-03-06 07:50:57', '2021-03-06 07:50:57'),
(92, 'Carey Osinski', '819 Norberto Motorway\nAlphonsoburgh, KY 48398', '576-774-2663', '2021-03-06 07:50:58', '2021-03-06 07:50:58'),
(93, 'Aida Bruen', '742 Ebert Manors\nJastside, AL 94358', '(773) 248-8514', '2021-03-06 07:50:58', '2021-03-06 07:50:58'),
(94, 'Antonio Boyle', '9573 Gusikowski Greens Apt. 911\nPearlineport, NE 80816-4813', '+12908461300', '2021-03-06 07:50:58', '2021-03-06 07:50:58'),
(95, 'Brennon Howe MD', '330 Schaden Garden Apt. 703\nLake Anastacio, MA 26552', '+1-925-231-9995', '2021-03-06 07:50:58', '2021-03-06 07:50:58'),
(96, 'Miss Alysson Renner DDS', '578 Lockman Stravenue\nAlyssonbury, UT 35163', '207-332-5717', '2021-03-06 07:50:58', '2021-03-06 07:50:58'),
(97, 'Miss Charlene Stanton V', '687 Princess Port\nNorth Alanaton, ND 34077-8517', '1-281-332-4616', '2021-03-06 07:50:58', '2021-03-06 07:50:58'),
(98, 'Mr. Waino Gaylord MD', '2226 Friesen Mission Apt. 932\nElifurt, ND 77736', '(808) 510-8922', '2021-03-06 07:50:58', '2021-03-06 07:50:58'),
(99, 'Holly Stoltenberg V', '123 Strosin Road\nZemlakhaven, WA 72090-6509', '+13917012772', '2021-03-06 07:50:58', '2021-03-06 07:50:58'),
(101, 'Bianka Little', '113 Julia Course\nNorth Dorris, KS 19090-2657', '(202) 693-2279', '2021-03-06 07:50:58', '2021-03-06 07:50:58'),
(102, 'Clotilde Daugherty', '88130 Quentin Mount\nHoegerstad, ID 32859', '+1 (315) 588-0140', '2021-03-06 07:50:58', '2021-03-06 07:50:58'),
(104, 'Gorengan asli', 'Gorengan pisang', '098989898', '2021-03-06 09:09:12', '2021-03-06 09:09:12'),
(105, 'Gorengan asli', 'Gorengan pisang', '098989898', '2021-03-06 09:09:14', '2021-03-06 09:09:14'),
(106, 'Pelanggan Axios', 'Alamat Axios', '089898908', '2021-03-09 15:48:43', '2021-03-09 15:48:43'),
(107, 'Pelanggan Axios', 'Alamat Axios', '089898908', '2021-03-09 15:49:30', '2021-03-09 15:49:30'),
(108, 'Pelanggan Axios', 'Alamat Axios', '089898908', '2021-03-09 15:53:45', '2021-03-09 15:53:45'),
(109, 'Pelanggan Axios', 'Alamat Axios', '089898908', '2021-03-09 15:53:58', '2021-03-09 15:53:58'),
(110, 'Pelanggan Axios', 'Alamat Axios', '089898908', '2021-03-09 15:54:59', '2021-03-09 15:54:59'),
(111, 'Pelanggan Axios', 'Alamat Axios', '089898908', '2021-03-09 15:55:32', '2021-03-09 15:55:32'),
(112, 'Pelanggan Axios', 'Alamat Axios', '089898908', '2021-03-09 15:57:22', '2021-03-09 15:57:22'),
(113, 'Pelanggan Axios', 'Alamat Axios', '089898908', '2021-03-09 16:38:07', '2021-03-09 16:38:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `relasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `level`, `api_token`, `status`, `relasi`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', 'password', 'pelanggan', '123456', 1, 'admin@gmail.com', '2021-03-07 14:46:34', '2021-03-07 14:46:34'),
(2, 'okky@gmail.com', 'password', 'pelanggan', 'lM1zxYdroKLNCU4r6zsgtOMG99pz3JpvWHoFxNAp', 1, 'okky@gmail.com', '2021-03-07 14:49:51', '2021-03-07 15:10:22');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`iddetail`);

--
-- Indeks untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`idmenu`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`idorder`);

--
-- Indeks untuk tabel `pelanggans`
--
ALTER TABLE `pelanggans`
  ADD PRIMARY KEY (`idpelanggan`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `details`
--
ALTER TABLE `details`
  MODIFY `iddetail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `idkategori` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT untuk tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `idmenu` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `idorder` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pelanggans`
--
ALTER TABLE `pelanggans`
  MODIFY `idpelanggan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
