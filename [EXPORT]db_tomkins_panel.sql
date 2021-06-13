-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 13, 2021 at 09:22 PM
-- Server version: 8.0.25-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tomkins_panel`
--

-- --------------------------------------------------------

--
-- Table structure for table `Bagian_Gudang`
--

CREATE TABLE `Bagian_Gudang` (
  `username` varchar(11) NOT NULL,
  `password` varchar(11) NOT NULL,
  `nama_staff_gudang` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Bagian_Gudang`
--

INSERT INTO `Bagian_Gudang` (`username`, `password`, `nama_staff_gudang`) VALUES
('GUDA001', '123abc123', 'Anindya'),
('GUDA002', 'qwerty12345', 'Prameswari'),
('GUDA003', '123yeey23', 'Putri');

-- --------------------------------------------------------

--
-- Table structure for table `Bagian_Kasir`
--

CREATE TABLE `Bagian_Kasir` (
  `username` varchar(11) NOT NULL,
  `password` varchar(11) NOT NULL,
  `nama_kasir` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Bagian_Kasir`
--

INSERT INTO `Bagian_Kasir` (`username`, `password`, `nama_kasir`) VALUES
('KASI001', '123abc123', 'Muhammad'),
('KASI002', 'qwerty12345', 'Rezki'),
('KASI003', '123yeey23', 'Ananda');

-- --------------------------------------------------------

--
-- Table structure for table `Bagian_Keuangan`
--

CREATE TABLE `Bagian_Keuangan` (
  `username` varchar(11) NOT NULL,
  `password` varchar(11) NOT NULL,
  `nama_staff_keuangan` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Bagian_Keuangan`
--

INSERT INTO `Bagian_Keuangan` (`username`, `password`, `nama_staff_keuangan`) VALUES
('UANG001', '123abc123', 'Anindya'),
('UANG002', 'qwerty12345', 'Prameswari'),
('UANG003', '123yeey23', 'Putri');

-- --------------------------------------------------------

--
-- Table structure for table `Bagian_Pembelian`
--

CREATE TABLE `Bagian_Pembelian` (
  `username` varchar(11) NOT NULL,
  `password` varchar(11) NOT NULL,
  `nama_staff_pembelian` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Bagian_Pembelian`
--

INSERT INTO `Bagian_Pembelian` (`username`, `password`, `nama_staff_pembelian`) VALUES
('PEMB001', '123abc123', 'Dicky'),
('PEMB002', 'qwerty12345', 'Adriansyah'),
('PEMB003', '123yeey23', 'DA');

-- --------------------------------------------------------

--
-- Table structure for table `Bahan_Baku`
--

CREATE TABLE `Bahan_Baku` (
  `id_bahan_baku` varchar(11) NOT NULL,
  `nama_bahan_baku` varchar(11) NOT NULL,
  `kategori_bahan_baku` varchar(25) NOT NULL,
  `jumlah_stok` int NOT NULL,
  `username_ppic` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Bahan_Baku`
--

INSERT INTO `Bahan_Baku` (`id_bahan_baku`, `nama_bahan_baku`, `kategori_bahan_baku`, `jumlah_stok`, `username_ppic`) VALUES
('BB0001', 'Super', 'Bahan Baku Jadi', 1000, 'PPIC001'),
('BB0002', 'Tounge', 'Bahan Baku Belum Jadi', 2300, 'PPIC001'),
('BB0003', 'Eyestray', 'Bahan Baku Jadi', 23424, 'PPIC001'),
('BB0004', 'Shoe Laces', 'Bahan Baku Belum Jadi', 24341, 'PPIC001'),
('BB0005', 'Counter', 'Bahan Baku Jadi', 5321, 'PPIC001'),
('BB0006', 'Insole', 'Bahan Baku Belum Jadi', 2000, 'PPIC001'),
('BB0007', 'Midsole', 'Bahan Baku Jadi', 100, 'PPIC001'),
('BB0008', 'Outsole', 'Bahan Baku Belum Jadi', 50, 'PPIC001'),
('BB0009', 'Toecap', 'Bahan Baku Jadi', 1, 'PPIC001');

-- --------------------------------------------------------

--
-- Table structure for table `Delivery_Order`
--

CREATE TABLE `Delivery_Order` (
  `no_do` varchar(11) NOT NULL,
  `id_sepatu` varchar(11) NOT NULL,
  `id_warehouse` varchar(11) NOT NULL,
  `tanggal_surat` date NOT NULL,
  `nama_sepatu` varchar(24) NOT NULL,
  `warna_sepatu` varchar(11) NOT NULL,
  `ukuran` int NOT NULL,
  `total_qty` int NOT NULL,
  `harga` int NOT NULL,
  `username_staff_sales` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Delivery_Order`
--

INSERT INTO `Delivery_Order` (`no_do`, `id_sepatu`, `id_warehouse`, `tanggal_surat`, `nama_sepatu`, `warna_sepatu`, `ukuran`, `total_qty`, `harga`, `username_staff_sales`) VALUES
('DO001', 'SE0001', 'WH001', '2021-06-23', 'Sepatu A', 'Putih', 40, 100, 200000, 'SALE001'),
('DO002', 'SE0002', 'WH002', '2021-05-12', 'Sepatu B', 'Warna', 38, 80, 300000, 'SALE002'),
('DO003', 'SE0003', 'WH003', '2021-06-30', 'Sepatu C', 'Merah', 42, 490, 400000, 'SALE001'),
('DO004', 'SE0004', 'WH004', '2021-01-01', 'Sepatu D', 'Tosa', 39, 565, 100000, 'SALE002');

-- --------------------------------------------------------

--
-- Table structure for table `Laporan_Pengiriman`
--

CREATE TABLE `Laporan_Pengiriman` (
  `id_laporan_pengiriman` varchar(11) NOT NULL,
  `no_do` varchar(11) NOT NULL,
  `lokasi` varchar(25) NOT NULL,
  `jenis_cabang` varchar(25) NOT NULL,
  `username_manager` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Laporan_Pengiriman`
--

INSERT INTO `Laporan_Pengiriman` (`id_laporan_pengiriman`, `no_do`, `lokasi`, `jenis_cabang`, `username_manager`) VALUES
('LPI001', 'DO001', 'Papar', 'Counter', 'MANA002'),
('LPI002', 'DO002', 'Kras', 'Counter', 'MANA001'),
('LPI003', 'DO003', 'Ngajuk', 'Counter', 'MANA001'),
('LPI004', 'DO004', 'Primbon', 'Counter', 'MANA003');

-- --------------------------------------------------------

--
-- Table structure for table `Laporan_Penjualan`
--

CREATE TABLE `Laporan_Penjualan` (
  `id_laporan_penjualan` varchar(11) NOT NULL,
  `id_sales_order` varchar(11) NOT NULL,
  `lokasi` varchar(25) NOT NULL,
  `jenis_cabang` varchar(25) NOT NULL,
  `username_staff_keuangan` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Laporan_Penjualan`
--

INSERT INTO `Laporan_Penjualan` (`id_laporan_penjualan`, `id_sales_order`, `lokasi`, `jenis_cabang`, `username_staff_keuangan`) VALUES
('LP001', 'SO001', 'Papar', 'Counter', 'UANG001'),
('LP002', 'SO002', 'Kras', 'Counter', 'UANG002'),
('LP003', 'SO003', 'Ngajuk', 'Counter', 'UANG003'),
('LP004', 'SO004', 'Primbon', 'Counter', 'UANG001');

-- --------------------------------------------------------

--
-- Table structure for table `Laporan_Stok`
--

CREATE TABLE `Laporan_Stok` (
  `id_laporan_stok` varchar(11) NOT NULL,
  `username_spgspb` varchar(11) NOT NULL,
  `id_sepatu` varchar(11) NOT NULL,
  `qty` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Laporan_Stok`
--

INSERT INTO `Laporan_Stok` (`id_laporan_stok`, `username_spgspb`, `id_sepatu`, `qty`) VALUES
('LS001', 'PGPB001', 'SE0002', 5),
('LS002', 'PGPB003', 'SE0005', 3),
('LS003', 'PGPB002', 'SE0001', 1),
('LS004', 'PGPB001', 'SE0004', 3),
('LS005', 'PGPB002', 'SE0003', 11);

-- --------------------------------------------------------

--
-- Table structure for table `Manager_DCMDS`
--

CREATE TABLE `Manager_DCMDS` (
  `username` varchar(11) NOT NULL,
  `password` varchar(11) NOT NULL,
  `nama_manager` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Manager_DCMDS`
--

INSERT INTO `Manager_DCMDS` (`username`, `password`, `nama_manager`) VALUES
('MANA001', '123abc123', 'Dicky'),
('MANA002', 'qwerty12345', 'Adriansyah'),
('MANA003', '123yeey23', 'DA');

-- --------------------------------------------------------

--
-- Table structure for table `PPIC`
--

CREATE TABLE `PPIC` (
  `username` varchar(11) NOT NULL,
  `password` varchar(11) NOT NULL,
  `nama_ppic` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `PPIC`
--

INSERT INTO `PPIC` (`username`, `password`, `nama_ppic`) VALUES
('PPIC001', '123abc123', 'Muhammad'),
('PPIC002', 'qwerty12345', 'Rezki'),
('PPIC003', '123yeey23', 'Ananda');

-- --------------------------------------------------------

--
-- Table structure for table `Purchase_Order`
--

CREATE TABLE `Purchase_Order` (
  `id_purchase_order` varchar(11) NOT NULL,
  `id_supplier` varchar(11) NOT NULL,
  `id_bahan_baku` varchar(11) NOT NULL,
  `tanggal_surat` date NOT NULL,
  `material_desctiption` text NOT NULL,
  `warna` varchar(11) NOT NULL,
  `unit` int NOT NULL,
  `qty` int NOT NULL,
  `unit_price` int NOT NULL,
  `total_harga` int NOT NULL,
  `username_staff_pembelian` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Purchase_Order`
--

INSERT INTO `Purchase_Order` (`id_purchase_order`, `id_supplier`, `id_bahan_baku`, `tanggal_surat`, `material_desctiption`, `warna`, `unit`, `qty`, `unit_price`, `total_harga`, `username_staff_pembelian`) VALUES
('PO0001', 'AD123', 'BB0001', '2021-01-02', 'Suede', 'Hitam', 2, 5, 200000, 600000, 'PEMB001'),
('PO0002', 'AD123', 'BB0002', '2021-05-05', 'Suede', 'Hitam', 4, 1, 300000, 800000, 'PEMB001'),
('PO0003', 'AD124', 'BB0002', '2021-01-01', 'Kulit', 'Hitam', 5, 3, 400000, 300000, 'PEMB003'),
('PO0004', 'AD124', 'BB0004', '2021-03-12', 'Kanvas', 'Hitam', 1, 2, 500000, 100000, 'PEMB001'),
('PO0005', 'AD123', 'BB0006', '2021-11-01', 'Kanvas', 'Hitam', 3, 4, 600000, 400000, 'PEMB001'),
('PO0006', 'AD124', 'BB0004', '2021-02-04', 'Kulit', 'Hitam', 1, 1, 300000, 600000, 'PEMB003');

-- --------------------------------------------------------

--
-- Table structure for table `Sales`
--

CREATE TABLE `Sales` (
  `username` varchar(11) NOT NULL,
  `password` varchar(11) NOT NULL,
  `nama_sales` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Sales`
--

INSERT INTO `Sales` (`username`, `password`, `nama_sales`) VALUES
('SALE001', '123abc123', 'Dicky'),
('SALE002', 'qwerty12345', 'Adriansyah'),
('SALE003', '123yeey23', 'DA');

-- --------------------------------------------------------

--
-- Table structure for table `Sales_Order`
--

CREATE TABLE `Sales_Order` (
  `id_sales_order` varchar(11) NOT NULL,
  `id_sepatu` varchar(11) NOT NULL,
  `qty` int NOT NULL,
  `harga` int NOT NULL,
  `total_harga` int NOT NULL,
  `username_kasir` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Sales_Order`
--

INSERT INTO `Sales_Order` (`id_sales_order`, `id_sepatu`, `qty`, `harga`, `total_harga`, `username_kasir`) VALUES
('SO001', 'SE0001', 12, 30000, 600000, 'KASI001'),
('SO002', 'SE0002', 10, 10000, 100000, 'KASI003'),
('SO003', 'SE0003', 9, 20000, 180000, 'KASI001'),
('SO004', 'SE0004', 2, 10000, 200000, 'KASI002');

-- --------------------------------------------------------

--
-- Table structure for table `Sepatu`
--

CREATE TABLE `Sepatu` (
  `id_sepatu` varchar(11) NOT NULL,
  `id_bahan_baku` varchar(11) NOT NULL,
  `nama_sepatu` varchar(24) NOT NULL,
  `ukuran` int NOT NULL,
  `warna` varchar(11) NOT NULL,
  `gender` varchar(11) NOT NULL,
  `jenis_sepatu` varchar(11) NOT NULL,
  `qty` int NOT NULL,
  `username_staff_gudang` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Sepatu`
--

INSERT INTO `Sepatu` (`id_sepatu`, `id_bahan_baku`, `nama_sepatu`, `ukuran`, `warna`, `gender`, `jenis_sepatu`, `qty`, `username_staff_gudang`) VALUES
('SE0001', 'BB0006', 'Sepatu A', 40, 'Putih', 'Laki-laki', 'Lari', 1000, 'GUDA001'),
('SE0002', 'BB0005', 'Sepatu B', 38, 'Kuning', 'Laki-laki', 'Futsal', 200, 'GUDA002'),
('SE0003', 'BB0004', 'Sepatu C', 35, 'Merah', 'Perempuan', 'Lari', 4300, 'GUDA003'),
('SE0004', 'BB0003', 'Sepatu D', 45, 'Putih', 'Laki-laki', 'Basket', 1042, 'GUDA001'),
('SE0005', 'BB0002', 'Sepatu E', 31, 'Merah', 'Perempuan', 'Futsal', 4321, 'GUDA002');

-- --------------------------------------------------------

--
-- Table structure for table `SPGSPB`
--

CREATE TABLE `SPGSPB` (
  `username` varchar(11) NOT NULL,
  `password` varchar(11) NOT NULL,
  `nama_spgspb` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `SPGSPB`
--

INSERT INTO `SPGSPB` (`username`, `password`, `nama_spgspb`) VALUES
('PGPB001', '123abc123', 'Muhammad'),
('PGPB002', 'qwerty12345', 'Rezki'),
('PGPB003', '123yeey23', 'Ananda');

-- --------------------------------------------------------

--
-- Table structure for table `Supplier`
--

CREATE TABLE `Supplier` (
  `id_supplier` varchar(11) NOT NULL,
  `nama_supplier` varchar(25) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Supplier`
--

INSERT INTO `Supplier` (`id_supplier`, `nama_supplier`, `alamat`, `no_telp`) VALUES
('AD123', 'PT. Artifa Jaya Indonesia', 'Jl. M.H. Thamrin No.1, Kb. Melati, Kec. Menteng', 2123580001),
('AD124', 'PT. Ploria Indonesia', 'Jalan Metro Pondok Indah Kav. IV, RT.1/RW.16, Pd. Pinang, Kec. Kby. Lama', 2121994828);

-- --------------------------------------------------------

--
-- Table structure for table `Surat_Jalan`
--

CREATE TABLE `Surat_Jalan` (
  `no_surat_jalan` varchar(11) NOT NULL,
  `no_do` varchar(11) NOT NULL,
  `no_transport` varchar(11) NOT NULL,
  `nama_pemilik` varchar(25) NOT NULL,
  `nama_counter` varchar(25) NOT NULL,
  `username_staff_gudang` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Surat_Jalan`
--

INSERT INTO `Surat_Jalan` (`no_surat_jalan`, `no_do`, `no_transport`, `nama_pemilik`, `nama_counter`, `username_staff_gudang`) VALUES
('SU001', 'DO001', 'TR0004', 'Abdul', 'Matahari Kediri', 'GUDA001'),
('SU002', 'DO003', 'TR0003', 'Beth', 'Matahari Magetan', 'GUDA002'),
('SU003', 'DO003', 'TR0001', 'Do', 'Matahari Surabaya', 'GUDA002'),
('SU004', 'DO001', 'TR0002', 'Nin', 'Matahari Tulungagung', 'GUDA003'),
('SU005', 'DO004', 'TR0005', 'Dik', 'Matahari Jember', 'GUDA001');

-- --------------------------------------------------------

--
-- Table structure for table `Transport`
--

CREATE TABLE `Transport` (
  `no_transport` varchar(11) NOT NULL,
  `nama_pengemudi` varchar(25) NOT NULL,
  `no_polisi` varchar(11) NOT NULL,
  `jenis` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Transport`
--

INSERT INTO `Transport` (`no_transport`, `nama_pengemudi`, `no_polisi`, `jenis`) VALUES
('TR0001', 'Budi', 'B 8491 KN', 'Fuso'),
('TR0002', 'Samsul', 'B 8274 PK', 'Tronton'),
('TR0003', 'Jaka', 'B 9814 FT', 'Fuso'),
('TR0004', 'Yudi', 'B 2591 JL', 'Colt Diesel Engkel'),
('TR0005', 'Ilham', 'B 7651 AB', 'Tronton');

-- --------------------------------------------------------

--
-- Table structure for table `Warehouse`
--

CREATE TABLE `Warehouse` (
  `id_warehouse` varchar(11) NOT NULL,
  `nama_owner` varchar(25) NOT NULL,
  `lokasi` varchar(25) NOT NULL,
  `jenis_cabang` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Warehouse`
--

INSERT INTO `Warehouse` (`id_warehouse`, `nama_owner`, `lokasi`, `jenis_cabang`) VALUES
('WH001', 'Shinta', 'Gandaria City', 'Counter'),
('WH002', 'Jojo', 'Kediri', 'Counter'),
('WH003', 'Rezki', 'Magetan', 'Counter'),
('WH004', 'Satrio', 'Bekasi', 'Counter'),
('WH005', 'Ananda', 'Batam', 'Counter'),
('WH006', 'Rohman', 'Bandung', 'Counter');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Bagian_Gudang`
--
ALTER TABLE `Bagian_Gudang`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `Bagian_Kasir`
--
ALTER TABLE `Bagian_Kasir`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `Bagian_Keuangan`
--
ALTER TABLE `Bagian_Keuangan`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `Bagian_Pembelian`
--
ALTER TABLE `Bagian_Pembelian`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `Bahan_Baku`
--
ALTER TABLE `Bahan_Baku`
  ADD PRIMARY KEY (`id_bahan_baku`),
  ADD KEY `fk_bahanbaku_ppic` (`username_ppic`);

--
-- Indexes for table `Delivery_Order`
--
ALTER TABLE `Delivery_Order`
  ADD PRIMARY KEY (`no_do`),
  ADD KEY `fk_deliveryorder_sepatu` (`id_sepatu`),
  ADD KEY `fk_deliveryorder_sales` (`username_staff_sales`),
  ADD KEY `fk_deliveryorder_warehouse` (`id_warehouse`);

--
-- Indexes for table `Laporan_Pengiriman`
--
ALTER TABLE `Laporan_Pengiriman`
  ADD PRIMARY KEY (`id_laporan_pengiriman`),
  ADD KEY `fk_laporanpengiriman_managerdcmds` (`username_manager`),
  ADD KEY `fk_laporanpengiriman_deliveryorder` (`no_do`);

--
-- Indexes for table `Laporan_Penjualan`
--
ALTER TABLE `Laporan_Penjualan`
  ADD PRIMARY KEY (`id_laporan_penjualan`),
  ADD KEY `fk_laporanpenjualan_bagiankeuangan` (`username_staff_keuangan`);

--
-- Indexes for table `Laporan_Stok`
--
ALTER TABLE `Laporan_Stok`
  ADD PRIMARY KEY (`id_laporan_stok`),
  ADD KEY `fk_laporanstok_spgspb` (`username_spgspb`),
  ADD KEY `fk_laporanstok_sepatu` (`id_sepatu`);

--
-- Indexes for table `Manager_DCMDS`
--
ALTER TABLE `Manager_DCMDS`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `PPIC`
--
ALTER TABLE `PPIC`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `Purchase_Order`
--
ALTER TABLE `Purchase_Order`
  ADD PRIMARY KEY (`id_purchase_order`),
  ADD KEY `fk_purchaseorder_supplier` (`id_supplier`),
  ADD KEY `fk_purchaseorder_bahanbaku` (`id_bahan_baku`),
  ADD KEY `fk_purchaseorder_bagianpembelian` (`username_staff_pembelian`);

--
-- Indexes for table `Sales`
--
ALTER TABLE `Sales`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `Sales_Order`
--
ALTER TABLE `Sales_Order`
  ADD PRIMARY KEY (`id_sales_order`),
  ADD KEY `fk_salesorder_sepatu` (`id_sepatu`),
  ADD KEY `fk_salesorder_bagiankasir` (`username_kasir`);

--
-- Indexes for table `Sepatu`
--
ALTER TABLE `Sepatu`
  ADD PRIMARY KEY (`id_sepatu`),
  ADD KEY `fk_sepatu_bahanbaku` (`id_bahan_baku`),
  ADD KEY `fk_sepatu_bagiangudang` (`username_staff_gudang`);

--
-- Indexes for table `SPGSPB`
--
ALTER TABLE `SPGSPB`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `Supplier`
--
ALTER TABLE `Supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `Surat_Jalan`
--
ALTER TABLE `Surat_Jalan`
  ADD PRIMARY KEY (`no_surat_jalan`),
  ADD KEY `fk_suratjalan_bagiangudang` (`username_staff_gudang`),
  ADD KEY `fk_suratjalan_deliveryorder` (`no_do`),
  ADD KEY `fk_suratjalan_transport` (`no_transport`);

--
-- Indexes for table `Transport`
--
ALTER TABLE `Transport`
  ADD PRIMARY KEY (`no_transport`);

--
-- Indexes for table `Warehouse`
--
ALTER TABLE `Warehouse`
  ADD PRIMARY KEY (`id_warehouse`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Bahan_Baku`
--
ALTER TABLE `Bahan_Baku`
  ADD CONSTRAINT `fk_bahanbaku_ppic` FOREIGN KEY (`username_ppic`) REFERENCES `PPIC` (`username`);

--
-- Constraints for table `Delivery_Order`
--
ALTER TABLE `Delivery_Order`
  ADD CONSTRAINT `fk_deliveryorder_sales` FOREIGN KEY (`username_staff_sales`) REFERENCES `Sales` (`username`),
  ADD CONSTRAINT `fk_deliveryorder_sepatu` FOREIGN KEY (`id_sepatu`) REFERENCES `Sepatu` (`id_sepatu`),
  ADD CONSTRAINT `fk_deliveryorder_warehouse` FOREIGN KEY (`id_warehouse`) REFERENCES `Warehouse` (`id_warehouse`);

--
-- Constraints for table `Laporan_Pengiriman`
--
ALTER TABLE `Laporan_Pengiriman`
  ADD CONSTRAINT `fk_laporanpengiriman_deliveryorder` FOREIGN KEY (`no_do`) REFERENCES `Delivery_Order` (`no_do`),
  ADD CONSTRAINT `fk_laporanpengiriman_managerdcmds` FOREIGN KEY (`username_manager`) REFERENCES `Manager_DCMDS` (`username`);

--
-- Constraints for table `Laporan_Penjualan`
--
ALTER TABLE `Laporan_Penjualan`
  ADD CONSTRAINT `fk_laporanpenjualan_bagiankeuangan` FOREIGN KEY (`username_staff_keuangan`) REFERENCES `Bagian_Keuangan` (`username`);

--
-- Constraints for table `Laporan_Stok`
--
ALTER TABLE `Laporan_Stok`
  ADD CONSTRAINT `fk_laporanstok_sepatu` FOREIGN KEY (`id_sepatu`) REFERENCES `Sepatu` (`id_sepatu`),
  ADD CONSTRAINT `fk_laporanstok_spgspb` FOREIGN KEY (`username_spgspb`) REFERENCES `SPGSPB` (`username`);

--
-- Constraints for table `Purchase_Order`
--
ALTER TABLE `Purchase_Order`
  ADD CONSTRAINT `fk_purchaseorder_bagianpembelian` FOREIGN KEY (`username_staff_pembelian`) REFERENCES `Bagian_Pembelian` (`username`),
  ADD CONSTRAINT `fk_purchaseorder_bahanbaku` FOREIGN KEY (`id_bahan_baku`) REFERENCES `Bahan_Baku` (`id_bahan_baku`),
  ADD CONSTRAINT `fk_purchaseorder_supplier` FOREIGN KEY (`id_supplier`) REFERENCES `Supplier` (`id_supplier`);

--
-- Constraints for table `Sales_Order`
--
ALTER TABLE `Sales_Order`
  ADD CONSTRAINT `fk_salesorder_bagiankasir` FOREIGN KEY (`username_kasir`) REFERENCES `Bagian_Kasir` (`username`),
  ADD CONSTRAINT `fk_salesorder_sepatu` FOREIGN KEY (`id_sepatu`) REFERENCES `Sepatu` (`id_sepatu`);

--
-- Constraints for table `Sepatu`
--
ALTER TABLE `Sepatu`
  ADD CONSTRAINT `fk_sepatu_bagiangudang` FOREIGN KEY (`username_staff_gudang`) REFERENCES `Bagian_Gudang` (`username`),
  ADD CONSTRAINT `fk_sepatu_bahanbaku` FOREIGN KEY (`id_bahan_baku`) REFERENCES `Bahan_Baku` (`id_bahan_baku`);

--
-- Constraints for table `Surat_Jalan`
--
ALTER TABLE `Surat_Jalan`
  ADD CONSTRAINT `fk_suratjalan_bagiangudang` FOREIGN KEY (`username_staff_gudang`) REFERENCES `Bagian_Gudang` (`username`),
  ADD CONSTRAINT `fk_suratjalan_deliveryorder` FOREIGN KEY (`no_do`) REFERENCES `Delivery_Order` (`no_do`),
  ADD CONSTRAINT `fk_suratjalan_transport` FOREIGN KEY (`no_transport`) REFERENCES `Transport` (`no_transport`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
