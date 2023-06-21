-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 06, 2023 at 01:13 PM
-- Server version: 10.6.12-MariaDB-0ubuntu0.22.04.1
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proje`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`) VALUES
(3, 'Teknoloji'),
(4, 'Matematik'),
(5, 'Sanat'),
(6, 'Tarih'),
(7, 'İngilizce'),
(21, 'Spor');

-- --------------------------------------------------------

--
-- Table structure for table `difficulties`
--

CREATE TABLE `difficulties` (
  `id` int(11) NOT NULL,
  `difficulty` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `difficulties`
--

INSERT INTO `difficulties` (`id`, `difficulty`) VALUES
(1, 'easy');

-- --------------------------------------------------------

--
-- Table structure for table `incorrect_answers`
--

CREATE TABLE `incorrect_answers` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `incorrect_answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `incorrect_answers`
--

INSERT INTO `incorrect_answers` (`id`, `question_id`, `incorrect_answer`) VALUES
(1, 3, 'yanlışlara'),
(2, 3, 'deney'),
(3, 3, 'delkii'),
(5, 24, 'yapay zeka uzmanı'),
(6, 24, 'karpuz'),
(7, 24, 'vişne'),
(8, 25, 'şeker'),
(9, 25, 'ağ altyapısı'),
(10, 25, 'pilav'),
(11, 26, 'pancar'),
(12, 26, 'tost'),
(13, 26, 'ağ analizi'),
(14, 27, 'veri yedekleme'),
(15, 27, 'üzüm'),
(16, 27, 'karabiber'),
(17, 28, 'fasulye'),
(18, 28, 'çorba'),
(19, 28, 'elma'),
(20, 29, 'veri merkezi'),
(21, 29, 'ağ güvenliği uzmanı'),
(22, 29, 'börek'),
(23, 30, 'kahve'),
(24, 30, 'veri yönetimi'),
(25, 30, 'veri tabanı'),
(26, 31, 'biber'),
(27, 31, 'yazılım geliştirme'),
(28, 31, 'yazılım testi'),
(29, 32, 'hackleme'),
(30, 32, 'nar'),
(31, 32, 'badem'),
(32, 33, 'karpuz'),
(33, 33, 'üzüm'),
(34, 33, 'kahve'),
(35, 34, 'reçel'),
(36, 34, 'limon'),
(37, 34, 'biberiye'),
(38, 35, 'ahududu'),
(39, 35, 'yazılım güvenliği'),
(40, 35, 'fasulye'),
(41, 36, 'ağ güvenliği uzmanı'),
(42, 36, 'mango'),
(43, 36, 'gözleme'),
(44, 37, 'üzüm'),
(45, 37, 'veri yönetimi'),
(46, 37, 'elma'),
(47, 38, 'mandalina'),
(48, 38, 'ahududu'),
(49, 38, 'taze soğan'),
(50, 39, 'web tasarımı'),
(51, 39, 'veritabanı güvenliği'),
(52, 39, 'yazılım testi otomasyonu'),
(53, 40, 'yazılım geliştirme'),
(54, 40, 'üzüm'),
(55, 40, 'çiğ köfte'),
(56, 41, 'sanal sunucu yönetimi'),
(57, 41, 'elmas'),
(58, 41, 'siber güvenlik'),
(59, 42, 'taze fasulye'),
(60, 42, 'toz şeker'),
(61, 42, 'bulgur'),
(62, 43, 'makarna'),
(63, 43, 'kakao'),
(64, 43, 'ağ güvenlik testi'),
(65, 44, 'manti'),
(66, 44, 'yazılım tasarımı'),
(67, 44, 'veri tabanı yönetimi'),
(68, 45, 'yazılım proje yönetimi'),
(69, 45, 'greyfurt'),
(70, 45, 'artırılmış gerçeklik'),
(71, 46, 'web tasarımı'),
(72, 46, 'veri tabanı güvenlik testi'),
(73, 46, 'salatalık'),
(74, 47, 'salatalık'),
(75, 47, 'tuz'),
(76, 47, 'veri tabanı güvenlik testi'),
(77, 48, 'yapay zeka'),
(78, 48, 'ağ mimarisi'),
(79, 48, 'kabak'),
(80, 49, 'veri ihlali'),
(81, 49, 'yabanmersini'),
(82, 49, 'veri tabanı güvenlik testi'),
(83, 50, 'un'),
(84, 50, 'reçel'),
(85, 50, 'ceviz'),
(86, 51, 'veri merkezi'),
(87, 51, 'dut'),
(88, 51, 'web geliştirme'),
(89, 52, 'tarçın'),
(90, 52, 'bulut bilişim danışmanı'),
(91, 52, 'ağ analizi'),
(92, 53, 'nane'),
(93, 53, 'künefe'),
(94, 53, 'donanım'),
(95, 54, 'revani'),
(96, 54, 'pırlanta'),
(97, 54, 'ananas'),
(98, 55, 'greyfurt'),
(99, 55, 'kivi'),
(100, 55, 'ekmek kadayıfı'),
(101, 56, 'yazılım testi otomasyonu'),
(102, 56, 'yazılım güncelleme yönetimi'),
(103, 56, 'mobil uygulama geliştirme'),
(104, 57, 'nar'),
(105, 57, 'mobil'),
(106, 57, 'biber'),
(107, 58, 'e-ticaret'),
(108, 58, 'lokum'),
(109, 58, 'yabanmersini'),
(110, 59, 'ahududu'),
(111, 59, 'otonom araçlar'),
(112, 59, 'patlıcan'),
(113, 60, 'veri tabanı entegrasyonu'),
(114, 60, 'internet hizmet sağlayıcısı'),
(115, 60, 'veri yedekleme'),
(116, 61, 'altın'),
(117, 61, 'ıspanak'),
(118, 61, 'kebap'),
(119, 62, 'ağ mimarisi'),
(120, 62, 'ahududu'),
(121, 62, 'ağ güvenlik politikası'),
(122, 63, 'kavun'),
(123, 63, 'güvenlik açığı'),
(124, 63, 'portakal'),
(125, 64, 'uygulama'),
(126, 64, 'bezelye'),
(127, 64, 'profiterol'),
(128, 65, 'biyometrik'),
(129, 65, 'siber güvenlik analisti'),
(130, 65, 'kavun'),
(131, 66, 'ahududu'),
(132, 66, 'donanım mühendisliği'),
(133, 66, 'altın'),
(134, 67, 'pilav'),
(135, 67, 'yapay zeka mühendisliği'),
(136, 67, 'siber güvenlik yönetimi'),
(137, 68, 'yedekleme'),
(138, 68, 'sanallaştırma'),
(139, 68, 'simit'),
(140, 69, 'sanal sunucu'),
(141, 69, 'siber güvenlik'),
(142, 69, 'taze fasulye'),
(143, 70, 'reçel'),
(144, 70, 'muz'),
(145, 70, 'kayısı'),
(146, 71, 'çilek'),
(147, 71, 'havuç'),
(148, 71, 'laptop'),
(149, 72, 'sunucu'),
(150, 72, 'uygulama'),
(151, 72, 'veri analitiği'),
(152, 73, 'yazılım geliştirme'),
(153, 73, 'ağ güvenliği'),
(154, 73, 'tuz'),
(155, 74, 'pide'),
(156, 74, 'marul'),
(157, 74, 'ekmek kadayıfı'),
(158, 75, 'patates'),
(159, 75, 'baharat'),
(160, 75, 'robotik'),
(161, 76, 'salatalık'),
(162, 76, 'laptop'),
(163, 76, 'künefe'),
(164, 77, 'pide'),
(165, 77, 'nane'),
(166, 77, 'soğan'),
(167, 78, 'gözleme'),
(168, 78, 'böğürtlen'),
(169, 78, 'ağ güvenliği uzmanı'),
(170, 79, 'hackleme'),
(171, 79, 'sanal gerçeklik geliştirme'),
(172, 79, 'programlama'),
(173, 80, 'elma'),
(174, 80, 'kavun'),
(175, 80, 'veritabanı yönetimi'),
(176, 81, 'sistem'),
(177, 81, 'vişne'),
(178, 81, 'gözleme'),
(179, 82, 'mandalina'),
(180, 82, 'ağ güvenliği danışmanı'),
(181, 82, 'yazılım mimarisi'),
(182, 83, 'sıvı yağ'),
(183, 83, 'ıspanak'),
(184, 83, 'yazılım testi otomasyonu'),
(185, 84, 'blokzincir'),
(186, 84, 'börek'),
(187, 84, 'taze fasulye'),
(188, 85, 'pancar'),
(189, 85, 'siber güvenlik'),
(190, 85, 'bulut bilişim'),
(191, 86, 'pırlanta'),
(192, 86, 'sanal gerçeklik simülasyonu'),
(193, 86, 'fıstık'),
(194, 87, 'kavun'),
(195, 87, 'yazılım'),
(196, 87, 'nane'),
(197, 88, 'siber güvenlik analisti'),
(198, 88, 'karabiber'),
(199, 88, 'ağ altyapısı'),
(200, 89, 'veri analizi'),
(201, 89, 'donanım mühendisliği'),
(202, 89, 'otonom araçlar'),
(203, 90, 'havuç'),
(204, 90, 'simit'),
(205, 90, 'karabiber'),
(206, 91, 'yazılım analisti'),
(207, 91, 'taze soğan'),
(208, 91, 'pide'),
(209, 92, 'şifreleme'),
(210, 92, 'şekerpare'),
(211, 92, 'biber'),
(212, 93, 'köfte'),
(213, 93, 'programlama'),
(214, 93, 'çiğ börek'),
(215, 94, 'mantı'),
(216, 94, 'armut'),
(217, 94, 'pide'),
(218, 95, 'revani'),
(219, 95, 'veri merkezi'),
(220, 95, 'donanım mühendisliği'),
(221, 96, 'veri saklama'),
(222, 96, 'bulgur'),
(223, 96, 'veri tabanı tasarımı'),
(224, 97, 'yazılım mimarisi'),
(225, 97, 'siber güvenlik'),
(226, 97, 'tost'),
(227, 98, 'greyfurt'),
(228, 98, 'siber güvenlik'),
(229, 98, 'üzüm'),
(230, 99, 'çiğ börek'),
(231, 99, 'çay'),
(232, 99, 'bulut bilişim danışmanı'),
(233, 100, 'yabanmersini'),
(234, 100, 'kadayıf'),
(235, 100, 'kebap'),
(236, 101, 'internet hizmet sağlayıcısı'),
(237, 101, 'sanal gerçeklik simülasyonu'),
(238, 101, 'erik'),
(239, 102, 'pide'),
(240, 102, 'veritabanı yönetimi'),
(241, 102, 'ananas'),
(242, 103, 'dut'),
(243, 103, 'altın'),
(244, 103, 'laptop');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `difficulty_id` int(11) NOT NULL,
  `correct_answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `category_id`, `difficulty_id`, `correct_answer`) VALUES
(3, 'BU nedir', 21, 1, 'Doğru'),
(24, 'computer', 3, 1, 'Bİlgisayar'),
(25, 'Phone', 3, 1, 'Telefon'),
(26, 'Camera', 3, 1, 'Kamera'),
(27, 'Keyboard', 3, 1, 'Klavye'),
(28, 'mouse', 3, 1, 'fare'),
(29, 'earphone', 3, 1, 'kulaklık'),
(30, 'microphone', 3, 1, 'mikrofon'),
(31, 'screen', 3, 1, 'ekran'),
(32, 'clock', 3, 1, 'saat'),
(33, 'frige', 3, 1, 'buzdolabı'),
(34, 'dishwasher', 3, 1, 'bulaşık makinası'),
(35, 'printer', 3, 1, 'yazıcı'),
(36, 'scanner', 3, 1, 'tarayıcı'),
(37, 'speakers', 3, 1, 'hoparlör'),
(38, 'fax machine', 3, 1, 'faks makinesi'),
(39, 'iron', 3, 1, 'ütü'),
(40, 'lantern', 3, 1, ' fener'),
(41, 'MP3 player', 3, 1, 'Mp3 oynatıcı'),
(42, 'flash drive', 3, 1, 'flaş bellek'),
(43, 'webcam', 3, 1, 'web kamerası'),
(44, 'action', 21, 1, 'Hareket'),
(45, 'agile', 21, 1, 'Çevik'),
(46, 'amateurism', 21, 1, 'Amatörlük'),
(47, 'babyweight', 21, 1, 'Sinek sıklet'),
(48, 'back flip', 21, 1, 'Geriye salto atma'),
(49, 'back üne', 21, 1, 'Defans oyuncuları'),
(50, 'back pass', 21, 1, 'Geri pas'),
(51, 'calculating table', 21, 1, 'Puanlama tabelası'),
(52, 'car racing', 21, 1, 'Araba yarışı'),
(53, 'chest', 21, 1, 'Göğüs çevresi'),
(54, 'cross bar', 21, 1, 'Çıta'),
(55, 'diet', 21, 1, 'Diyet'),
(56, 'drink', 21, 1, 'içecek'),
(57, 'drop', 21, 1, 'Rakibi düşürmek'),
(58, 'health', 21, 1, 'Sağlık'),
(59, 'heart', 21, 1, 'Kalp'),
(60, 'point', 21, 1, ' sayı'),
(61, 'midfield', 21, 1, 'Orta saha'),
(62, 'national', 21, 1, 'Milli'),
(63, 'observer', 21, 1, 'Gözlemci'),
(64, 'plus', 4, 1, 'artı'),
(65, 'minus', 4, 1, 'eksi'),
(66, 'Circle', 4, 1, 'Çember'),
(67, 'Triangle', 4, 1, 'Üçgen'),
(68, 'Square', 4, 1, 'Kare'),
(69, 'Rectangle', 4, 1, 'Dikdörtgen'),
(70, 'Pentagon', 4, 1, 'Beşgen'),
(71, 'Hexagon', 4, 1, 'Altıgen'),
(72, 'Octagon', 4, 1, 'Sekizgen'),
(73, 'Oval', 4, 1, 'Oval'),
(74, 'Cube', 4, 1, 'Küp'),
(75, 'Cone', 4, 1, 'Koni'),
(76, 'Cylinder', 4, 1, 'Silindir'),
(77, 'Pyramid', 4, 1, 'Piramit'),
(78, 'Sphere', 4, 1, 'Küre'),
(79, 'Algebra', 4, 1, 'Cebir'),
(80, 'Geometry', 4, 1, ' Geometri'),
(81, 'Trigonometry', 4, 1, 'Trigonometri'),
(82, 'Statistics', 4, 1, 'İstatistikler'),
(83, 'Combinatorics', 4, 1, 'Kombinasyonlar'),
(84, 'art', 5, 1, 'sanat'),
(85, 'artist', 5, 1, 'sanatçı'),
(86, 'classic', 5, 1, 'klasik'),
(87, 'collection', 5, 1, 'koleksiyon'),
(88, 'colour', 5, 1, 'renk'),
(89, 'culture', 5, 1, 'kültür'),
(90, 'design', 5, 1, 'dizayn'),
(91, 'display', 5, 1, 'ekran'),
(92, 'exhibit', 5, 1, 'sergilemek'),
(93, 'genius', 5, 1, 'deha'),
(94, 'gesture', 5, 1, 'jest'),
(95, 'perspective', 5, 1, 'perspektif'),
(96, 'position', 5, 1, 'pozisyon'),
(97, 'contrast', 5, 1, 'kontrast'),
(98, 'dramatic', 5, 1, 'dramatik'),
(99, 'charisma', 5, 1, 'karizma'),
(100, 'celebrity', 5, 1, ' şöhret'),
(101, 'graffiti', 5, 1, 'duvar yazısı'),
(102, 'abstarct', 5, 1, 'soyut'),
(103, 'aesthetic', 5, 1, 'estetik');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `difficulties`
--
ALTER TABLE `difficulties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`),
  ADD KEY `id_3` (`id`);

--
-- Indexes for table `incorrect_answers`
--
ALTER TABLE `incorrect_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `difficulty_id` (`difficulty_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `difficulties`
--
ALTER TABLE `difficulties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `incorrect_answers`
--
ALTER TABLE `incorrect_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `incorrect_answers`
--
ALTER TABLE `incorrect_answers`
  ADD CONSTRAINT `incorrect_answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`difficulty_id`) REFERENCES `difficulties` (`id`),
  ADD CONSTRAINT `questions_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
