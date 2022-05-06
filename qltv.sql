-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 06, 2022 lúc 04:10 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.5

START TRANSACTION;
SET time_zone = "+00:00";

--
-- Cơ sở dữ liệu: `qltv`
--
CREATE DATABASE IF NOT EXISTS `qltv` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE qltv;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietphieumuon`
--

CREATE TABLE `chitietphieumuon` (
  `MaCTPM` int(11) NOT NULL,
  `MaPM` int(11) NOT NULL,
  `MaSach` int(11) NOT NULL,
  `NgayTra` varchar(244) NOT NULL,
  `GhiChu` varchar(255) NOT NULL,
  `TrangThai` int(1) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietphieunhap`
--

CREATE TABLE `chitietphieunhap` (
  `MaCTPN` int(11) NOT NULL,
  `MaPN` int(11) NOT NULL,
  `MaSach` int(11) NOT NULL,
  `Gia` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `ThanhTien` int(11) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `docgia`
--

CREATE TABLE `docgia` (
  `madocgia` int(11) NOT NULL,
  `tendocgia` varchar(255) NOT NULL,
  `gioitinh` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `sdt` varchar(255) NOT NULL,
  `TrangThai` int(1) NOT NULL,
  `msv` varchar(11) DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kesach`
--

CREATE TABLE `kesach` (
  `MaKe` int(11) NOT NULL,
  `ViTri` varchar(255) DEFAULT NULL,
  `TrangThai` int(1) NOT NULL
) ;

--
-- Đang đổ dữ liệu cho bảng `kesach`
--

INSERT INTO `kesach` (`MaKe`, `ViTri`, `TrangThai`) VALUES
(13, 'Kệ 1', 1),
(14, 'Kệ 2', 1),
(15, 'Kệ 3', 1),
(16, 'Kệ 4', 1),
(17, 'Kệ 5', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai`
--

CREATE TABLE `loai` (
  `MaLoai` int(11) NOT NULL,
  `TenLoai` varchar(255) NOT NULL,
  `TrangThai` int(1) NOT NULL
) ;

--
-- Đang đổ dữ liệu cho bảng `loai`
--

INSERT INTO `loai` (`MaLoai`, `TenLoai`, `TrangThai`) VALUES
(12, 'CNTT', 1),
(13, 'Khoa Học', 1),
(14, 'Truyện Tranh', 1),
(15, 'Truyện cổ tích', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `MaNCC` int(11) NOT NULL,
  `TenNCC` varchar(255) NOT NULL,
  `TrangThai` int(1) NOT NULL
) ;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`MaNCC`, `TenNCC`, `TrangThai`) VALUES
(1, 'Võ Hoàng Kiệt', 1),
(2, 'Ngô Phú Khang2', 1),
(3, 'Nguyễn Văn Cừ', 1),
(4, 'Fahasa', 1),
(6, 'Huỳnh Hoàng Phúc', 0),
(7, 'Nguyễn Đình Trí', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNV` int(11) NOT NULL,
  `TenNV` varchar(255) NOT NULL,
  `NamSinh` varchar(11) NOT NULL,
  `GioiTinh` varchar(255) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `Sdt` varchar(255) NOT NULL,
  `TrangThai` int(1) NOT NULL
) ;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`MaNV`, `TenNV`, `NamSinh`, `GioiTinh`, `DiaChi`, `Sdt`, `TrangThai`) VALUES
(35, 'Nhân Viên 1', '2001', 'Nam', 'Long An', '0396527908', 0),
(36, 'Nhân Viên 2', '2002', 'Nam', 'Cà Mau', '0396527908', 1),
(37, 'Nhân Viên 3', '2000', 'Nữ', 'Bến Tre', '0396527908', 1),
(38, 'Nhân Viên 1', '2001', 'Nam', 'Long An', '0396527908', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhaxuatban`
--

CREATE TABLE `nhaxuatban` (
  `MaNXB` int(11) NOT NULL,
  `TenNXB` varchar(255) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `Sdt` varchar(255) NOT NULL,
  `TrangThai` int(1) NOT NULL
) ;

--
-- Đang đổ dữ liệu cho bảng `nhaxuatban`
--

INSERT INTO `nhaxuatban` (`MaNXB`, `TenNXB`, `DiaChi`, `Sdt`, `TrangThai`) VALUES
(13, 'Nhà Xuất Bản Số1 ', 'Hà Nội', '0396527908', 1),
(14, 'Nhà Xuất Bản Số 2', 'Hà Nội', '0396527909', 1),
(15, 'Nhà Xuất Bản Số 3', 'Lào Cai', '0396527910', 1),
(16, 'Nhà Xuất Bản Số 4', 'Japan', '0396527911', 1),
(17, 'Nhà Xuất Bản Số 5', 'Hồ Chí Minh', '0396527912', 0),
(18, 'Nhà Xuất Bản Số 6', 'Hồ Chí Minh', '0396527913', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phat`
--

CREATE TABLE `phat` (
  `mapp` int(11) NOT NULL,
  `mapm` int(11) NOT NULL,
  `lydo` varchar(255) NOT NULL,
  `tien` varchar(255) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieumuon`
--

CREATE TABLE `phieumuon` (
  `MaPM` int(11) NOT NULL,
  `MaNV` int(11) NOT NULL,
  `MaDocGia` int(11) NOT NULL,
  `NgayMuon` varchar(255) NOT NULL,
  `TinhTrang` varchar(255) NOT NULL,
  `TrangThai` int(1) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

CREATE TABLE `phieunhap` (
  `MaPhieuNhap` int(11) NOT NULL,
  `MaNCC` int(11) NOT NULL,
  `MaNV` int(11) NOT NULL,
  `NgayNhap` varchar(255) NOT NULL,
  `TrangThai` int(1) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sach`
--

CREATE TABLE `sach` (
  `MaSach` int(11) NOT NULL,
  `TenSach` varchar(255) NOT NULL,
  `MaLoai` int(11) NOT NULL,
  `MaNXB` int(11) NOT NULL,
  `MaTacGia` int(11) NOT NULL,
  `NamXB` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `Make` int(11) NOT NULL,
  `HinhAnh` text NOT NULL,
  `TrangThai` varchar(1) DEFAULT NULL
) ;

--
-- Đang đổ dữ liệu cho bảng `sach`
--

INSERT INTO `sach` (`MaSach`, `TenSach`, `MaLoai`, `MaNXB`, `MaTacGia`, `NamXB`, `SoLuong`, `Make`, `HinhAnh`, `TrangThai`) VALUES
(27, 'Quyển Sách 1', 13, 14, 15, 2021, 16, 13, 'haihuoc.jpg', '1'),
(28, 'Quyển Sách 2', 12, 15, 16, 2020, 30, 14, '8936067597936.jpg', '1'),
(29, 'Quyển Sách 3', 14, 16, 17, 2019, 20, 13, '8936067597936.jpg', '1'),
(30, 'Quyển Sách 4', 15, 18, 16, 2019, 10, 13, 'macbiet.jpg', '1'),
(31, 'Quyển Sách 5', 14, 16, 16, 2019, 9, 13, 'biamem.jpg', '1'),
(32, 'Quyển Sách 6', 14, 16, 16, 2019, 9, 13, 'biaao_bithuongnguocdongthanhsong_3.jpg', '1'),
(33, 'Quyển Sách 1', 12, 13, 14, 2021, 16, 13, 'haihuoc.jpg', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tacgia`
--

CREATE TABLE `tacgia` (
  `MaTacGia` int(11) NOT NULL,
  `TenTacGia` varchar(255) NOT NULL,
  `NamSinh` varchar(4) NOT NULL,
  `QueQuan` varchar(255) NOT NULL,
  `TrangThai` int(1) NOT NULL
) ;

--
-- Đang đổ dữ liệu cho bảng `tacgia`
--

INSERT INTO `tacgia` (`MaTacGia`, `TenTacGia`, `NamSinh`, `QueQuan`, `TrangThai`) VALUES
(14, 'Tác Giả 1', '2001', 'Long An', 1),
(15, 'Tác Giả 2', '2002', 'Long An', 1),
(16, 'Tác Giả 3', '2000', 'Long An', 1),
(17, 'Tác Giả 4', '1999', 'Long An', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `matk` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `quyen` int(11) NOT NULL
) ;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`matk`, `username`, `password`, `quyen`) VALUES
(1, 'admin', 'admin ', 0),
(35, 'nv1', 'lqlam2102', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thethuvien`
--

CREATE TABLE `thethuvien` (
  `MaTheThuVien` int(11) NOT NULL,
  `NgayBatDau` varchar(255) NOT NULL,
  `NgayKetThuc` varchar(255) NOT NULL,
  `GhiChu` varchar(255) DEFAULT NULL
) ;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietphieumuon`
--
ALTER TABLE `chitietphieumuon`
  ADD PRIMARY KEY (`MaCTPM`),
  ADD KEY `MaPM` (`MaPM`),
  ADD KEY `MaSach` (`MaSach`);

--
-- Chỉ mục cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD PRIMARY KEY (`MaCTPN`),
  ADD KEY `MaSach` (`MaSach`),
  ADD KEY `MaPN` (`MaPN`);

--
-- Chỉ mục cho bảng `docgia`
--
ALTER TABLE `docgia`
  ADD PRIMARY KEY (`madocgia`);

--
-- Chỉ mục cho bảng `kesach`
--
ALTER TABLE `kesach`
  ADD PRIMARY KEY (`MaKe`);

--
-- Chỉ mục cho bảng `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`MaLoai`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`MaNCC`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNV`);

--
-- Chỉ mục cho bảng `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  ADD PRIMARY KEY (`MaNXB`);

--
-- Chỉ mục cho bảng `phat`
--
ALTER TABLE `phat`
  ADD PRIMARY KEY (`mapp`),
  ADD KEY `mapm` (`mapm`);

--
-- Chỉ mục cho bảng `phieumuon`
--
ALTER TABLE `phieumuon`
  ADD PRIMARY KEY (`MaPM`),
  ADD KEY `MaNV` (`MaNV`),
  ADD KEY `MaDocGia` (`MaDocGia`);

--
-- Chỉ mục cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`MaPhieuNhap`),
  ADD KEY `MaNCC` (`MaNCC`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Chỉ mục cho bảng `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`MaSach`),
  ADD KEY `MaLoai` (`MaLoai`),
  ADD KEY `MaNXB` (`MaNXB`),
  ADD KEY `MaTacGia` (`MaTacGia`),
  ADD KEY `Make` (`Make`);

--
-- Chỉ mục cho bảng `tacgia`
--
ALTER TABLE `tacgia`
  ADD PRIMARY KEY (`MaTacGia`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`matk`);

--
-- Chỉ mục cho bảng `thethuvien`
--
ALTER TABLE `thethuvien`
  ADD PRIMARY KEY (`MaTheThuVien`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietphieumuon`
--
ALTER TABLE `chitietphieumuon`
  MODIFY `MaCTPM` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  MODIFY `MaCTPN` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `docgia`
--
ALTER TABLE `docgia`
  MODIFY `madocgia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `kesach`
--
ALTER TABLE `kesach`
  MODIFY `MaKe` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `loai`
--
ALTER TABLE `loai`
  MODIFY `MaLoai` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `MaNCC` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `MaNV` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  MODIFY `MaNXB` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phat`
--
ALTER TABLE `phat`
  MODIFY `mapp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phieumuon`
--
ALTER TABLE `phieumuon`
  MODIFY `MaPM` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `MaPhieuNhap` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sach`
--
ALTER TABLE `sach`
  MODIFY `MaSach` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tacgia`
--
ALTER TABLE `tacgia`
  MODIFY `MaTacGia` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietphieumuon`
--
ALTER TABLE `chitietphieumuon`
  ADD CONSTRAINT `chitietphieumuon_ibfk_1` FOREIGN KEY (`MaPM`) REFERENCES `phieumuon` (`MaPM`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietphieumuon_ibfk_2` FOREIGN KEY (`MaSach`) REFERENCES `sach` (`MaSach`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD CONSTRAINT `chitietphieunhap_ibfk_1` FOREIGN KEY (`MaSach`) REFERENCES `sach` (`MaSach`),
  ADD CONSTRAINT `chitietphieunhap_ibfk_2` FOREIGN KEY (`MaPN`) REFERENCES `phieunhap` (`MaPhieuNhap`);

--
-- Các ràng buộc cho bảng `phat`
--
ALTER TABLE `phat`
  ADD CONSTRAINT `phat_ibfk_1` FOREIGN KEY (`mapm`) REFERENCES `phieumuon` (`MaPM`);

--
-- Các ràng buộc cho bảng `phieumuon`
--
ALTER TABLE `phieumuon`
  ADD CONSTRAINT `phieumuon_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`),
  ADD CONSTRAINT `phieumuon_ibfk_2` FOREIGN KEY (`MaDocGia`) REFERENCES `docgia` (`madocgia`);

--
-- Các ràng buộc cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `phieunhap_ibfk_1` FOREIGN KEY (`MaNCC`) REFERENCES `nhacungcap` (`MaNCC`),
  ADD CONSTRAINT `phieunhap_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`);

--
-- Các ràng buộc cho bảng `sach`
--
ALTER TABLE `sach`
  ADD CONSTRAINT `sach_ibfk_1` FOREIGN KEY (`MaLoai`) REFERENCES `loai` (`MaLoai`),
  ADD CONSTRAINT `sach_ibfk_2` FOREIGN KEY (`MaNXB`) REFERENCES `nhaxuatban` (`MaNXB`),
  ADD CONSTRAINT `sach_ibfk_3` FOREIGN KEY (`MaTacGia`) REFERENCES `tacgia` (`MaTacGia`),
  ADD CONSTRAINT `sach_ibfk_4` FOREIGN KEY (`Make`) REFERENCES `kesach` (`MaKe`);

--
-- Các ràng buộc cho bảng `thethuvien`
--
ALTER TABLE `thethuvien`
  ADD CONSTRAINT `thethuvien_ibfk_1` FOREIGN KEY (`MaTheThuVien`) REFERENCES `docgia` (`madocgia`);
COMMIT;
