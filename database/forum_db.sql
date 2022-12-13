-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 04, 2022 lúc 03:17 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `forum_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(30) NOT NULL,
  `topic_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `comment` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `topic_id`, `user_id`, `comment`, `date_created`, `date_updated`) VALUES
(1, 4, 1, 'haizzzzz', '2022-12-04 20:11:31', '2022-12-04 20:19:07'),
(2, 4, 2, 'buồn buồn', '2022-12-04 20:15:33', '2022-12-04 20:15:33'),
(3, 4, 3, 'sờ pam 1', '2022-12-04 20:15:55', '2022-12-04 20:15:55'),
(4, 1, 1, 'trl', '2022-12-04 20:36:15', '2022-12-04 20:36:15'),
(5, 4, 1, 'spam 2', '2022-12-04 20:38:52', '2022-12-04 20:38:52'),
(6, 4, 2, 'spam3', '2022-12-04 20:40:47', '2022-12-04 20:40:47'),
(7, 9, 2, 'q', '2022-12-04 20:41:47', '2022-12-04 20:41:47'),
(8, 9, 2, 'q', '2022-12-04 20:43:47', '2022-12-04 20:43:47'),
(9, 9, 2, 'ưe', '2022-12-04 20:51:32', '2022-12-04 20:51:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `forum_views`
--

CREATE TABLE `forum_views` (
  `id` int(30) NOT NULL,
  `topic_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `forum_views`
--

INSERT INTO `forum_views` (`id`, `topic_id`, `user_id`) VALUES
(1, 4, 1),
(2, 5, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `replies`
--

CREATE TABLE `replies` (
  `id` int(30) NOT NULL,
  `comment_id` int(30) NOT NULL,
  `reply` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `replies`
--

INSERT INTO `replies` (`id`, `comment_id`, `reply`, `user_id`, `date_created`, `date_updated`) VALUES
(1, 1, 'no hope', 1, '2022-12-04 20:12:23', '2022-12-04 20:14:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subforums`
--

CREATE TABLE `subforums` (
  `id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `subforums`
--

INSERT INTO `subforums` (`id`, `name`, `description`, `date_updated`) VALUES
(1, 'chém gió', 'test1 test2 test3 test4 test5 test6 test7 test8 test9', '2022-12-04 19:45:57'),
(2, 'Động lực', 'test1 test2 test3 test4 test5 test6 test7 test8 test9', '2022-12-04 19:46:42'),
(3, 'No Hope', 'test1 test2 test3 test4 test5 test6 test7 test8 test9', '2022-12-04 19:47:06'),
(4, 'Build PC', 'test1 test2 test3 test4 test5 test6 test7 test8 test9', '2022-12-04 19:47:33'),
(5, 'Học tập', 'test1 test2 test3 test4 test5 test6 test7 test8 test9\r\n', '2022-12-04 19:48:12'),
(6, 'Giải trí', 'test1 test2 test3 test4 test5 test6 test7 test8 test9\r\n', '2022-12-04 19:48:24'),
(7, 'Điện thoại', 'test1 test2 test3 test4 test5 test6 test7 test8 test9', '2022-12-04 19:48:55'),
(8, 'Wibu', 'test1 test2 test3 test4 test5 test6 test7 test8 test9', '2022-12-04 19:49:16'),
(9, 'Fan MU', 'test1 test2 test3 test4 test5 test6 test7 test8 test9', '2022-12-04 19:49:45'),
(10, 'Vozer', 'test1 test2 test3 test4 test5 test6 test7 test8 test9', '2022-12-04 19:49:53'),
(11, 'CNTT', 'test1 test2 test3 test4 test5 test6 test7 test8 test9', '2022-12-04 19:51:22'),
(12, 'Ngoại ngữ', 'test1 test2 test3 test4 test5 test6 test7 test8 test9', '2022-12-04 19:51:38'),
(13, 'Kinh tế / Luật', 'Test1 test2 test3 test4 test5 test6 test7 test8 test9', '2022-12-04 19:52:31'),
(14, 'Kiếm tiền', 'est1 test2 test3 test4 test5 test6 test7 test8 test9', '2022-12-04 19:52:44'),
(15, 'xe hơi', 'est1 test2 test3 test4 test5 test6 test7 test8 test9', '2022-12-04 19:52:57'),
(16, 'xe máy', 'est1 test2 test3 test4 test5 test6 test7 test8 test9', '2022-12-04 19:53:05'),
(17, 'Tự kỷ', 'est1 test2 test3 test4 test5 test6 test7 test8 test9', '2022-12-04 19:53:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `topics`
--

CREATE TABLE `topics` (
  `id` int(30) NOT NULL,
  `category_ids` text NOT NULL,
  `title` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `topics`
--

INSERT INTO `topics` (`id`, `category_ids`, `title`, `content`, `user_id`, `date_created`) VALUES
(1, '1', ' áp lực có tạo nên kim cương?', '&amp;nbsp;ch&eacute;mch&eacute;mch&eacute;mch&eacute;mch&eacute;mch&eacute;mch&eacute;mch&eacute;m', 1, '2022-12-04 19:55:19'),
(2, '1,5,2', 'Áp Lực Tạo Ra Kim Cương Hay Là Tàn Tro', '', 1, '2022-12-04 19:56:56'),
(3, '1,11', 'Làn sóng sa thải lập trình viên ở Mỹ ', 'ch&eacute;mch&eacute;mch&eacute;mch&eacute;mch&eacute;mch&eacute;m', 2, '2022-12-04 20:07:59'),
(4, '1', 'test1', '111', 2, '2022-12-04 20:09:57'),
(5, '1', 'test2', '111', 3, '2022-12-04 20:10:25'),
(9, '1,11,9', 'abc', 'abc', 2, '2022-12-04 20:41:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 3 COMMENT '1=Admin,2=Staff, 3= subscriber'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'Administrator', 'admin', 'c4ca4238a0b923820dcc509a6f75849b', 1),
(2, 'Phạm Tuấn', 'Tuan', 'd6b8cc42803ea100735c719f1d7f5e11', 2),
(3, 'Hùng Vĩ', 'vi', '35b36b28916d38b34abddf832e286126', 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic_id_fk` (`topic_id`),
  ADD KEY `user_id_fk` (`user_id`);

--
-- Chỉ mục cho bảng `forum_views`
--
ALTER TABLE `forum_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic_id_fk1` (`topic_id`),
  ADD KEY `user_id_fk1` (`user_id`);

--
-- Chỉ mục cho bảng `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `comment_id` (`comment_id`);

--
-- Chỉ mục cho bảng `subforums`
--
ALTER TABLE `subforums`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `forum_views`
--
ALTER TABLE `forum_views`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `subforums`
--
ALTER TABLE `subforums`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `topic_id_fk` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `forum_views`
--
ALTER TABLE `forum_views`
  ADD CONSTRAINT `topic_id_fk1` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_id_fk1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
