-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2021 at 09:04 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlydiem`
--

-- --------------------------------------------------------

--
-- Table structure for table `day`
--

CREATE TABLE `day` (
  `MaDayHoc` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `MaMonHoc` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `Magv` int(6) NOT NULL,
  `MaLopHoc` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaHocKy` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `MoTaPhanCong` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `day`
--

INSERT INTO `day` (`MaDayHoc`, `MaMonHoc`, `Magv`, `MaLopHoc`, `MaHocKy`, `MoTaPhanCong`) VALUES
('1', 'T', 1010, '10A1', '12016', 'nhan'),
('2', 'A', 1012, '10A2', '12016', 'dfd'),
('3', 'T', 1010, '10A2', '12016', 'sdsd');

-- --------------------------------------------------------

--
-- Table structure for table `diem`
--

CREATE TABLE `diem` (
  `MaDiem` int(6) NOT NULL,
  `MaHocKy` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `MaMonHoc` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `MaHS` int(6) NOT NULL,
  `MaLopHoc` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `DiemMieng` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `Diem15Phut1` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `Diem15Phut2` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `Diem1Tiet1` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `Diem1Tiet2` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `DiemThi` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `DiemTB` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `diem`
--

INSERT INTO `diem` (`MaDiem`, `MaHocKy`, `MaMonHoc`, `MaHS`, `MaLopHoc`, `DiemMieng`, `Diem15Phut1`, `Diem15Phut2`, `Diem1Tiet1`, `Diem1Tiet2`, `DiemThi`, `DiemTB`) VALUES
(1, '12016', 'T', 100104, '10A2', '5', '6', '7', '8', '9', '10', 0),
(2, '12016', 'T', 100105, '10A2', '6', '5', '9', '8', '7', '6', 0),
(3, '12016', 'T', 100201, '10A2', '9', '10', '10', '9.', '8.', '9', 0),
(59, '12016', 'T', 100101, '10A1', '5', '6', '7', '9', '10', '10', 0),
(103, '12016', 'H', 100101, '10A1', '10', '9', '8', '7', '5.5', '7.5', 0);

-- --------------------------------------------------------

--
-- Table structure for table `giaovien`
--

CREATE TABLE `giaovien` (
  `Magv` int(4) NOT NULL,
  `MaMonHoc` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `Tengv` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `passwordgv` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `giaovien`
--

INSERT INTO `giaovien` (`Magv`, `MaMonHoc`, `Tengv`, `DiaChi`, `SDT`, `passwordgv`) VALUES
(1010, 'T', 'L?? Th??? Ng???c Hoa', '285 Cao L??? Ph?????ng 4 Qu???n 8 H??? Ch?? Minh       ', '01226156288', 'nhan'),
(1012, 'A', '??inh Th??? Ngoc Di???p', '123 Bis Ph???m H??ng Qu???n 8 H??? Ch?? Minh      ', '0190919008', '123456'),
(1111, 'T', 'Nguy???n V??n To??n', 'T??n Ph?? ', '01630167654', '123456'),
(1501, 'S', 'Tr???n Th??? Ng???c S???', '125 Nguy???n Tri Ph????ng Qu???n 10\r\n  ', '05167654156', '123456'),
(6006, 'H', 'T??? Minh T??m', '84/2 B??nh H??ng H??a B??nh T??n   ', '0846965632', '123456789'),
(9001, 'CN', 'Nguy???n Th??? Ngh???', '65 Tr???n H??ng ?????o Qu???n 5  ', '0987654336', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `hocky`
--

CREATE TABLE `hocky` (
  `MaHocKy` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `TenHocKy` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `HeSoHK` int(1) NOT NULL,
  `NamHoc` char(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hocky`
--

INSERT INTO `hocky` (`MaHocKy`, `TenHocKy`, `HeSoHK`, `NamHoc`) VALUES
('12016', 'H???c K??? 1', 1, '2016-2017'),
('22016', 'H???c K??? 2', 2, '2016-2017');

-- --------------------------------------------------------

--
-- Table structure for table `hocsinh`
--

CREATE TABLE `hocsinh` (
  `MaHS` int(6) NOT NULL,
  `MaLopHoc` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenHS` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `GioiTinh` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `noisinh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dantoc` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `hotencha` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hotenme` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `passwordhs` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hocsinh`
--

INSERT INTO `hocsinh` (`MaHS`, `MaLopHoc`, `TenHS`, `GioiTinh`, `NgaySinh`, `noisinh`, `dantoc`, `hotencha`, `hotenme`, `passwordhs`) VALUES
(100101, '10A1', 'Nguy???n T???n D??ng', 'Nam', '2000-11-06', 'C?? Mau', 'Kinh', 'Nguy???n T???n Ph??c', 'Tr???n Th??? Ph?????ng', '123456'),
(100102, '10A1', 'Nguy???n Th??? Ph????ng Anh', 'N???', '2000-11-02', 'B??nh Ph?????c', 'Kinh', 'Nguy???n V??n Anh', 'Nguy???n Th??? Anh', '100102'),
(100103, '10A1', 'Tr???nh H???u Huy', 'N???', '2000-11-01', 'Th??i Nguy??n', 'Kinh', 'Tr???nh H???u D???ng', 'Nguy???n Th??? S??', '100103'),
(100104, '10A2', 'Tr???n Thi???n Nh??n', 'Nam', '2000-11-23', 'Tr?? Vinh', 'Kinh', 'Tr???n Minh Chi???n', 'Nguy???n Th??? Kim Ng??n', '123456'),
(100105, '10A2', 'L????ng Xu??n Tr?????ng', 'Nam', '2001-11-09', 'Tuy??n Quang', 'Kinh', 'L????ng B??ch Chi???n', 'L?? B??ch Ni??n', '100105'),
(100107, '10A1', 'Nguy???n Th??? B??', 'N???', '2000-12-06', 'H???i Ph??ng', 'Kinh', 'Nguy???n V??n Kh??', 'Tr???n Th??? Gi???i', '100107'),
(100111, '10A1', 'Nguy???n Tr????ng Phong', 'Nam', '1999-12-05', 'Th??i B??nh', 'Kinh', 'Nguy???n Tu???n T??', 'Mai Th??? Th???c', '123456'),
(100201, '10A2', 'Nguy???n C??ng Ph?????ng', 'Nam', '2001-12-26', 'Ngh??? An', 'kinh', 'Nguy???n C??ng An', 'B??i Minh T??m', '100201'),
(100505, '10A1', 'Tr???nh V??n T??n', 'Nam', '1999-02-22', '??i???n Bi??n Ph???', 'Kinh', 'Tr???nh V??n Th???t', 'Nguy???n Th??? H???c', '123456'),
(100605, '10A3', 'Nguy???n Tr????ng Phong', 'Nam', '1999-12-05', 'Th??i B??nh', 'Kinh', 'Tr???nh H???u D???ng', 'Mai Th??? Th???c', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `lophoc`
--

CREATE TABLE `lophoc` (
  `MaLopHoc` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Tenlophoc` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `KhoiHoc` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lophoc`
--

INSERT INTO `lophoc` (`MaLopHoc`, `Tenlophoc`, `KhoiHoc`) VALUES
('10A1', '10A1', '10'),
('10A2', '10A2', '10'),
('10A3', '10A3', '10'),
('10A4', '10A4', '10'),
('10A5', '10A5', '10'),
('10A6', '10A6', '10'),
('10A7', '10A7', '10');

-- --------------------------------------------------------

--
-- Table structure for table `monhoc`
--

CREATE TABLE `monhoc` (
  `MaMonHoc` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `TenMonHoc` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `SoTiet` int(20) NOT NULL,
  `HeSoMonHoc` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `monhoc`
--

INSERT INTO `monhoc` (`MaMonHoc`, `TenMonHoc`, `SoTiet`, `HeSoMonHoc`) VALUES
('A', 'Ti???ng Anh', 105, 1),
('CN', 'C??ng Ngh???', 50, 1),
('GD', 'Gi??o D???c C??ng D??n', 50, 1),
('H', 'H??a H???c', 70, 1),
('S', 'L???ch S???', 100, 1),
('T', 'To??n', 100, 2),
('Ti', 'Tin H???c', 100, 1),
('V', 'V??n', 120, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(10) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `level`) VALUES
(1, 'nhan', '123456789', 1),
(3, 'nhan1234', '123456789', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `day`
--
ALTER TABLE `day`
  ADD PRIMARY KEY (`MaDayHoc`),
  ADD KEY `fk_day_monhoc` (`MaMonHoc`),
  ADD KEY `fk_day_gv` (`Magv`),
  ADD KEY `fk_day_hocky` (`MaHocKy`),
  ADD KEY `fk_day_lophoc` (`MaLopHoc`);

--
-- Indexes for table `diem`
--
ALTER TABLE `diem`
  ADD PRIMARY KEY (`MaDiem`),
  ADD KEY `fk_diem_mahk` (`MaHocKy`),
  ADD KEY `fk_diem_monhoc` (`MaMonHoc`),
  ADD KEY `fk_diem_hocsinh` (`MaHS`),
  ADD KEY `MaLopHoc` (`MaLopHoc`);

--
-- Indexes for table `giaovien`
--
ALTER TABLE `giaovien`
  ADD PRIMARY KEY (`Magv`),
  ADD UNIQUE KEY `SDT` (`SDT`),
  ADD KEY `fk_gv_mh` (`MaMonHoc`);

--
-- Indexes for table `hocky`
--
ALTER TABLE `hocky`
  ADD PRIMARY KEY (`MaHocKy`);

--
-- Indexes for table `hocsinh`
--
ALTER TABLE `hocsinh`
  ADD PRIMARY KEY (`MaHS`),
  ADD KEY `fk_hs_lh` (`MaLopHoc`);

--
-- Indexes for table `lophoc`
--
ALTER TABLE `lophoc`
  ADD PRIMARY KEY (`MaLopHoc`);

--
-- Indexes for table `monhoc`
--
ALTER TABLE `monhoc`
  ADD PRIMARY KEY (`MaMonHoc`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diem`
--
ALTER TABLE `diem`
  MODIFY `MaDiem` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `day`
--
ALTER TABLE `day`
  ADD CONSTRAINT `fk_day_gv` FOREIGN KEY (`Magv`) REFERENCES `giaovien` (`Magv`),
  ADD CONSTRAINT `fk_day_hocky` FOREIGN KEY (`MaHocKy`) REFERENCES `hocky` (`MaHocKy`),
  ADD CONSTRAINT `fk_day_lophoc` FOREIGN KEY (`MaLopHoc`) REFERENCES `lophoc` (`MaLopHoc`),
  ADD CONSTRAINT `fk_day_monhoc` FOREIGN KEY (`MaMonHoc`) REFERENCES `monhoc` (`MaMonHoc`);

--
-- Constraints for table `diem`
--
ALTER TABLE `diem`
  ADD CONSTRAINT `diem_ibfk_1` FOREIGN KEY (`MaLopHoc`) REFERENCES `lophoc` (`MaLopHoc`),
  ADD CONSTRAINT `fk_diem_hocsinh` FOREIGN KEY (`MaHS`) REFERENCES `hocsinh` (`MaHS`),
  ADD CONSTRAINT `fk_diem_mahk` FOREIGN KEY (`MaHocKy`) REFERENCES `hocky` (`MaHocKy`),
  ADD CONSTRAINT `fk_diem_monhoc` FOREIGN KEY (`MaMonHoc`) REFERENCES `monhoc` (`MaMonHoc`);

--
-- Constraints for table `giaovien`
--
ALTER TABLE `giaovien`
  ADD CONSTRAINT `fk_gv_mh` FOREIGN KEY (`MaMonHoc`) REFERENCES `monhoc` (`MaMonHoc`);

--
-- Constraints for table `hocsinh`
--
ALTER TABLE `hocsinh`
  ADD CONSTRAINT `fk_hs_lh` FOREIGN KEY (`MaLopHoc`) REFERENCES `lophoc` (`MaLopHoc`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
