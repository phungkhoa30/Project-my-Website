-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2024 at 04:28 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webquanaonam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `taikhoan` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `matkhau` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ten` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `danhmucsanpham`
--

CREATE TABLE `danhmucsanpham` (
  `id` int(11) NOT NULL,
  `ten` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `sort_order` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `GIAODICH_id` int(255) NOT NULL,
  `id` int(255) NOT NULL,
  `SANPHAM_id` int(255) NOT NULL,
  `soluong` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `dulieu` text NOT NULL,
  `trangthai` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `giaodich`
--

CREATE TABLE `giaodich` (
  `id` bigint(20) NOT NULL,
  `trangthai` tinyint(4) NOT NULL DEFAULT 0,
  `taikhoan_id` int(11) NOT NULL DEFAULT 0,
  `taikhoan_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `taikhoan_email` varchar(50) NOT NULL,
  `taikhoan_phone` varchar(20) NOT NULL,
  `tongtien` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `ngaydangki` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(10) NOT NULL,
  `ten` varchar(50) DEFAULT NULL,
  `phai` varchar(10) DEFAULT NULL,
  `sodienthoai` varchar(15) DEFAULT NULL,
  `gmail` varchar(50) DEFAULT NULL,
  `diachi` varchar(150) DEFAULT NULL,
  `ngaydangki` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id` int(10) NOT NULL,
  `ten` varchar(50) DEFAULT NULL,
  `phai` varchar(10) DEFAULT NULL,
  `sodienthoai` varchar(15) DEFAULT NULL,
  `gmail` varchar(50) DEFAULT NULL,
  `diachi` varchar(150) DEFAULT NULL,
  `ngaydangki` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phukien`
--

CREATE TABLE `phukien` (
  `id` int(255) NOT NULL,
  `DANHMUCSANPHAM_id` int(11) NOT NULL,
  `ten` varchar(100) NOT NULL,
  `gia` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `chatlieu` varchar(100) NOT NULL,
  `mota` text NOT NULL,
  `giamgia` int(11) NOT NULL,
  `hinhanh` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `hinhanh_dinhkem` text NOT NULL,
  `ngaydangki` int(11) NOT NULL DEFAULT 0,
  `luotxem` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(255) NOT NULL,
  `DANHMUCSANPHAM_id` int(11) NOT NULL,
  `ten` varchar(100) NOT NULL,
  `gia` decimal(15,3) NOT NULL DEFAULT 0.000,
  `chatlieu` varchar(100) NOT NULL,
  `mota` text NOT NULL,
  `giamgia` int(11) NOT NULL,
  `hinhanh` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `hinhanh_dinhkem` text NOT NULL,
  `ngaydangki` int(11) NOT NULL DEFAULT 0,
  `luotxem` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `DANHMUCSANPHAM_id`, `ten`, `gia`, `chatlieu`, `mota`, `giamgia`, `hinhanh`, `hinhanh_dinhkem`, `ngaydangki`, `luotxem`) VALUES
(10001, 0, 'ÁO SƠ MI IN HỌA TIẾT\r\nĐƠN GIẢN MÀU ĐỎ', 315.000, 'Modal Poly', 'Thành phần: 12% Modal 88% Polyester\r\n- Kháng khuẩn\r\n- Thoáng mát', 0, 'HinhAnh/ao so mi1.jpg', 'HinhAnh/ao so mi1.1.jpg\r\nHinhAnh/ao so mi1.2.jpg\r\nHinhAnh/ao so mi1.3.jpg\r\n', 0, 0),
(10002, 0, 'ÁO SƠ MI TAY NGẮN SLIMFIT MÀU TRẮNG', 385.000, 'Chất liệu: Sợi cà phê (CAFÉ FABRIC)', 'Thành phần : 50% Coffee 50% Polyester\r\n+ Odor Control - Kiểm soát mùi\r\n+ Fast Drying - Nhanh khô\r\n+ Ice Cool Touch - Làm mát cơ thể\r\n+ UV Protechtion - Chống nắng', 0, 'HinhAnh/ao so mi2.jpg', 'HinhAnh/ao so mi2.1.jpg\r\nHinhAnh/ao so mi2.2.jpg\r\nHinhAnh/ao so mi2.3.jpg', 0, 0),
(10003, 0, 'ÁO SƠ MI TRƠN IN HỌA TIẾT MÀU RÊU', 350.000, 'Chất liệu: Modal Poly', 'Thành phần: 12% Modal 88% Polyester\r\n- Co giãn tốt\r\n- Chống co rút\r\n- Giũ form sau nhiều lần sử dụng\r\n- Thấm hút và thoát mồ hôi tổt', 0, 'HinhAnh/ao so mi3.jpg', 'HinhAnh/ao so mi3.1.jpg\r\nHinhAnh/ao so mi3.2.jpg\r\nHinhAnh/ao so mi3.3.jpg', 0, 0),
(10004, 0, 'ÁO SƠ MI SỌC SLIMFIT VIỀN MÀU ĐEN', 410.000, 'Chất liệu: Vải sợi Hoa Hồng (dệt Twill)', 'Thành phần: 55% Rose 42% Polyester 3% Spandex\r\n- Co giãn tốt\r\n- Kháng khuẩn\r\n- Mềm mịn\r\n- Giảm tia UV\r\n- Ít nhăn', 0, 'HinhAnh/ao so mi4.jpg', 'HinhAnh/ao so mi4.1.jpg\r\nHinhAnh/ao so mi4.2.jpg\r\nHinhAnh/ao so mi4.3.jpg', 0, 0),
(10005, 0, 'ÁO THUN CỔ TRÒN TRƠN MÀU ĐỎ', 410.000, 'Chất liệu: Vải sợi Hoa Hồng (dệt Twill)', 'Thành phần: 55% Rose 42% Polyester 3% Spandex\r\n- Co giãn tốt\r\n- Kháng khuẩn\r\n- Mềm mịn\r\n- Giảm tia UV\r\n- Ít nhăn', 0, 'HinhAnh/áo thun1.jpg', 'HinhAnh/áo thun1.1.jpg\r\nHinhAnh/áo thun1.2.jpg\r\nHinhAnh/áo thun1.3.jpg', 0, 0),
(10006, 0, 'ÁO THUN CỔ TRÒN TRƠN MÀU ĐEN', 180.000, 'Chất liệu: Thun Poly Mè 4C', 'Thành phần: 93% Polyester 7% Spandex', 0, 'HinhAnh/áo thun2.jpg', 'HinhAnh/áo thun2.1.jpg\r\nHinhAnh/áo thun2.2.jpg\r\nHinhAnh/áo thun2.3.jpg', 0, 0),
(10007, 0, 'ÁO THUN WASH LOOSE MÀU XÁM', 327.000, 'Chất liệu: Thun Loang', 'Thành phần: 72% Cotton 28% Polyester\r\n- Thấm hút, thoát ẩm tốt\r\n- Bề mặt mềm mại\r\n- Thun loang thời trang\r\n+ Kỹ thuật: In KTS', 0, 'HinhAnh/áo thun3.jpg', 'HinhAnh/áo thun3.1.jpg\r\nHinhAnh/áo thun3.2.jpg\r\nHinhAnh/áo thun3.3.jpg', 0, 0),
(10008, 0, 'ÁO THUN REGULAR NEVER GIVE UP MÀU BE', 227.000, 'Chất liệu: Cotton 2 Chiều', 'Thành phần: 100% Cotton\r\n- Thấm hút, thoát ẩm tốt\r\n- Bề mặt mềm mại\r\n- Kiểm soát mùi\r\n- Điều hòa nhiệt\r\n+ Kỹ thuật: In Trame + In Dẻo', 0, 'HinhAnh/áo thun4.jpg', 'HinhAnh/áo thun4.1.jpg\r\nHinhAnh/áo thun4.2.jpg\r\nHinhAnh/áo thun4.3.jpg', 0, 0),
(10009, 0, 'ÁO POLO CỔ V PHỐI IN HỌA TIẾT MÀU TRẮNG', 345.000, 'Chất liệu: Cotton 2 Chiều\r\n', 'Thành phần: 100% Cotton\r\n- Thấm hút\r\n- Thoát ẩm tốt\r\n- Bề mặt mềm mại\r\n- Kiểm soát mùi\r\n- Điều hòa nhiệt\r\n+ Bo cổ cotton cùng màu vải chính', 0, 'HinhAnh/polo1.jpg', 'HinhAnh/polo1.1.jpg\r\nHinhAnh/polo1.2.jpg\r\nHinhAnh/polo1.3.jpg', 0, 0),
(10010, 0, 'ÁO POLO PHỐI TRỤ THÊU BE COOL XANH LÁ', 315.000, 'Chất liệu: Cá Sấu Poly Spandex', 'Thành phần: 95%Polyester 5% Spandex\r\n- Thoáng mát\r\n- Mau khô\r\n- Không nhăn\r\n+ Trọng lượng: 260gsm\r\n+ Kỹ thuật thêu 2D', 0, 'HinhAnh/polo2.jpg', 'HinhAnh/polo2.1.jpg\r\nHinhAnh/polo2.2.jpg\r\nHinhAnh/polo2.3.jpg', 0, 0),
(10011, 0, 'ÁO POLO RÃ PHỐI IN HỌA TIẾT MÀU BE', 345.000, 'Chất liệu: Cá Sấu Poly Spandex', 'Thành phần: 95% Polyester 5% Spandex\r\n- Mau khô\r\n- Thoáng mát\r\n- Không nhăn\r\n+ Kỹ thuật: Thêu', 0, 'HinhAnh/polo3.jpg', 'HinhAnh/polo3.1.jpg\r\nHinhAnh/polo3.2.jpg\r\nHinhAnh/polo3.3.jpg', 0, 0),
(10012, 0, 'ÁO POLO TỔ ONG PHỐI SỌC NGANG', 200.000, 'Chất liệu: Cá Sấu Poly Spandex', 'Thành phần: 95%Polyester 5% Spandex\r\n- Thoáng mát\r\n- Mau khô\r\n- Không nhăn\r\n+ Kỹ thuật thêu 2D ', 0, 'HinhAnh/polo4.jpg', 'HinhAnh/polo4.1.jpg\r\nHinhAnh/polo4.2.jpg\r\nHinhAnh/polo4.3.jpg', 0, 0),
(20001, 0, 'QUẦN JEANS BASIC\r\n(PHỐI NHIỀU ĐỒ)', 440.000, 'Chất liệu: Jean Cotton Spandex', 'Thành phần: 98% Cotton 2% Spandex\r\n- Mềm mịn\r\n- Thoáng khí\r\n- Co giãn\r\n+ Độ dày: 10,5 oz\r\n+ Jean trơn đơn giản\r\n+ Túi đồng hồ bên phải khi mặc', 0, 'HinhAnh/j1.jpg', 'HinhAnh/j1.1.jpg\r\nHinhAnh/j1.2.jpg\r\nHinhAnh/j1.3.jpg', 0, 0),
(20002, 0, 'QUẦN JEANS XANH NHẠT THÊU CHỮ Ở LƯNG ', 480.000, 'Chất liệu: Jean Cotton', 'Thành phần: 98% cotton 2% spandex\r\n- Độ bền cao\r\n- Mặc mát, rất thoải mái.', 0, 'HinhAnh/j2.jpg', 'HinhAnh/j2.1.jpg\r\nHinhAnh/j2.2.jpg\r\nHinhAnh/j2.3.jpg', 0, 0),
(20003, 0, 'QUẦN JEANS RÁCH THÊU CHÉO MÀU XANH', 400.000, 'Chất liệu: Jean Cotton', 'Thành phần: 100% Cotton', 0, 'HinhAnh/j3.jpg', 'HinhAnh/j3.1.jpg\r\nHinhAnh/j3.2.jpg\r\nHinhAnh/j3.3.jpg', 0, 0),
(20004, 0, 'QUẦN JEANS XÁM REGULAR TÚI KIỂU MÀU XÁM', 495.000, 'Chất liệu: Jean Cotton Spandex', 'Thành phần: 98% Cotton 2% Spandex\r\n- Jean phom vừa người\r\n- Độ co giãn vừa phải\r\n- Wash hiệu ứng\r\n- Thiết kế ngăn túi nhỏ đồng hồ', 0, 'HinhAnh/j4.jpg', 'HinhAnh/j4.1.jpg\r\nHinhAnh/j4.2.jpg\r\nHinhAnh/j4.3.jpg', 0, 0),
(20005, 0, 'QUẦN TÂY XẾP LI THÊU MÀU ĐEN', 425.000, 'Chất liệu: Poly Rayon Spandex', 'Thành phần: 84% Polyester 14% Rayon 2% Spandex\r\n- Co dãn\r\n- Kháng khuẩn\r\n- Mềm mịn\r\n- Nhanh khô\r\n- Dễ giặt\r\n- Ít nhăn', 0, 'HinhAnh/tây1.jpg', 'HinhAnh/tây1.1.jpg\r\nHinhAnh/tây1.2.jpg\r\nHinhAnh/tây1.3.jpg', 0, 0),
(20006, 0, 'QUẦN TÂY NAZAFU MÀU BÒ ĐẬM', 427.000, 'Chất liệu: Poly Rayon Spandex', 'Thành phần: 82% Polyester 14% Rayon 4% Spandex\r\n- Co dãn tốt\r\n- Kháng khuẩn\r\n- Mềm mịn\r\n- Ít nhăn\r\n- Độ bền màu tương đối tốt', 0, 'HinhAnh/tây2.jpg', 'HinhAnh/tây2.1.jpg\r\nHinhAnh/tây2.2.jpg\r\nHinhAnh/tây2.3.jpg', 0, 0),
(20007, 0, 'QUẦN TÂY FORM SIDETAB\r\nMÀU XÁM', 427.000, 'Chất liệu: Poly Rayon Spandex', 'Thành phần: 82% Polyester 14% Rayon 4% Spandex\r\n- Co dãn tốt\r\n- Kháng khuẩn\r\n- Mềm mịn\r\n- Ít nhăn\r\n- Độ bền màu tương đối tốt', 0, 'HinhAnh/tây3.jpg', 'HinhAnh/tây3.1.jpg\r\nHinhAnh/tây3.2.jpg\r\nHinhAnh/tây3.3.jpg', 0, 0),
(20008, 0, 'QUẦN TÂY SIDETAB XẾP LY MÀU BE', 450.000, 'Chất liệu: Poly Rayon Spandex', 'Thành phần: 82% Polyester 14% Rayon 4% Spandex\r\n- Co dãn tốt\r\n- Kháng khuẩn\r\n- Mềm mịn\r\n- Ít nhăn\r\n- Độ bền màu tương đối tốt', 0, 'HinhAnh/tây4.jpg', 'HinhAnh/tây4.1.jpg\r\nHinhAnh/tây4.2.jpg\r\nHinhAnh/tây4.3.jpg', 0, 0),
(20009, 0, 'QUẦN SHORT JEANS ĐEN TÚI CHÉO WASH BẠC', 350.000, 'Chất liệu: Jean Cotton', 'Thành phần: 100% Cotton\r\n+ Chất liệu mềm mỏng thoải mái\r\n+ Độ co giãn vừa phải\r\n+ Wash nhẹ hiệu ứng trẻ trung', 0, 'HinhAnh/sh1.jpg', 'HinhAnh/sh1.1.jpg\r\nHinhAnh/sh1.2.jpg\r\nHinhAnh/sh1.3.jpg', 0, 0),
(20010, 0, 'QUẦN SHORT JEANS XANH ĐÁP TÚI KIỂU', 350.000, 'Jean Cotton', 'QUẦN SHORT NHUNG TĂM GẮN TAG DA TAM GIÁC MÀU NÂU', 0, 'HinhAnh/sh2.jpg', 'HinhAnh/sh2.1.jpg\r\nHinhAnh/sh2.2.jpg\r\nHinhAnh/sh2.3.jpg', 0, 0),
(20011, 0, 'QUẦN SHORT NHUNG TĂM DA TAM GIÁC MÀU NÂU', 315.000, 'Chất liệu: Kaki Nhung Cotton', 'Thành phần: 55% Cotton 27% Nylon 15% Rayon 3% Spandex\r\n+ Họa tiết thêu túi sau ', 0, 'HinhAnh/sh3.jpg', 'HinhAnh/sh3.1.jpg\r\nHinhAnh/sh3.2.jpg\r\nHinhAnh/sh3.3.jpg', 0, 0),
(20012, 0, 'QUẦN SHORT LINEN MÀU TRẮNG', 180.000, 'Chất liệu: Kaki Thun', 'Thành phần: 97% Cotton 3% Spandex\r\n- Thấm hút, thoát ẩm tốt\r\n- Cấu trúc vải bền vững\r\n- Co giãn tương đối', 0, 'HinhAnh/sh4.jpg', 'HinhAnh/sh4.1.jpg\r\nHinhAnh/sh4.2.jpg\r\nHinhAnh/sh4.3.jpg\r\n', 0, 0),
(30001, 0, 'THẮT LƯNG KHÓA TỰ ĐỘNG', 285.000, 'Chất liệu: Dây: 100% da bò thật', '- Bền bỉ\r\n- Sang trọng và tinh tế\r\nĐầu khóa: Zinc contract\r\n- Bề mặt sáng bóng và đẹp\r\n- Đặc biệt: không gỉ sét', 0, 'HinhAnh/pk1.jpg', 'HinhAnh/pk1.1.jpg\r\nHinhAnh/pk1.2.jpg\r\nHinhAnh/pk1.3.jpg', 0, 0),
(30002, 0, 'THẮT LƯNG ĐẦU KIM MÀU ĐEN', 250.000, 'Chất liệu: Dây: 100% da bò thật', '- Bền bỉ\r\n- Sang trọng và tinh tế\r\nĐầu khóa: Zinc contract\r\n- Bề mặt sáng bóng và đẹp\r\n- Đặc biệt: không gỉ sét', 0, 'HinhAnh/pk2.jpg', 'HinhAnh/pk2.1.jpg\r\nHinhAnh/pk2.2.jpg\r\nHinhAnh/pk2.3.jpg', 0, 0),
(30003, 0, 'VÍ DA DÁNG NGANG', 345.000, 'Chất liệu: Da bò Nappa nhập khẩu', '- Kích thước: Ngang 10.5 cm x Cao 8 cm\r\n- Số ngăn: 10 ngăn tiện dụng vẫn đầy đủ công năng\r\n- Mỗi sản phẩm ví đều có hộp kraf đựng riêng cứng cáp.', 0, 'HinhAnh/pk3.jpg', 'HinhAnh/pk3.1.jpg\r\nHinhAnh/pk3.2.jpg\r\nHinhAnh/pk3.3.jpg', 0, 0),
(30004, 0, 'VÍ DA DÁNG DỌC', 350.000, 'Chất liệu: Simily dày 1,1mm', '- Chống nhăn và trầy xước tối ưu, bền màu\r\n- Ít bám bụi, dễ dàng vệ sinh\r\n- Bạn chỉ cần sử dụng khăn mềm và sạch để lau nhẹ trên bề mặt da.\r\n- Thiết kế gồm 1 ngăn chín và nhiều ngăn phụ đựng thẻ card\r\n- Logo + dây kéo kim loại\r\n- Kích thước: Cao 12cm x Ngang 22cm', 0, 'HinhAnh/pk4.jpg', 'HinhAnh/pk4.1.jpg\r\nHinhAnh/pk4.2.jpg\r\nHinhAnh/pk4.3.jpg', 0, 0),
(30005, 0, 'VỚ LƯỜI PHỐI MÀU', 35.000, 'Chất liệu: Cotton', 'Thành phần: 85% Cotton 10% Spandex 5% Rubber\r\n+ Thông thoáng\r\n+ Khử mùi\r\n+ Co dãn tối ưu\r\n- Kiểu dệt mắc lưới\r\nNO-SHOW SOCK (VỚ GIÀY LƯỜI)\r\n- Linh động với đa số size chân người dùng', 0, 'HinhAnh/pk5.jpg', 'HinhAnh/pk5.1.jpg\r\nHinhAnh/pk5.2.jpg\r\nHinhAnh/pk5.3.jpg', 0, 0),
(30006, 0, 'VỚ CỔ CAO ĐEN TRƠN', 35.000, 'Chất liệu: Cotton Spandex Rubber', 'Thành phần: 85% Cotton 10% Spandex 5% Rubber\r\n- Thông thoáng\r\n- Khử mùi\r\nKỹ Thuật: kiểu dệt mắc lưới', 0, 'HinhAnh/pk6.jpg', 'HinhAnh/pk6.1.jpg\r\nHinhAnh/pk6.2.jpg\r\nHinhAnh/pk6.3.jpg', 0, 0),
(30007, 0, 'NÓN LƯỠI TRAI THÊU', 120.000, 'Chất liệu: Dù Poly', 'Thành phần: 100% Polyester', 0, 'HinhAnh/pk7.jpg', 'HinhAnh/pk7.1.jpg\r\nHinhAnh/pk7.2.jpg\r\nHinhAnh/pk7.3.jpg', 0, 0),
(30008, 0, 'NÓN LƯỠI TRAI THÊU CÓ CHỮ', 120.000, 'Chất liệu: Dù Poly', 'Thành phần: 100% Polyester', 0, 'HinhAnh/pk8.jpg', 'HinhAnh/pk8.1.jpg\r\nHinhAnh/pk8.2.jpg\r\nHinhAnh/pk8.3.jpg', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `GROUP_TK` int(11) NOT NULL,
  `DES_TK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`user`, `pass`, `GROUP_TK`, `DES_TK`) VALUES
('admin', '123', 1, 1),
('user', '456', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `id` int(11) NOT NULL,
  `tieude` varchar(100) DEFAULT NULL,
  `hinhanh` varchar(20) DEFAULT NULL,
  `noidungtintuc` varchar(255) DEFAULT NULL,
  `ngaydangki` int(11) NOT NULL DEFAULT 0,
  `tacgiatintuc` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `danhmucsanpham`
--
ALTER TABLE `danhmucsanpham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `giaodich`
--
ALTER TABLE `giaodich`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phukien`
--
ALTER TABLE `phukien`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `phukien` ADD FULLTEXT KEY `ten` (`ten`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `sanpham` ADD FULLTEXT KEY `ten` (`ten`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `danhmucsanpham`
--
ALTER TABLE `danhmucsanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `giaodich`
--
ALTER TABLE `giaodich`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `phukien`
--
ALTER TABLE `phukien`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000000056;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
