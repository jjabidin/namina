-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 21 Jan 2021 pada 09.21
-- Versi server: 5.7.31
-- Versi PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `brand`
--

DROP TABLE IF EXISTS `brand`;
CREATE TABLE IF NOT EXISTS `brand` (
  `id_brand` int(11) NOT NULL AUTO_INCREMENT,
  `id_trademark` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `img_path` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  PRIMARY KEY (`id_brand`),
  KEY `id_brand` (`id_brand`),
  KEY `id_trademark` (`id_trademark`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `brand`
--

INSERT INTO `brand` (`id_brand`, `id_trademark`, `brand_name`, `img_path`, `desc`) VALUES
(1, 1, 'AVANZA', 'upload/veloz_0.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur in vulputate orci. Nullam feugiat arcu ac nunc pretium luctus. Nunc varius facilisis ipsum eu dapibus. Phasellus convallis dignissim massa, vitae placerat urna rutrum in. Mauris lacus dui, commodo et diam ut, tincidunt euismod sem. Mauris ultrices nec dolor in vestibulum. Integer et lacus non nisl dapibus sodales sed in diam.\r\n\r\nCras imperdiet luctus nisl a venenatis. Cras vitae sapien hendrerit, mattis libero eu, interdum turpis. Morbi vitae hendrerit mauris. Quisque congue, metus quis porttitor convallis, libero sapien feugiat ex, ut convallis nulla metus a augue. Aliquam erat volutpat. Ut vulputate erat eu magna aliquet, pretium accumsan augue rutrum. Cras vel scelerisque risus, fringilla vehicula lectus. Aliquam ornare dapibus turpis ut suscipit. Nunc venenatis et lorem in dictum. Morbi cursus commodo ultricies. Integer vitae consequat urna. Quisque mollis massa id ante malesuada, non tempus metus posuere.\r\n\r\nCurabitur sed tellus a mi egestas hendrerit nec eu erat. Etiam volutpat accumsan tortor nec imperdiet. Donec vitae orci diam. Sed in odio eget leo venenatis lobortis. Phasellus aliquam erat id eros scelerisque condimentum. Curabitur a lorem eget magna mollis rhoncus in a tortor. Phasellus porttitor non libero eget pharetra. Aenean et fringilla purus, aliquam malesuada nulla. Praesent laoreet viverra felis, eget imperdiet tellus. Sed sagittis tristique nulla eget accumsan. In luctus posuere nibh, ac bibendum lorem fermentum non. Sed dui tellus, sollicitudin sit amet dictum a, bibendum sit amet tortor. Nunc venenatis at dolor eu viverra. Donec ut auctor est, quis ultrices lacus.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse dui ex, luctus a mauris nec, rutrum gravida magna. Quisque ante dui, faucibus et imperdiet non, pretium et lacus. In interdum ligula nunc, ac rhoncus lorem mattis id. Cras ac viverra nisl, at dictum nisl. Vivamus aliquet ex vel ex luctus, quis dapibus nunc tincidunt. Aenean quam est, dignissim et velit vel, porttitor bibendum tortor. Morbi eleifend pretium ante tempus ultricies.\r\n\r\nNam elit velit, blandit quis tempus non, dignissim sed diam. Ut eget diam vel est suscipit lacinia vitae sed velit. Nunc ligula eros, sollicitudin et bibendum at, pharetra sed ex. Nunc id diam leo. In hac habitasse platea dictumst. Cras id neque id ipsum rhoncus venenatis. Aliquam erat volutpat. Pellentesque id auctor ante, sed dictum massa.'),
(3, 1, 'FORTUNER', 'upload/disclaimer-thumb-fortuner-trd_1.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur in vulputate orci. Nullam feugiat arcu ac nunc pretium luctus. Nunc varius facilisis ipsum eu dapibus. Phasellus convallis dignissim massa, vitae placerat urna rutrum in. Mauris lacus dui, commodo et diam ut, tincidunt euismod sem. Mauris ultrices nec dolor in vestibulum. Integer et lacus non nisl dapibus sodales sed in diam.\r\n\r\nCras imperdiet luctus nisl a venenatis. Cras vitae sapien hendrerit, mattis libero eu, interdum turpis. Morbi vitae hendrerit mauris. Quisque congue, metus quis porttitor convallis, libero sapien feugiat ex, ut convallis nulla metus a augue. Aliquam erat volutpat. Ut vulputate erat eu magna aliquet, pretium accumsan augue rutrum. Cras vel scelerisque risus, fringilla vehicula lectus. Aliquam ornare dapibus turpis ut suscipit. Nunc venenatis et lorem in dictum. Morbi cursus commodo ultricies. Integer vitae consequat urna. Quisque mollis massa id ante malesuada, non tempus metus posuere.\r\n\r\nCurabitur sed tellus a mi egestas hendrerit nec eu erat. Etiam volutpat accumsan tortor nec imperdiet. Donec vitae orci diam. Sed in odio eget leo venenatis lobortis. Phasellus aliquam erat id eros scelerisque condimentum. Curabitur a lorem eget magna mollis rhoncus in a tortor. Phasellus porttitor non libero eget pharetra. Aenean et fringilla purus, aliquam malesuada nulla. Praesent laoreet viverra felis, eget imperdiet tellus. Sed sagittis tristique nulla eget accumsan. In luctus posuere nibh, ac bibendum lorem fermentum non. Sed dui tellus, sollicitudin sit amet dictum a, bibendum sit amet tortor. Nunc venenatis at dolor eu viverra. Donec ut auctor est, quis ultrices lacus.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse dui ex, luctus a mauris nec, rutrum gravida magna. Quisque ante dui, faucibus et imperdiet non, pretium et lacus. In interdum ligula nunc, ac rhoncus lorem mattis id. Cras ac viverra nisl, at dictum nisl. Vivamus aliquet ex vel ex luctus, quis dapibus nunc tincidunt. Aenean quam est, dignissim et velit vel, porttitor bibendum tortor. Morbi eleifend pretium ante tempus ultricies.\r\n\r\nNam elit velit, blandit quis tempus non, dignissim sed diam. Ut eget diam vel est suscipit lacinia vitae sed velit. Nunc ligula eros, sollicitudin et bibendum at, pharetra sed ex. Nunc id diam leo. In hac habitasse platea dictumst. Cras id neque id ipsum rhoncus venenatis. Aliquam erat volutpat. Pellentesque id auctor ante, sed dictum massa.'),
(5, 2, 'MOBILIO', 'upload/56210_L_1.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur in vulputate orci. Nullam feugiat arcu ac nunc pretium luctus. Nunc varius facilisis ipsum eu dapibus. Phasellus convallis dignissim massa, vitae placerat urna rutrum in. Mauris lacus dui, commodo et diam ut, tincidunt euismod sem. Mauris ultrices nec dolor in vestibulum. Integer et lacus non nisl dapibus sodales sed in diam.\r\n\r\nCras imperdiet luctus nisl a venenatis. Cras vitae sapien hendrerit, mattis libero eu, interdum turpis. Morbi vitae hendrerit mauris. Quisque congue, metus quis porttitor convallis, libero sapien feugiat ex, ut convallis nulla metus a augue. Aliquam erat volutpat. Ut vulputate erat eu magna aliquet, pretium accumsan augue rutrum. Cras vel scelerisque risus, fringilla vehicula lectus. Aliquam ornare dapibus turpis ut suscipit. Nunc venenatis et lorem in dictum. Morbi cursus commodo ultricies. Integer vitae consequat urna. Quisque mollis massa id ante malesuada, non tempus metus posuere.\r\n\r\nCurabitur sed tellus a mi egestas hendrerit nec eu erat. Etiam volutpat accumsan tortor nec imperdiet. Donec vitae orci diam. Sed in odio eget leo venenatis lobortis. Phasellus aliquam erat id eros scelerisque condimentum. Curabitur a lorem eget magna mollis rhoncus in a tortor. Phasellus porttitor non libero eget pharetra. Aenean et fringilla purus, aliquam malesuada nulla. Praesent laoreet viverra felis, eget imperdiet tellus. Sed sagittis tristique nulla eget accumsan. In luctus posuere nibh, ac bibendum lorem fermentum non. Sed dui tellus, sollicitudin sit amet dictum a, bibendum sit amet tortor. Nunc venenatis at dolor eu viverra. Donec ut auctor est, quis ultrices lacus.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse dui ex, luctus a mauris nec, rutrum gravida magna. Quisque ante dui, faucibus et imperdiet non, pretium et lacus. In interdum ligula nunc, ac rhoncus lorem mattis id. Cras ac viverra nisl, at dictum nisl. Vivamus aliquet ex vel ex luctus, quis dapibus nunc tincidunt. Aenean quam est, dignissim et velit vel, porttitor bibendum tortor. Morbi eleifend pretium ante tempus ultricies.\r\n\r\nNam elit velit, blandit quis tempus non, dignissim sed diam. Ut eget diam vel est suscipit lacinia vitae sed velit. Nunc ligula eros, sollicitudin et bibendum at, pharetra sed ex. Nunc id diam leo. In hac habitasse platea dictumst. Cras id neque id ipsum rhoncus venenatis. Aliquam erat volutpat. Pellentesque id auctor ante, sed dictum massa.'),
(7, 2, 'CR-V', 'upload/Honda-CR-V-Turbo.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur in vulputate orci. Nullam feugiat arcu ac nunc pretium luctus. Nunc varius facilisis ipsum eu dapibus. Phasellus convallis dignissim massa, vitae placerat urna rutrum in. Mauris lacus dui, commodo et diam ut, tincidunt euismod sem. Mauris ultrices nec dolor in vestibulum. Integer et lacus non nisl dapibus sodales sed in diam.\r\n\r\nCras imperdiet luctus nisl a venenatis. Cras vitae sapien hendrerit, mattis libero eu, interdum turpis. Morbi vitae hendrerit mauris. Quisque congue, metus quis porttitor convallis, libero sapien feugiat ex, ut convallis nulla metus a augue. Aliquam erat volutpat. Ut vulputate erat eu magna aliquet, pretium accumsan augue rutrum. Cras vel scelerisque risus, fringilla vehicula lectus. Aliquam ornare dapibus turpis ut suscipit. Nunc venenatis et lorem in dictum. Morbi cursus commodo ultricies. Integer vitae consequat urna. Quisque mollis massa id ante malesuada, non tempus metus posuere.\r\n\r\nCurabitur sed tellus a mi egestas hendrerit nec eu erat. Etiam volutpat accumsan tortor nec imperdiet. Donec vitae orci diam. Sed in odio eget leo venenatis lobortis. Phasellus aliquam erat id eros scelerisque condimentum. Curabitur a lorem eget magna mollis rhoncus in a tortor. Phasellus porttitor non libero eget pharetra. Aenean et fringilla purus, aliquam malesuada nulla. Praesent laoreet viverra felis, eget imperdiet tellus. Sed sagittis tristique nulla eget accumsan. In luctus posuere nibh, ac bibendum lorem fermentum non. Sed dui tellus, sollicitudin sit amet dictum a, bibendum sit amet tortor. Nunc venenatis at dolor eu viverra. Donec ut auctor est, quis ultrices lacus.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse dui ex, luctus a mauris nec, rutrum gravida magna. Quisque ante dui, faucibus et imperdiet non, pretium et lacus. In interdum ligula nunc, ac rhoncus lorem mattis id. Cras ac viverra nisl, at dictum nisl. Vivamus aliquet ex vel ex luctus, quis dapibus nunc tincidunt. Aenean quam est, dignissim et velit vel, porttitor bibendum tortor. Morbi eleifend pretium ante tempus ultricies.\r\n\r\nNam elit velit, blandit quis tempus non, dignissim sed diam. Ut eget diam vel est suscipit lacinia vitae sed velit. Nunc ligula eros, sollicitudin et bibendum at, pharetra sed ex. Nunc id diam leo. In hac habitasse platea dictumst. Cras id neque id ipsum rhoncus venenatis. Aliquam erat volutpat. Pellentesque id auctor ante, sed dictum massa.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `trademark`
--

DROP TABLE IF EXISTS `trademark`;
CREATE TABLE IF NOT EXISTS `trademark` (
  `id_trademark` int(11) NOT NULL AUTO_INCREMENT,
  `trademark_name` varchar(30) NOT NULL,
  `logo_path` varchar(255) NOT NULL,
  PRIMARY KEY (`id_trademark`),
  KEY `id_trademark` (`id_trademark`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `trademark`
--

INSERT INTO `trademark` (`id_trademark`, `trademark_name`, `logo_path`) VALUES
(1, 'TOYOTA', ''),
(2, 'HONDA', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `varian`
--

DROP TABLE IF EXISTS `varian`;
CREATE TABLE IF NOT EXISTS `varian` (
  `id_varian` int(11) NOT NULL AUTO_INCREMENT,
  `id_brand` int(11) NOT NULL,
  `varian_name` varchar(255) NOT NULL,
  `varian_desc` text NOT NULL,
  `img_path` varchar(255) NOT NULL,
  PRIMARY KEY (`id_varian`),
  KEY `id_varian` (`id_varian`,`id_brand`),
  KEY `id_brand` (`id_brand`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `varian`
--

INSERT INTO `varian` (`id_varian`, `id_brand`, `varian_name`, `varian_desc`, `img_path`) VALUES
(1, 1, 'AVANZA VELOZ ', 'AVANZA VELOZ a', 'upload/veloz_0.png'),
(2, 1, 'AVANZA TYPE E', 'AVANZA TYPE E a', 'upload/perbedaan-avanza-tipe-E-dan-G.png'),
(3, 3, 'FORTUNER VRZ', 'FORTUNER VRZ a', 'upload/disclaimer-thumb-fortuner-trd_1.png'),
(4, 3, 'FORTUNES SRZ', 'FORTUNES SRZ a', 'upload/all-new-fortune.JPG'),
(5, 5, 'MOBILIO E CVT\r\n', 'MOBILIO E CVT a\r\n', 'upload/56210_L_1.jpg'),
(6, 5, 'MOBILIO RS CVT', 'MOBILIO RS CVT a', 'upload/honda-new-mobilio-2018-png-77b7.jpg'),
(7, 7, 'CR-V 1.5L TURBO', 'CR-V 1.5L TURBO a', 'upload/Honda-CR-V-Turbo.jpg'),
(8, 7, 'CR-V 1.5L PRESTIGE', 'CR-V 1.5L PRESTIGE a', 'upload/IMG_2580.jpg');

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `brand`
--
ALTER TABLE `brand`
  ADD CONSTRAINT `brand_ibfk_1` FOREIGN KEY (`id_trademark`) REFERENCES `trademark` (`id_trademark`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `varian`
--
ALTER TABLE `varian`
  ADD CONSTRAINT `varian_ibfk_1` FOREIGN KEY (`id_brand`) REFERENCES `brand` (`id_brand`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
