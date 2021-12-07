-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 07, 2021 lúc 04:49 PM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_game`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `IdCategory` int(10) NOT NULL,
  `CategoryName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `UpdationDate` datetime NOT NULL,
  `is_Active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`IdCategory`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `is_Active`) VALUES
(1, 'Action', 'Thể loại hành động, hit & run', '2021-12-07 13:05:16', '2021-12-07 02:05:16', 1),
(2, 'Sport', 'Thể loại thể thao, hỏi đáp về thể thao...', '2021-12-07 13:06:49', '0000-00-00 00:00:00', 1),
(3, 'â', 'đc', '2021-12-07 13:07:39', '0000-00-00 00:00:00', 0),
(4, 'ok', '1', '2021-12-07 13:07:59', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `postId` int(11) NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postingDate` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `games`
--

CREATE TABLE `games` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `developer` varchar(200) NOT NULL,
  `IdCategory` int(10) NOT NULL,
  `intro` varchar(500) NOT NULL,
  `version` varchar(10) NOT NULL,
  `price` int(20) NOT NULL,
  `size` int(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `image` varchar(200) NOT NULL,
  `internet` varchar(10) NOT NULL,
  `is_Active` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `games`
--

INSERT INTO `games` (`id`, `name`, `developer`, `IdCategory`, `intro`, `version`, `price`, `size`, `date`, `image`, `internet`, `is_Active`) VALUES
(1, 'k', 'LiLith', 1, 'Chào mừng bạn đến với Hope County, Montana, một vùng đất của tự do và dũng cảm, là quê hương của một giáo phái cuồng tín về ngày tận thế: Eden\'s Gate. Thách thức lãnh đạo của nó, Joseph Seed, và anh chị em của anh ta, và giải phóng các công dân.', '5.3654', 320000, 3500, '2019-12-23 17:00:00', 'game9.png', 'No', 1),
(2, '0', 'Respawn Entertainment', 2, '', '6.265', 840000, 9500, '2021-01-14 17:00:00', 'game4.png', 'No', 1),
(3, '0', 'DSGame', 3, '', '5.3654', 850000, 9500, '2021-12-30 17:00:00', 'game8.png', 'Yes', 1),
(4, '4', 'FNTASTIC', 3, '', '1.0065', 150000, 1500, '2021-12-08 17:00:00', 'game1.png', 'Yes', 1),
(5, '0', 'KRAFTON, Inc.', 1, '', '3.1256', 78000, 7800, '2020-12-09 17:00:00', 'game3.png', 'Yes', 1),
(6, '0', 'Smashball Labs LLC', 2, '', '8.364', 899100, 5500, '2017-12-11 17:00:00', 'game6.png', 'No', 1),
(7, '0', 'DHJgGame', 1, '', '5.3654', 150000, 7800, '2021-12-11 17:00:00', 'game10.png', 'No', 1),
(8, '0', 'Valve', 2, '', '5.3654', 320000, 3500, '2021-01-19 17:00:00', 'game5.png', 'Yes', 1),
(9, '0', 'Pixonic', 4, '', '3.6985', 105000, 6500, '2017-12-12 17:00:00', 'game7.png', 'Yes', 1),
(10, '0', 'Saber Interactive Inc', 3, '', '7.3268', 320000, 6500, '2021-12-30 17:00:00', 'game2.png', 'No', 1),
(11, '1', '1', 11, '1', '1', 1, 1, '0000-00-00 00:00:00', '1', '1', 1),
(12, '1', '1', 1, '1', 'game5.png', 0, 1, '0000-00-00 00:00:00', '1', '1', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`IdCategory`);

--
-- Chỉ mục cho bảng `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `IdCategory` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `games`
--
ALTER TABLE `games`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
