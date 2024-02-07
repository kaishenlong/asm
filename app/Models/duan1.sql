-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 07, 2024 lúc 06:05 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duan1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`) VALUES
(14, 'Ưu đãi'),
(15, 'MÓN MỚI'),
(16, 'COMBOM 1 NGƯỜI'),
(17, 'COMBO NHÓM'),
(18, 'GÀ RÁN - GÀ QUAY'),
(19, 'BURGER - CƠM - MỲ Ý'),
(20, 'THỨC ĂN');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL DEFAULT 0.00,
  `img` varchar(255) NOT NULL,
  `soluong` int(11) NOT NULL,
  `iddm` int(11) NOT NULL,
  `mota` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `name`, `price`, `img`, `soluong`, `iddm`, `mota`) VALUES
(5, 'Combo Cơm - Gà Rán', 45.00, 'MIRINDA-HS.jpg', 100, 14, '1 Cơm Gà Rán + 1 Lon M'),
(6, 'Combo Happy Meal 65K', 65.00, 'happy_meal.jpg', 100, 14, '02 Miếng Gà Rán + 1 lo'),
(7, 'COMBO HAPPY MEAL 99K', 99.00, 'happy_meal_social.jpg', 100, 14, '3 Miếng Gà + 1 Gà Popc'),
(8, 'Combo Happy Family 155K', 155.00, 'happy_family.jpg', 100, 14, '5 Miếng Gà Rán + 1 Kho'),
(9, 'Gà Hoàng Kim', 80.00, '1-gahoangkim.jpg', 100, 15, '2 miếng gà Hoàng Kim\r\n'),
(10, '1 Gà Địa Trung Hải', 41.00, '1-ga-cuon-dia-trung-hai.jpg', 100, 15, '1 Miếng Gà Địa Trung H'),
(12, 'Combo Gà Địa Trung Hải A', 93.00, 'combo-ga-cuon-dia-trung-hai-a.jpg', 100, 15, '1 Miếng Gà Địa Trung H'),
(13, 'Combo Gà Địa Trung Hải B', 125.00, '2-ga-cuon-dia-trung-hai (1).jpg', 100, 15, '2 Miếng Gà Địa Trung H'),
(14, '1 Gà Cuộn Bắc Kinh', 39.00, '1-ga-cuon-bac-kinh.jpg', 100, 15, '01 Gà Cuộn Bắc Kinh'),
(15, 'Combo Gà Địa Trung Hải C', 199.00, 'combo-ga-cuon-dia-trung-hai-c.jpg', 100, 15, '3 Miếng Gà Địa Trung H'),
(16, 'COMBO GÀ ZERO HD', 96.00, 'combo-pepsi-zero.jpg', 100, 15, '02 Miếng Gà Rán + 0'),
(17, '1 Gà Que Kem Xốt Cajun', 40.00, '1-Cajun.jpg', 100, 14, '1 Gà Que Kem Xốt Cajun'),
(18, '2 Gà Que Kem Xốt Cajun', 74.00, '2-Cajun.jpg', 100, 14, '2 Gà Que Kem Xốt Cajun'),
(19, 'Combo Gà Que Kem Xốt Cajun A', 91.00, 'A-Cajun.jpg', 100, 15, '1 Gà Que Kem Xốt Cajun'),
(20, 'Combo Gà Que Kem Xốt Cajun B', 89.00, 'B-Cajun.jpg', 100, 15, '1 Gà Que Kem Xốt Cajun'),
(21, 'Cơm Gà Rán - Lon Mirinda cam - Mỳ Ý', 45.00, 'D3-new.jpg', 100, 16, '1 Cơm Gà Rán + 1 Lon M'),
(22, 'Combo Gà Rán', 87.00, 'D1-new.jpg', 100, 16, '2 Miếng Gà +1 Khoai tâ'),
(23, 'Combo Salad Hạt', 78.00, 'D4-new.jpg', 100, 16, '1 Miếng Gà + 1 Salad H'),
(24, 'Combo Burger', 89.00, 'D5.jpg', 100, 16, '1 Burger Zinger/Burger'),
(25, 'Combo Nhóm 1', 172.00, 'D6.jpg', 100, 17, '3 Miếng Gà + 1 Burger '),
(26, 'Combo Nhóm 2', 191.00, 'D7-new.jpg', 100, 17, '4 Miếng Gà + 1 Khoai t'),
(27, 'Combo Nhóm 3', 228.00, 'D8-new.jpg', 100, 17, '5 Miếng Gà + 1 Popcorn'),
(28, '1 MIẾNG GÀ RÁN', 35.00, '1-Fried-Chicken.jpg', 100, 18, '1 Miếng Gà Giòn Cay/Gà'),
(29, '2 Miếng Gà Rán', 70.00, '2-Fried-Chicken.jpg', 100, 14, '2 Miếng Gà Giòn Cay/Gà'),
(30, '6 Miếng Gà Rán', 201.00, '6-Fried-Chicken-new.jpg', 100, 14, '6 Miếng Gà Giòn Cay/Gà'),
(31, '1 Miếng Đùi Gà Quay', 74.00, 'BJ.jpg', 100, 18, '1 Miếng Đùi Gà Quay Gi'),
(32, '1 Miếng Phi-lê Gà Quay', 38.00, 'MOD-PHI-LE-GA-QUAY.jpg', 100, 18, '1 Miếng Phi-lê Gà Quay'),
(33, '3 Cánh Gà Hot Wings', 54.00, '3-HW.jpg', 100, 18, '3 Cánh Gà Hot Wings'),
(34, '5 Cánh Gà Hot Wings', 83.00, '5-HW.jpg', 100, 18, '5 Cánh Gà Hot Wings'),
(35, 'Burger Zinger', 54.00, 'Burger-Zinger.jpg', 100, 19, '1 Burger Zinger'),
(36, 'Burger Tôm', 44.00, 'Burger-Shrimp.jpg', 100, 19, '1 Burger Tôm'),
(37, 'Cơm Gà Xiên Que', 45.00, 'Rice-Skewer.jpg', 100, 19, '1 Cơm Gà Xiên Que'),
(38, 'Cơm Xiên Gà Tenderods', 45.00, 'Rice-TENDERODS.jpg', 100, 19, '1 Cơm Xiên Gà Tenderod'),
(39, 'Salad Hạt', 35.00, 'SALAD-HAT.jpg', 100, 20, ' 1 Salad Hạt'),
(40, 'Salad Pop', 38.00, 'SALAD-HAT-GA-VIEN.jpg', 100, 14, ' 1 Salad Hạt Gà Viên P'),
(41, '3 Cá Thanh', 40.00, '3-Fishsticks.jpg', 100, 20, '3 Cá Thanh'),
(42, '2 Xiên Que', 40.00, '2-Skewers.jpg', 100, 20, '2 Xiên Que'),
(43, '4 Phô Mai Viên', 34.00, '4-Chewy-Cheese.jpg', 100, 20, '4 Phô Mai Viên'),
(44, '6 Phô Mai Viên', 44.00, '6-Chewy-Cheese.jpg', 100, 20, '6 Phô Mai Viên'),
(45, 'Bắp Cải Trộn (Vừa)', 12.00, 'CL-(R)-new.jpg', 100, 20, 'Bắp Cải Trộn (Vừa)'),
(46, 'Bắp Cải Trộn (Lớn)', 22.00, 'CL-(L)-new.jpg', 100, 20, 'Bắp Cải Trộn (Lớn)'),
(50, 'iphone 15 pro max', 3453656.00, 'anhnenkhi.jpg', 144, 16, 'Chất liệu: Leather Kiể');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `user`, `pass`, `email`, `address`, `tel`, `role`) VALUES
(1, 'Quang Phú', '123456', 'admin@gmail.com', 'ha noi', '0978764721', 0),
(5, 'Quang Phú', '123456', 'phulqph35012@fpt.edu.vn', NULL, '0978765743', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iddm` (`iddm`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`iddm`) REFERENCES `danhmuc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
