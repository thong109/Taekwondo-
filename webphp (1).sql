-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 21, 2021 lúc 05:53 AM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webphp`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `level` tinyint(4) DEFAULT 1,
  `avatar` varchar(100) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `address`, `email`, `password`, `phone`, `status`, `level`, `avatar`, `create_at`, `update_at`) VALUES
(11, 'Nguyễn văn A', '123 Nguyễn B', 'anguyen@gmail.com', 'c8837b23ff8aaa8a2dde915473ce0991', '0778960402', 1, 2, NULL, '2021-06-26 07:51:26', '2021-06-26 07:51:26'),
(12, 'Thông Phan', 'thong.phan109@gmail.com', 'thong.phan109@gmail.com', 'c8837b23ff8aaa8a2dde915473ce0991', '+84778960401', 1, 2, NULL, '2021-10-31 04:26:07', '2021-10-31 04:26:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `numberbank` char(16) DEFAULT NULL,
  `date_create` date DEFAULT NULL,
  `checknumber` char(5) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `bank`
--

INSERT INTO `bank` (`id`, `name`, `bank_name`, `numberbank`, `date_create`, `checknumber`, `created_at`, `update_at`) VALUES
(58, 'Thông Phan', 'Sacombank', '0123456789101112', '2013-06-19', '202', '2021-10-04 03:58:07', '2021-10-04 03:58:07'),
(59, 'Thông Phan', 'MB', '0123456789101111', '2014-06-25', '9', '2021-10-04 04:01:19', '2021-10-04 04:01:19'),
(60, 'Thông Phan', 'MB', '1111111111111111', '2021-10-14', '698', '2021-10-04 04:33:12', '2021-10-04 04:33:12'),
(61, 'Thông', 'Sacombank', '2222222222222222', '2021-10-28', 'bcbe3', '2021-10-04 04:35:54', '2021-10-04 04:35:54'),
(62, 'Thông Phan', 'Sacombank', '3333333333333333', '2021-10-14', '333', '2021-10-04 04:38:42', '2021-10-04 04:38:42'),
(63, 'Phan Văn Thông', 'Sacombank', '4444444444444444', '2021-10-07', '444', '2021-10-04 04:56:40', '2021-10-04 04:56:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(50) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `thundar` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `top` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `down` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `name`, `thundar`, `price`, `top`, `down`) VALUES
(12, 'Hanul Taekwondo', 'gioithieu.jpg', 10000000, 'Đam mê', 'Tài năng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `images` varchar(100) DEFAULT NULL,
  `banner` varchar(100) NOT NULL,
  `home` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `level` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `images`, `banner`, `home`, `status`, `level`, `created_at`, `updated_at`) VALUES
(39, 'Team', 'team', NULL, '', 1, 1, 0, '2021-09-04 15:53:32', '2021-10-30 01:26:47'),
(40, 'Giới thiệu', 'gioi-thieu', NULL, '', 1, 1, 0, '2021-09-12 14:07:41', '2021-10-30 01:26:54'),
(41, 'Tin tức', 'tin-tuc', NULL, '', 1, 1, 0, '2021-09-12 14:48:22', '2021-10-30 01:27:03'),
(44, 'Lớp đai đen', 'lop-dai-den', NULL, '', 0, 1, 0, '2021-11-01 02:08:20', '2021-11-01 02:08:20'),
(45, 'Lớp đai vàng', 'lop-dai-vang', NULL, '', 0, 1, 0, '2021-11-21 04:02:06', '2021-11-21 04:02:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `classb`
--

CREATE TABLE `classb` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `level` tinyint(4) DEFAULT 1,
  `avatar` varchar(100) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `classb`
--

INSERT INTO `classb` (`id`, `name`, `address`, `email`, `password`, `phone`, `status`, `level`, `avatar`, `create_at`, `update_at`) VALUES
(11, 'Nguyễn văn A', '123 Nguyễn B', 'anguyen@gmail.com', 'c8837b23ff8aaa8a2dde915473ce0991', '0778960402', 1, 2, NULL, '2021-06-26 07:51:26', '2021-06-26 07:51:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `phone`, `address`, `content`, `title`, `created_at`, `update_at`) VALUES
(6, 'Thông Phan', 'thong.phan109@gmail.com', '0778960401', 'K123 hoàng kiếm', 'dáqdqw', 'phản hồi', NULL, NULL),
(7, 'Thông Phan', 'thong.phan109@gmail.com', '0778960401', 'K123 hoàng kiếm', 'sadqdqw', 'phản hồi', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaovien`
--

CREATE TABLE `giaovien` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `born` date DEFAULT current_timestamp(),
  `comment` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `level` tinyint(4) DEFAULT 1,
  `thundar` varchar(100) DEFAULT NULL,
  `create_at` date DEFAULT current_timestamp(),
  `update_at` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `giaovien`
--

INSERT INTO `giaovien` (`id`, `name`, `address`, `email`, `sex`, `born`, `comment`, `password`, `phone`, `status`, `level`, `thundar`, `create_at`, `update_at`) VALUES
(11, 'Phan Văn Thông', 'Hòa Khánh', 'anguyen@gmail.com', 'Nam', '2003-02-21', 'Luôn đặt chất lượng lên hàng đầu', 'c8837b23ff8aaa8a2dde915473ce0991', '0778960402', 1, 2, 'team-4.jpg', '2021-06-26', '2021-06-26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gioithieu`
--

CREATE TABLE `gioithieu` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `sale` tinyint(4) DEFAULT 0,
  `thundar` varchar(200) DEFAULT NULL,
  `rated` int(11) NOT NULL DEFAULT 0,
  `comment` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `head` int(11) DEFAULT 0,
  `view` int(11) DEFAULT 0,
  `hot` tinyint(4) DEFAULT 0,
  `number` int(11) NOT NULL DEFAULT 0,
  `material` varchar(20) NOT NULL,
  `top` varchar(25) NOT NULL,
  `mid` varchar(20) NOT NULL,
  `down` varchar(20) NOT NULL,
  `create_at` timestamp NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `gioithieu`
--

INSERT INTO `gioithieu` (`id`, `name`, `slug`, `price`, `sale`, `thundar`, `rated`, `comment`, `category_id`, `content`, `head`, `view`, `hot`, `number`, `material`, `top`, `mid`, `down`, `create_at`, `update_at`) VALUES
(213, 'Giới thiệu-1', 'gioi-thieu-1', 0, 0, 'gioithieu.jpg', 0, 0, 40, 'Taekwondo là bộ môn võ thuật yêu thích của người Việt.', 0, 0, 0, 0, '', '', '', '', '2021-10-30 01:34:14', '2021-10-30 01:34:14'),
(214, 'Giới thiệu-2', 'gioi-thieu-2', NULL, 0, 'gioithieu.jpg', 0, 0, 40, 'TAEKWONDO LÀ BỘ MÔN VÕ THUẬT YÊU THÍCH CỦA NGƯỜI VIỆT.', 0, 0, 0, 0, '', '', '', '', '2021-10-30 01:44:24', '2021-10-30 01:44:24'),
(215, 'Giới thiệu-3', 'gioi-thieu-3', NULL, 0, 'gioithieu.jpg', 0, 0, 40, 'TAEKWONDO LÀ BỘ MÔN VÕ THUẬT YÊU THÍCH CỦA NGƯỜI VIỆT.', 0, 0, 0, 0, '', '', '', '', '2021-10-30 01:44:41', '2021-10-30 01:44:41'),
(216, 'Giới thiệu-4', 'gioi-thieu-4', NULL, 0, 'gioithieu.jpg', 0, 0, 40, 'TAEKWONDO LÀ BỘ MÔN VÕ THUẬT YÊU THÍCH CỦA NGƯỜI VIỆT.', 0, 0, 0, 0, '', '', '', '', '2021-10-30 03:10:04', '2021-10-30 03:10:04'),
(217, 'Giới thiệu-5', 'gioi-thieu-5', NULL, 0, 'gioithieu.jpg', 0, 0, 40, 'TAEKWONDO LÀ BỘ MÔN VÕ THUẬT YÊU THÍCH CỦA NGƯỜI VIỆT.', 0, 0, 0, 0, '', '', '', '', '2021-11-21 03:27:50', '2021-11-21 03:27:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocsinh`
--

CREATE TABLE `hocsinh` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `born` date DEFAULT current_timestamp(),
  `password` varchar(50) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `level` tinyint(4) DEFAULT 1,
  `thundar` varchar(100) DEFAULT NULL,
  `create_at` date DEFAULT current_timestamp(),
  `update_at` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hocsinh`
--

INSERT INTO `hocsinh` (`id`, `name`, `address`, `email`, `sex`, `born`, `password`, `phone`, `comment`, `status`, `level`, `thundar`, `create_at`, `update_at`) VALUES
(11, 'Phan Văn Thông', 'K124/14 Đỗ Thúc Tịnh, Khuê Trung, Cẩm Lệ, Đà Nẵng', 'anguyen@gmail.com', 'Nam', '2000-05-14', 'c8837b23ff8aaa8a2dde915473ce0991', '+84778960401', 'Học thì ít chơi thì nhiều', 1, 2, 'team-4.jpg', '2021-06-26', '2021-06-26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `logo`
--

CREATE TABLE `logo` (
  `id` int(50) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `thundar` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `logo`
--

INSERT INTO `logo` (`id`, `name`, `thundar`, `price`) VALUES
(15, 'GHẾ LOUNGE TAY VỊN GỖ SỒI-1', 'hoatdong-2.jpg', 10000000),
(16, 'GHẾ LOUNGE TAY VỊN GỖ SỒI-2', 'hoatdong-3.jpg', 10000000),
(17, 'GHẾ LOUNGE TAY VỊN GỖ SỒI-3', 'hoatdong-4.jpg', 10000000),
(18, 'GHẾ LOUNGE TAY VỊN GỖ SỒI-4', 'hoatdong-5.jpg', 10000000),
(20, 'GHẾ LOUNGE TAY VỊN GỖ SỒI-5', 'hoatdong-6.jpg', 10000000),
(21, 'GHẾ LOUNGE TAY VỊN GỖ SỒI', 'hoatdong-1.jpg', 10000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lophoc`
--

CREATE TABLE `lophoc` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `thundar` varchar(200) DEFAULT NULL,
  `rated` int(11) NOT NULL DEFAULT 0,
  `comment` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `head` int(11) DEFAULT 0,
  `view` int(11) DEFAULT 0,
  `hot` tinyint(4) DEFAULT 0,
  `number` int(11) NOT NULL DEFAULT 0,
  `thoigian` varchar(50) NOT NULL,
  `top` varchar(25) NOT NULL,
  `mid` varchar(20) NOT NULL,
  `down` varchar(20) NOT NULL,
  `create_at` timestamp NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `lophoc`
--

INSERT INTO `lophoc` (`id`, `name`, `slug`, `thundar`, `rated`, `comment`, `category_id`, `content`, `head`, `view`, `hot`, `number`, `thoigian`, `top`, `mid`, `down`, `create_at`, `update_at`) VALUES
(201, 'Phan Văn Thông', 'nguyen-tien', 'team-1.jpg', 5, 1, 44, 'Lớp đai đen', 0, 0, 0, 6, 'Sảnh A / 13:00-14:30', '51x50,5x73cm', 'Nhật Bản', '3Kg', '2021-09-12 15:00:15', '2021-09-12 15:00:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` tinyint(4) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `nameuser` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `thanh_vien` varchar(100) NOT NULL COMMENT 'thành viên thanh toán',
  `money` float NOT NULL COMMENT 'số tiền thanh toán',
  `note` varchar(255) DEFAULT NULL COMMENT 'ghi chú thanh toán',
  `vnp_response_code` varchar(255) NOT NULL COMMENT 'mã phản hồi',
  `code_vnpay` varchar(255) NOT NULL COMMENT 'mã giao dịch vnpay',
  `code_bank` varchar(255) NOT NULL COMMENT 'mã ngân hàng',
  `time` datetime NOT NULL COMMENT 'thời gian chuyển khoản'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `thanh_vien`, `money`, `note`, `vnp_response_code`, `code_vnpay`, `code_bank`, `time`) VALUES
(1, '742874161', 'abc', 100000, 'chinh chuyển khoản', '00', '13401455', 'NCB', '2020-10-10 01:00:00'),
(2, '608324672', 'abc', 1000000, 'test chuyển khoản', '00', '13401811', 'NCB', '2020-10-11 21:00:00'),
(3, '1134065293', 'CT2', 150000, 'học phí', '00', '13407163', 'NCB', '2020-10-22 23:00:00'),
(4, '596509313', 'CT2', 5000000, 'học phí', '00', '13407176', 'NCB', '2020-10-23 00:00:00'),
(5, '70267166', 'CT2', 5000000, 'học phí', '00', '13407178', 'NCB', '2020-10-23 00:00:00'),
(6, '1672349048', 'CT1', 150000, 'học phí', '00', '13407729', 'NCB', '2020-10-23 21:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `sale` tinyint(4) DEFAULT 0,
  `thundar` varchar(200) DEFAULT NULL,
  `rated` int(11) NOT NULL DEFAULT 0,
  `comment` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `head` int(11) DEFAULT 0,
  `view` int(11) DEFAULT 0,
  `hot` tinyint(4) DEFAULT 0,
  `number` int(11) NOT NULL DEFAULT 0,
  `material` varchar(20) NOT NULL,
  `top` varchar(25) NOT NULL,
  `mid` varchar(20) NOT NULL,
  `down` varchar(20) NOT NULL,
  `create_at` timestamp NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `slug`, `price`, `sale`, `thundar`, `rated`, `comment`, `category_id`, `content`, `head`, `view`, `hot`, `number`, `material`, `top`, `mid`, `down`, `create_at`, `update_at`) VALUES
(201, 'Nguyên Tiến', 'nguyen-tien', 7900000, 0, 'team-1.jpg', 5, 1, 39, 'Mỗi chiếc ghế được hoàn thành cẩn thận bởi thợ thủ công người Nhật Bản. Được thiết kế cho sự linh hoạt trong cuộc sống hàng ngày của bạn với phần lưng cong lớn có thể được sử dụng làm tay vịn hoặc để hỗ trợ lưng của bạn trong khi ngồi ở một góc. Sự thoải mái đã được cải thiện bằng cách thêm độ dốc nhẹ và đường cong đến bề mặt ghế.\r\n* Hàng đặt trước - Thời gian đặt hàng: 75 ngày.\r\n* Vui lòng liên hệ nhân viên cửa hàng để biết thêm chi tiết.', 0, 0, 0, 6, 'Gỗ sồi', '51x50,5x73cm', 'Nhật Bản', '3Kg', '2021-09-12 15:00:15', '2021-09-12 15:00:15'),
(210, 'Bảo Anh', 'bao-anh', 10000000, 0, 'team-2.jpg', 0, 0, 39, '1', 0, 0, 0, 100, 'Gỗ thông', '37,5x29x73cm', 'Nhật Bản', '7Kg', '2021-10-29 15:37:29', '2021-10-29 15:37:29'),
(211, 'Văn Trí', 'van-tri', 10000000, 0, 'team-3.jpg', 0, 0, 39, '1', 0, 0, 0, 100, 'Gỗ thông', '51x50,5x73cm', '11', '1', '2021-10-29 15:37:58', '2021-10-29 15:37:58'),
(212, 'Duy Hiếu', 'duy-hieu', 10000000, 0, 'team-4.jpg', 0, 0, 39, '1', 0, 0, 0, 100, 'Gỗ thông', '37,5x29x73cm', 'Nhật Bản', '5Kg', '2021-10-29 15:38:14', '2021-10-29 15:38:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rated`
--

CREATE TABLE `rated` (
  `id` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `id_users` int(11) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL,
  `rated` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tex`
--

CREATE TABLE `tex` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `level` tinyint(4) DEFAULT 1,
  `avatar` varchar(100) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tex`
--

INSERT INTO `tex` (`id`, `name`, `address`, `email`, `password`, `phone`, `status`, `level`, `avatar`, `create_at`, `update_at`) VALUES
(11, 'Nguyễn văn A', '123 Nguyễn B', 'anguyen@gmail.com', 'c8837b23ff8aaa8a2dde915473ce0991', '0778960402', 1, 2, NULL, '2021-06-26 07:51:26', '2021-06-26 07:51:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhtoan`
--

CREATE TABLE `thanhtoan` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `thanh_vien` varchar(100) NOT NULL COMMENT 'thành viên thanh toán',
  `money` float NOT NULL COMMENT 'số tiền thanh toán',
  `note` varchar(255) DEFAULT NULL COMMENT 'ghi chú thanh toán',
  `vnp_response_code` varchar(255) NOT NULL COMMENT 'mã phản hồi',
  `code_vnpay` varchar(255) NOT NULL COMMENT 'mã giao dịch vnpay',
  `code_bank` varchar(255) NOT NULL COMMENT 'mã ngân hàng',
  `time` datetime NOT NULL COMMENT 'thời gian chuyển khoản'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `sale` tinyint(4) DEFAULT 0,
  `thundar` varchar(200) DEFAULT NULL,
  `rated` int(11) NOT NULL DEFAULT 0,
  `comment` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `head` int(11) DEFAULT 0,
  `view` int(11) DEFAULT 0,
  `hot` tinyint(4) DEFAULT 0,
  `number` int(11) NOT NULL DEFAULT 0,
  `material` varchar(20) NOT NULL,
  `top` varchar(25) NOT NULL,
  `mid` varchar(20) NOT NULL,
  `down` varchar(20) NOT NULL,
  `create_at` timestamp NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`id`, `name`, `slug`, `price`, `sale`, `thundar`, `rated`, `comment`, `category_id`, `content`, `head`, `view`, `hot`, `number`, `material`, `top`, `mid`, `down`, `create_at`, `update_at`) VALUES
(212, 'Cuộc thi đai xanh', 'cuoc-thi-dai-xanh', 10000000, 0, 'tintuc-3.jpg', 0, 0, 41, '1', 0, 0, 0, 100, 'Gỗ thông', '37,5x29x73cm', 'Nhật Bản', '5Kg', '2021-10-29 15:38:14', '2021-10-29 15:38:14'),
(213, ' Cuộc thi đai đỏ', 'cuoc-thi-dai-do', 10000000, 0, 'tintuc-4.jpg', 0, 0, 41, '1', 0, 0, 0, 100, 'Giấy', '76x29x64cm', 'Việt Nam', '10Kg', '2021-10-30 01:16:23', '2021-10-30 01:16:23'),
(214, ' Cuộc thi đai đen', 'cuoc-thi-dai-den', 10000000, 0, 'tintuc-5.jpg', 0, 0, 41, '1', 0, 0, 0, 100, 'Gỗ sồi', '68x61,5x70cm', 'Việt Nam', '6Kg', '2021-10-30 01:17:03', '2021-10-30 01:17:03'),
(215, 'Cuộc thi đai trắng', 'cuoc-thi-dai-trang', 0, 0, 'tintuc-1.jpg', 0, 0, 41, '1', 0, 0, 0, 0, '', '', '', '', '2021-11-21 03:20:54', '2021-11-21 03:20:54'),
(216, 'Cuộc thi đai vàng', 'cuoc-thi-dai-vang', 0, 0, 'tintuc-2.jpg', 0, 0, 41, '1', 0, 0, 0, 0, '', '', '', '', '2021-11-21 03:21:15', '2021-11-21 03:21:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `users_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `password`, `avatar`, `status`, `created_at`, `update_at`) VALUES
(35, 'Thạch Sanh', 'thachsanh@gmail.com', '0778960401', 'K123/14 Đỗ Thúc Tịnh , Đà Nẵng', 'c8837b23ff8aaa8a2dde915473ce0991', '', 1, '2021-06-26 08:23:42', '2021-06-26 08:23:42'),
(42, 'Thông Phan', 'thong.phan109@gmail.com', '0778960401', 'K123 hoàng kiếm', 'c8837b23ff8aaa8a2dde915473ce0991', '', 1, '2021-09-20 13:56:55', '2021-09-20 13:56:55'),
(43, 'Thông Phan', 'thong.phan140500@gmail.com', '0778960401', 'K123 hoàng kiếm', 'c8837b23ff8aaa8a2dde915473ce0991', '', 1, '2021-09-26 16:33:44', '2021-09-26 16:33:44'),
(44, 'Trần Quốc Trung', 'trung123@gmail.com', '0778960401', 'k123/14 Đỗ Thúc Tịnh, Cẩm Lệ ,Đà Nẵng', 'c8837b23ff8aaa8a2dde915473ce0991', '', 1, '2021-10-11 14:32:47', '2021-10-11 14:32:47');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `classb`
--
ALTER TABLE `classb`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gioithieu`
--
ALTER TABLE `gioithieu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `hocsinh`
--
ALTER TABLE `hocsinh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lophoc`
--
ALTER TABLE `lophoc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `rated`
--
ALTER TABLE `rated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_users` (`id_users`);

--
-- Chỉ mục cho bảng `tex`
--
ALTER TABLE `tex`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thanhtoan`
--
ALTER TABLE `thanhtoan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `classb`
--
ALTER TABLE `classb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `gioithieu`
--
ALTER TABLE `gioithieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT cho bảng `hocsinh`
--
ALTER TABLE `hocsinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `lophoc`
--
ALTER TABLE `lophoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT cho bảng `rated`
--
ALTER TABLE `rated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `tex`
--
ALTER TABLE `tex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `thanhtoan`
--
ALTER TABLE `thanhtoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT cho bảng `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `gioithieu`
--
ALTER TABLE `gioithieu`
  ADD CONSTRAINT `gioithieu_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Các ràng buộc cho bảng `lophoc`
--
ALTER TABLE `lophoc`
  ADD CONSTRAINT `lophoc_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transaction` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Các ràng buộc cho bảng `rated`
--
ALTER TABLE `rated`
  ADD CONSTRAINT `rated_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `rated_ibfk_2` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD CONSTRAINT `tintuc_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Các ràng buộc cho bảng `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
