-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2025 at 05:22 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_persediaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `KodeBarang` int(50) NOT NULL,
  `Nama` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `HargaBeli` int(11) DEFAULT NULL,
  `HargaJual` int(11) DEFAULT NULL,
  `Stok` int(11) DEFAULT NULL,
  `Satuan` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Petugas` varchar(50) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang_keluar`
--

CREATE TABLE `tb_barang_keluar` (
  `Id` int(11) NOT NULL,
  `Tanggal` datetime DEFAULT NULL,
  `KodePelanggan` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `KodeBarang` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Nama` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `Jumlah` int(11) DEFAULT NULL,
  `Satuan` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Petugas` varchar(50) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang_masuk`
--

CREATE TABLE `tb_barang_masuk` (
  `Id` int(11) NOT NULL,
  `Tanggal` datetime DEFAULT NULL,
  `KodeSupplier` varchar(50) DEFAULT NULL,
  `KodeBarang` varchar(50) DEFAULT NULL,
  `Nama` varchar(250) DEFAULT NULL,
  `Jumlah` int(11) DEFAULT NULL,
  `Satuan` varchar(50) DEFAULT NULL,
  `Petugas` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `KodePelanggan` varchar(50) CHARACTER SET latin1 NOT NULL,
  `Nama` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `Alamat` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Telp` varchar(25) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_petugas`
--

CREATE TABLE `tb_petugas` (
  `KodePetugas` varchar(50) CHARACTER SET latin1 NOT NULL,
  `Nama` varchar(250) CHARACTER SET latin1 NOT NULL,
  `Jabatan` varchar(250) CHARACTER SET latin1 NOT NULL,
  `Password` varchar(10) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_supplier`
--

CREATE TABLE `tb_supplier` (
  `KodeSupplier` int(50) NOT NULL,
  `Nama` int(250) DEFAULT NULL,
  `Alamat` int(250) DEFAULT NULL,
  `Telp` int(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
