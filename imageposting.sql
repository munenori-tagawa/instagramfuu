-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2023-01-03 15:20:45
-- サーバのバージョン： 10.4.27-MariaDB
-- PHP のバージョン: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `imageposting`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `image_id` int(11) NOT NULL COMMENT '画像ID',
  `comment` varchar(255) NOT NULL COMMENT 'コメント',
  `create_date` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '作成日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `comments`
--

INSERT INTO `comments` (`id`, `image_id`, `comment`, `create_date`) VALUES
(1, 12, 'aaaaaaa', '2023-01-03 10:31:00'),
(2, 18, 'adadadada', '2023-01-03 12:08:19'),
(3, 18, 'あいうえお', '2023-01-03 12:10:33'),
(4, 9, 'あああああああああああああああああああああああああああああああああああああ', '2023-01-03 12:24:11'),
(5, 21, 'カツオ', '2023-01-03 12:37:39');

-- --------------------------------------------------------

--
-- テーブルの構造 `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL COMMENT '画像ID',
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '画像ID',
  `create_date` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '作成日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `images`
--

INSERT INTO `images` (`id`, `file_name`, `create_date`) VALUES
(2, 'サツドラ夜.jpg', '2022-12-22 08:20:10'),
(7, 'サツドラ夜.jpg', '2023-01-03 09:01:30'),
(8, 'サツドラ夜.jpg', '2023-01-03 09:01:51'),
(9, 'サツドラ夜.jpg', '2023-01-03 09:04:30'),
(10, 'サツドラ夜.jpg', '2023-01-03 09:21:16'),
(11, 'catch me if you can.jpg', '2023-01-03 09:21:35'),
(12, '森永ミルクキャラメル.jpg', '2023-01-03 09:21:56'),
(13, 'シュガー＆スパイス.jpg', '2023-01-03 09:24:00'),
(14, 'シュガー＆スパイス.jpg', '2023-01-03 09:42:32'),
(22, '1664541255271.jpg', '2023-01-03 12:45:23'),
(23, '1664541255501.jpg', '2023-01-03 12:46:08'),
(24, '1664541254795.jpg', '2023-01-03 12:47:17'),
(25, '20200928satudora.jpg', '2023-01-03 12:50:19'),
(26, 'EWHGGExVAAA0ZwR.jpg', '2023-01-03 12:51:24'),
(27, 'ExfcBkcVgAIUjGr.jpg', '2023-01-03 12:53:21'),
(28, '86d0e865b77deab8dea703074b126873.jpg', '2023-01-03 12:57:15');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=6;

--
-- テーブルの AUTO_INCREMENT `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '画像ID', AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
