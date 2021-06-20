-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Des 2020 pada 16.10
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pj_percetakan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL,
  `admin_kode` varchar(50) NOT NULL,
  `admin_nama` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_gambar` varchar(255) NOT NULL,
  `admin_tanggal_dibuat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`adminid`, `admin_kode`, `admin_nama`, `admin_password`, `admin_gambar`, `admin_tanggal_dibuat`) VALUES
(2, 'ADM0002', 'Ardhi Ramadhan', '21232f297a57a5a743894a0e4a801fc3', 'admin1562504847.png', '2019-07-07 17:32:09'),
(4, 'ADM0004', 'Sara Doe', '21232f297a57a5a743894a0e4a801fc3', 'admin1562495617.png', '2019-07-07 17:33:37'),
(6, 'ADM0005', 'Zendaya', 'd41d8cd98f00b204e9800998ecf8427e', 'admin1562497737.png', '2019-07-07 18:05:44'),
(14, 'ADM0006', 'indah', '21232f297a57a5a743894a0e4a801fc3', 'admin1606492730.jpg', '2020-11-27 22:56:03'),
(15, 'ADM0007', 'test', '202cb962ac59075b964b07152d234b70', 'admin1606539087.jpg', '2020-11-28 11:51:27'),
(16, 'ADM0008', 'test1', 'b2ca678b4c936f905fb82f2733f5297f', 'admin1606539743.jpg', '2020-11-28 12:02:23'),
(17, 'ADM0009', 'indah', 'b2ca678b4c936f905fb82f2733f5297f', 'admin1606539792.jpg', '2020-11-28 12:03:12'),
(19, 'ADM0010', 'indah', 'b2ca678b4c936f905fb82f2733f5297f', 'admin1606540901.jpg', '2020-11-28 12:21:41'),
(20, 'ADM0011', 'test', 'bcbe3365e6ac95ea2c0343a2395834dd', 'admin1606541448.png', '2020-11-28 12:30:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pesanan`
--

CREATE TABLE `detail_pesanan` (
  `id` int(11) NOT NULL,
  `no_pesanan` varchar(255) NOT NULL,
  `produkid` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `isi_pesan` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `detail_pesanan`
--

INSERT INTO `detail_pesanan` (`id`, `no_pesanan`, `produkid`, `jumlah`, `isi_pesan`, `gambar`, `harga`, `sub_total`) VALUES
(1, 'ORDARD1907100002', '23', 45, 'Desain Lain', 'desain1562705132.jpg', 3500, 157500),
(2, 'ORDARD1907100002', '23', 20, 'Buat Banyak', 'desain1562704951.jpg', 3500, 70000),
(3, 'ORDARD1907100002', '9', 1000, 'Bikin yang rapih', 'desain1562705969.jpg', 1000, 1000000),
(4, 'ORDARD1907100003', '25', 500, 'Biasa aja', 'desain1562710543.jpg', 6000, 3000000),
(5, 'ORDARD1907100003', '12', 2, 'Yang Warna Kuning', 'desain1562707840.jpg', 700, 1400),
(6, 'ORDARD1907100004', '26', 2, 'sad', 'desain1562710719.jpg', 8000, 16000),
(7, 'ORDARD1907100005', '26', 2, 'Keterangan\r\n', 'desain1562725432.jpg', 8000, 16000),
(8, 'ORDARD1907100006', '20', 2, 'Kartu Nama', 'desain1562725518.jpg', 25000, 50000),
(9, 'ORDARD1907100007', '24', 50, 'Kartu 2', 'desain1562725617.jpg', 4000, 200000),
(10, 'ORDARD1907100007', '10', 204, 'Nama Kartu', 'desain1562725601.jpg', 1500, 306000),
(11, 'ORDADM1907100008', '26', 4, 'Warnanya yang jelas yaa', 'desain1562725735.jpg', 8000, 32000),
(12, 'ORDADM1907100008', '18', 2, 'Samain Kaya Desain', 'desain1562703951.jpg', 50000, 100000),
(13, 'ORDADM1907100009', '26', 2, 'asdasda', 'desain1562726388.jpg', 8000, 16000),
(14, 'ORDSAR1907100008', '27', 5000, 'Saya Beli Banyak\r\n', 'desain1562750000.jpg', 500, 2500000),
(15, 'ORDARD2011250009', '21', 2, 'Nama : John', 'desain1562739493.jpg', 30000, 60000),
(16, 'ORDARD2011250009', '27', 3, 'asd', 'desain1562739469.jpg', 500, 1500),
(17, 'ORDIND2011290010', '12', 200, 'gsdgasdybsna', 'desain1606634318.png', 700, 140000),
(18, 'ORDIND2012080011', '26', 100, 'ukuran A4 ya', 'desain1607362047.jpg', 8000, 800000),
(19, 'ORDIND2012080012', '27', 101, 'Test', '', 500, 50500),
(20, 'ORDIND2012080013', '27', 100, 'Cepat', 'desain1607409904.jpg', 500, 50000),
(21, 'ORDIND2012080014', '27', 500, 'New', 'desain1607409749.jpg', 500, 758000),
(22, 'ORDDIM2012080014', '31', 100, 'newwww', 'desain1607410156.jpg', 1001, 258000),
(23, 'ORDDIM2012080015', '27', 100, 'newwww1', 'desain1607410212.jpg', 500, 208000),
(24, 'ORDDIM2012080017', '31', 100, 'test new new', 'desain1607411216.jpg', 1001, 258000),
(25, 'ORDDIM2012080019', '27', 100, 'test 123', 'desain1607411378.jpg', 500, 208000),
(26, 'ORDDIM2012080021', '31', 100, 'Final Cetak DIgital', 'desain1607411477.jpg', 1001, 208000),
(27, 'ORDDIM2012080023', '31', 100, 'Final Cetak Offset', 'desain1607411540.jpg', 1001, 258000),
(28, 'ORDDIM2012080025', '27', 100, 'Final Cetak Undangan Digital', 'desain1607411601.jpg', 500, 158000),
(29, 'ORDDIM2012080027', '27', 100, 'Final Cetak Undangan Offset', 'desain1607411659.jpg', 500, 208000),
(30, 'ORDIND2012080029', '27', 100, 'Order Normal', 'desain1607410949.jpg', 500, 608000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_nama`) VALUES
(1, 'Undangan'),
(2, 'Nota'),
(3, 'Kartu Nama'),
(5, 'Undangan Pernikahan'),
(6, 'Undangan Khitan'),
(7, 'Yasin'),
(8, 'Custom');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `id` int(11) NOT NULL,
  `produkid` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `isi_pesan` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `plg_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `plg_id` varchar(50) NOT NULL,
  `plg_nama` varchar(150) NOT NULL,
  `plg_email` varchar(100) NOT NULL,
  `plg_username` varchar(100) NOT NULL,
  `plg_password` varchar(255) NOT NULL,
  `plg_kelamin` varchar(50) NOT NULL,
  `plg_alamat` text NOT NULL,
  `plg_telepon` varchar(100) NOT NULL,
  `plg_foto` varchar(255) NOT NULL,
  `plg_tanggal_dibuat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`plg_id`, `plg_nama`, `plg_email`, `plg_username`, `plg_password`, `plg_kelamin`, `plg_alamat`, `plg_telepon`, `plg_foto`, `plg_tanggal_dibuat`) VALUES
('PLG1907100002', 'Ardhi Ramadhan', 'ardhiramadhan98@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Laki - Laki', 'Kalimantan Utara,Indonesia', '082113222883s', 'pelanggan1562699153.png', '2019-07-10 01:16:15'),
('PLG1907100003', 'Sarah Doe', 'rmdhan95@gmail.com', 'admin2', 'c84258e9c39059a89ab77d846ddab909', 'Perempuan', 'Jl Cikarang Baratr no 37,Bekasi , Indonesia', '082113222883', 'pelanggan1562696269.png', '2019-07-10 01:17:49'),
('PLG1907100004', 'admin3', 'rmdhan10@gmail.com', 'admin3', '32cacb2f994f6b42183a1300d9a3e8d6', 'Laki - Laki', 'Kalimantan Utara,Indonesia', '082113222883', 'pelanggan1562728239.png', '2019-07-10 01:18:17'),
('PLG2011020005', 'Indah Rizkiani', 'Indahrizkiani.ir67@gmail.com', 'Indah', 'indah', 'Perempuan', 'tambun selatan', '09998099', 'pelanggan1604328523.JPG', '2020-11-02 21:48:43'),
('PLG2011250006', 'indaah', 'indaaaaaah@gmail.com', 'indaah', 'ccfd33a3b12b147b1434d042a6ca8671', 'Perempuan', 'tambun selatan', '09998099', 'pelanggan1606482379.png', '2020-11-25 21:05:24'),
('PLG2011280007', 'Danang', 'danang@gmail.com', '123', '202cb962ac59075b964b07152d234b70', 'Laki - Laki', 'tambun selatan', '09998099', 'pelanggan1606541154.jpg', '2020-11-28 12:25:54'),
('PLG2012080008', 'dims', 'nurulraws@gmail.com', 'dims', '5927205243f12cdc70612cba6dc874fa', 'Laki - Laki', 'jln bima', '08132444444', 'pelanggan1607410102.jpg', '2020-12-08 13:48:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `bayar_id` int(11) NOT NULL,
  `no_pesanan` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `bayar_nominal` int(11) NOT NULL,
  `bayar_gambar` varchar(255) NOT NULL,
  `bayar_tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`bayar_id`, `no_pesanan`, `keterangan`, `bayar_nominal`, `bayar_gambar`, `bayar_tanggal`) VALUES
(1, 'ORDARD1907100004', 'Saya Udh bayar Nich', 16000, 'konfirmasi1562725388.png', '2019-07-10 09:05:26'),
(2, 'ORDARD1907100003', 'Saya Udh bayar Nih wois', 3001400, 'konfirmasi1562724791.png', '2019-07-10 09:13:11'),
(3, 'ORDARD1907100002', 'Bayar Order 02', 1645000, 'konfirmasi1562725295.jpg', '2019-07-10 09:21:35'),
(4, 'ORDARD1907100005', 'Keterang', 16000, 'konfirmasi1562725449.png', '2019-07-10 09:24:09'),
(5, 'ORDADM1907100008', 'Bayar Order', 132000, 'konfirmasi1562726360.jpg', '2019-07-10 09:37:28'),
(6, 'ORDADM1907100009', 'Keterang', 16000, 'konfirmasi1562726712.png', '2019-07-10 09:45:12'),
(7, 'ORDARD2011250009', '', 61500, '', '2020-11-25 20:51:12'),
(8, 'ORDIND2011290010', '', 140000, '', '2020-11-29 14:19:32'),
(9, 'ORDIND2012080012', 'Cepet', 50500, 'konfirmasi1607408885.jpg', '2020-12-08 13:25:23'),
(10, 'ORDIND2012080014', '', 758000, 'konfirmasi1607408596.jpg', '2020-12-08 13:23:16'),
(11, 'ORDDIM2012080014', '', 258000, 'konfirmasi1607410170.jpg', '2020-12-08 13:49:30'),
(12, 'ORDDIM2012080015', '', 208000, 'konfirmasi1607411164.jpg', '2020-12-08 14:06:04'),
(13, 'ORDDIM2012080017', '', 258000, 'konfirmasi1607411229.jpg', '2020-12-08 14:07:09'),
(14, 'ORDDIM2012080019', '', 208000, 'konfirmasi1607411390.jpg', '2020-12-08 14:09:50'),
(15, 'ORDDIM2012080021', '', 208000, 'konfirmasi1607411491.jpg', '2020-12-08 14:11:31'),
(16, 'ORDDIM2012080023', '', 258000, 'konfirmasi1607411553.jpg', '2020-12-08 14:12:33'),
(17, 'ORDDIM2012080025', '', 158000, 'konfirmasi1607411614.jpg', '2020-12-08 14:13:34'),
(18, 'ORDDIM2012080027', '', 208000, 'konfirmasi1607411672.jpg', '2020-12-08 14:14:32'),
(19, 'ORDIND2012080029', '', 608000, 'konfirmasi1607410972.jpg', '2020-12-08 14:02:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `no_pesanan` varchar(255) NOT NULL,
  `tgl_transaksi` datetime NOT NULL,
  `plg_id` varchar(100) NOT NULL,
  `status_pesanan` int(11) NOT NULL,
  `nama_penerima` varchar(200) NOT NULL,
  `alamat` text NOT NULL,
  `notelp` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `grandtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`no_pesanan`, `tgl_transaksi`, `plg_id`, `status_pesanan`, `nama_penerima`, `alamat`, `notelp`, `email`, `grandtotal`) VALUES
('ORDADM1907100008', '2019-07-09 09:35:47', 'PLG1907100003', 4, 'admin2', 'Jl Cikarang Baratr no 37,Bekasi , Indonesia', '082113222883', 'rmdhan95@gmail.com', 132000),
('ORDADM1907100009', '2019-07-08 09:44:12', 'PLG1907100003', 3, 'admin2', 'Jl Cikarang Baratr no 37,Bekasi , Indonesia', '082113222883', 'rmdhan95@gmail.com', 16000),
('ORDARD1907100002', '2019-07-07 04:27:40', 'PLG1907100002', 1, 'Ardhi Ramadhan', 'Kalimantan Utara,Indonesia', '082113222883s', 'ardhiramadhan98@gmail.com', 1645000),
('ORDARD1907100003', '2019-07-04 05:15:49', 'PLG1907100002', 4, 'Ardhi Ramadhan', 'Kalimantan Utara,Indonesia', '082113222883s', 'ardhiramadhan98@gmail.com', 3001400),
('ORDARD1907100005', '2019-07-05 09:23:56', 'PLG1907100002', 2, 'Ardhi Ramadhan', 'Kalimantan Utara,Indonesia', '082113222883s', 'ardhiramadhan98@gmail.com', 16000),
('ORDARD1907100006', '2019-07-06 09:25:21', 'PLG1907100002', 0, 'Ardhi Ramadhan', 'Kalimantan Utara,Indonesia', '082113222883s', 'ardhiramadhan98@gmail.com', 50000),
('ORDARD1907100007', '2019-07-02 09:27:07', 'PLG1907100002', 0, 'Ardhi Ramadhan', 'Kalimantan Utara,Indonesia', '082113222883s', 'ardhiramadhan98@gmail.com', 506000),
('ORDARD2011250009', '2020-11-25 20:50:45', 'PLG1907100002', 1, 'Ardhi Ramadhan', 'Kalimantan Utara,Indonesia', '082113222883s', 'ardhiramadhan98@gmail.com', 61500),
('ORDDIM2012080014', '2020-12-08 13:49:21', 'PLG2012080008', 1, 'dims', 'jln bima', '08132444444', 'nurulraws@gmail.com', 258000),
('ORDDIM2012080015', '2020-12-08 14:05:55', 'PLG2012080008', 1, 'dims', 'jln bima', '08132444444', 'nurulraws@gmail.com', 208000),
('ORDDIM2012080017', '2020-12-08 14:07:01', 'PLG2012080008', 1, 'dims', 'jln bima', '08132444444', 'nurulraws@gmail.com', 258000),
('ORDDIM2012080019', '2020-12-08 14:09:43', 'PLG2012080008', 1, 'dims', 'jln bima', '08132444444', 'nurulraws@gmail.com', 208000),
('ORDDIM2012080021', '2020-12-08 14:11:22', 'PLG2012080008', 1, 'dims', 'jln bima', '08132444444', 'nurulraws@gmail.com', 208000),
('ORDDIM2012080023', '2020-12-08 14:12:25', 'PLG2012080008', 1, 'dims', 'jln bima', '08132444444', 'nurulraws@gmail.com', 258000),
('ORDDIM2012080025', '2020-12-08 14:13:26', 'PLG2012080008', 1, 'dims', 'jln bima', '08132444444', 'nurulraws@gmail.com', 158000),
('ORDDIM2012080027', '2020-12-08 14:14:24', 'PLG2012080008', 1, 'dims', 'jln bima', '08132444444', 'nurulraws@gmail.com', 208000),
('ORDIND2011290010', '2020-11-29 14:18:59', 'PLG2011250006', 5, 'indaah', 'tambun selatan', '09998099', 'indaaaaaah@gmail.com', 140000),
('ORDIND2012080011', '2020-12-08 00:27:42', 'PLG2011250006', 0, 'indaah', 'tambun selatan', '09998099', 'indaaaaaah@gmail.com', 800000),
('ORDIND2012080012', '2020-12-08 13:25:02', 'PLG2011250006', 1, 'indaah', 'tambun selatan', '09998099', 'indaaaaaah@gmail.com', 50500),
('ORDIND2012080013', '2020-12-08 13:49:59', 'PLG2011250006', 0, 'indaah', 'tambun selatan', '09998099', 'indaaaaaah@gmail.com', 50000),
('ORDIND2012080014', '2020-12-08 13:16:55', 'PLG2011250006', 1, 'indaah', 'tambun selatan', '09998099', 'indaaaaaah@gmail.com', 758000),
('ORDIND2012080029', '2020-12-08 14:02:42', 'PLG2011250006', 1, 'indaah', 'tambun selatan', '09998099', 'indaaaaaah@gmail.com', 608000),
('ORDSAR1907100008', '2019-07-03 16:13:26', 'PLG1907100003', 0, 'Sarah Doe', 'Jl Cikarang Baratr no 37,Bekasi , Indonesia', '082113222883', 'rmdhan95@gmail.com', 2500000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `produkid` int(11) NOT NULL,
  `produk_kode` varchar(255) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `produk_nama` varchar(255) NOT NULL,
  `produk_harga` varchar(255) NOT NULL,
  `harga_digital` int(11) NOT NULL,
  `harga_offset` int(11) NOT NULL,
  `min_order` int(11) NOT NULL,
  `satuan_qty` varchar(50) NOT NULL,
  `harga_bahan` varchar(50) NOT NULL,
  `jenis_bahan` varchar(100) NOT NULL,
  `produk_gambar` varchar(255) NOT NULL,
  `produk_berat` varchar(255) NOT NULL,
  `produk_deskripsi` text NOT NULL,
  `produk_status` int(11) NOT NULL,
  `produk_tanggal_dibuat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`produkid`, `produk_kode`, `kategori_id`, `produk_nama`, `produk_harga`, `harga_digital`, `harga_offset`, `min_order`, `satuan_qty`, `harga_bahan`, `jenis_bahan`, `produk_gambar`, `produk_berat`, `produk_deskripsi`, `produk_status`, `produk_tanggal_dibuat`) VALUES
(2, 'PRD1907080002', 2, 'Nota Modern Ukuran 68', '5500', 0, 0, 0, '', '0', '', 'admin1562603035.jpg', '49', 'Keterangan Nota', 0, '2019-07-08 23:23:55'),
(3, 'PRD1907080003', 2, 'Nota Modern Ukuran 90', '4500', 0, 0, 0, '', '0', '', 'admin1562604107.png', '50', 'Nota Undangan', 1, '2019-07-08 23:25:47'),
(4, 'PRD1907080004', 7, 'Yasin Tahlil 1', '4500', 5000, 5500, 50, 'pcs', '5000,5500,6000', 'Cover Poly, Cover Bludru, Cover Linen', 'admin1562605164.jpg', '60', 'Yasin Souvenir Tahlilan', 1, '2019-07-08 23:59:24'),
(5, 'PRD1907080005', 7, 'Yasin Tahlil 2', '2000', 0, 0, 0, '', '0', '', 'admin1562605199.jpg', '20', 'Yasin Souvenir Tahlilan', 1, '2019-07-08 23:59:59'),
(6, 'PRD1907090006', 7, 'Yasin Tahlil 3', '5000', 0, 0, 0, '', '0', '', 'admin1562605229.jpg', '50', 'Souvenir Tahlilal Yasin', 1, '2019-07-09 00:00:29'),
(7, 'PRD1907080004', 6, 'Undangan Khitan Kecil', '800', 0, 0, 0, '', '0', '', 'admin1562605357.jpg', '20', 'Undangan Khitan Ukuran Kecil', 1, '2019-07-09 00:02:37'),
(8, 'PRD1907090007', 6, 'Undangan Khitan Sedang', '700', 0, 0, 0, '', '0', '', 'admin1562605386.jpg', '67', 'Undangan Khitan Ukuran Sedang', 1, '2019-07-09 00:03:06'),
(9, 'PRD1907090008', 6, 'Undangan Khitan Besar', '1000', 0, 0, 0, '', '0', '', 'admin1562605413.jpg', '10', 'Undangan Khitan Ukuran Besar', 1, '2019-07-09 00:03:33'),
(10, 'PRD1907090009', 6, 'Undangan Khitan Modern', '1500', 0, 0, 0, '', '0', '', 'admin1562605438.jpg', '63', 'Undangan Khitan Ukuran Modern', 1, '2019-07-09 00:03:58'),
(11, 'PRD1907090010', 6, 'Undangan Khitan Minimalis', '500', 0, 0, 0, '', '0', '', 'admin1562605474.jpg', '70', 'Undangan Khitan Ukuran Minimalis', 1, '2019-07-09 00:04:34'),
(12, 'PRD1907090011', 5, 'Undangan Pernikahan Kecil', '700', 0, 0, 0, '', '0', '', 'admin1562605787.jpg', '70', 'Undangan Pernikahan Ukuran Kecil', 1, '2019-07-09 00:09:47'),
(13, 'PRD1907090012', 5, 'Undangan Pernikahan Sedang', '800', 0, 0, 0, '', '0', '', 'admin1562605830.jpg', '80', 'Undangan Pernikahan Ukuran Sedang', 1, '2019-07-09 00:10:16'),
(14, 'PRD1907090013', 5, 'Undangan Pernikahan Modern', '1000', 0, 0, 0, '', '0', '', 'admin1562605959.jpg', '90', 'Undangan Pernikahan Jenis Modern', 1, '2019-07-09 00:12:39'),
(15, 'PRD1907090014', 5, 'Undangan Pernikahan Elegan', '960', 0, 0, 0, '', '0', '', 'admin1562606013.jpg', '80', 'Undangan Pernikahan Jenis Elegan', 1, '2019-07-09 00:13:33'),
(16, 'PRD1907090015', 5, 'Undangan Perniikahan Minimalis', '600', 0, 0, 0, '', '0', '', 'admin1562606045.jpg', '67', 'Undangan Pernikahan Jenis Minimalis', 1, '2019-07-09 00:14:05'),
(17, 'PRD1907090016', 3, 'Kartu Nama Elegant', '17000', 0, 0, 0, '', '0', '', 'admin1562606197.jpg', '58', 'Kartu Nama Murah dengan Harga 17.000 / Box', 1, '2019-07-09 00:16:37'),
(18, 'PRD1907090017', 3, 'Kartu Nama Modern', '50000', 0, 0, 0, '', '0', '', 'admin1562606238.jpg', '100', 'Kartu nama desain Modern 50.000/box', 1, '2019-07-09 00:17:18'),
(19, 'PRD1907090018', 3, 'Kartu Nama Blue', '80000', 0, 0, 0, '', '0', '', 'admin1562606273.jpg', '300', 'Kartunama Dengan Desain Biru', 1, '2019-07-09 00:17:53'),
(20, 'PRD1907090019', 3, 'Kartu Nama Murah', '25000', 0, 0, 1, 'box', '0', 'Art Cartoon 230, Art Cartoon 260, Linen Jepang', 'admin1562606305.jpg', '200', 'Kartu Nama Murah', 1, '2019-07-09 00:18:25'),
(21, 'PRD1907090020', 3, 'Kartu Nama Minimalis', '30000', 0, 0, 0, '', '0', '', 'admin1562606356.jpg', '250', 'Kartu Nama dengan desain yang minimalis', 1, '2019-07-09 00:19:16'),
(22, 'PRD1907090021', 2, 'Nota Kecil', '4000', 0, 0, 1, 'rim', '0', 'NCR 2 Ply, NCR 3 Ply, HVS', 'admin1562606633.jpg', '40', 'Nota Dengan ukuran Kecil', 1, '2019-07-09 00:23:53'),
(23, 'PRD1907090022', 2, 'Nota Kantor', '3500', 0, 0, 0, '', '0', '', 'admin1562608676.jpg', '35', 'Nota Untuk Kebutuhan Kantor', 1, '2019-07-09 00:24:23'),
(24, 'PRD1907090023', 2, 'Nota Penjualan', '4000', 0, 0, 0, '', '0', '', 'admin1562606737.jpg', '63', 'Nota Untuk Penjualan', 1, '2019-07-09 00:25:37'),
(25, 'PRD1907090024', 2, 'Nota Hutang', '6000', 0, 0, 0, '', '0', '', 'admin1562606765.jpg', '60', 'Nota Untuk Mencatat Hutangh', 1, '2019-07-09 00:26:05'),
(26, 'PRD1907090025', 2, 'Nota Merah Darah', '8000', 0, 0, 0, '', '0', '', 'admin1562606925.jpg', '80', 'Nota Berwarna Merah', 1, '2019-07-09 00:28:45'),
(27, 'UND1907100026', 5, 'Undangan Besar', '500', 1000, 1500, 100, 'lembar', '5000,5100,5100,4100,4000', 'Art Cartoon 230, Art Cartoon 260, Kartu TIK, Linen, Jasmine', 'produk1562727128.jpg', '50', 'Undangan Besar', 1, '2019-07-10 09:52:08'),
(28, 'KLI1907100027', 1, 'Klip Kertas', '1000', 0, 0, 0, '', '0', '', 'produk1562727171.jpg', '20', 'Klip Untuk Kertas', 0, '2019-07-10 09:52:51'),
(31, 'CS1907090028', 8, 'Custom', '1001', 1500, 2000, 0, '', '0', '', 'custom.jpg', '10', 'Cetak Custom', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tentang_kami`
--

CREATE TABLE `tentang_kami` (
  `id` int(11) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tentang_kami`
--

INSERT INTO `tentang_kami` (`id`, `isi`) VALUES
(3, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 25px; padding: 0px; text-align: justify;\" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><br></p><div><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: &quot;Times New Roman&quot;;\">P</span><span style=\"text-indent: 27.8pt; font-size: 12pt; text-align: left; line-height: 150%; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-family: &quot;Times New Roman&quot;;\">ercetakan Bersaudara Print&nbsp;</span><span style=\"font-family: &quot;Times New Roman&quot;;\">berdiri pada tahun 1990, bermula\r\nhanya membuka usaha kecil dirumah dan hanya bermodalkan jasa saja, kemudian\r\nditahun 2014 mulai merintis usaha yang lebih berkembang dengan menyewa sebuah\r\nkios di </span></span><span lang=\"IN\" style=\"text-indent: 27.8pt; font-size: 12pt; text-align: left; line-height: 150%; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-family: &quot;Times New Roman&quot;;\">Jalan\r\nPramuka No.9</span><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: &quot;Times New Roman&quot;;\"> Kelurahan </span><span style=\"font-family: &quot;Times New Roman&quot;;\">Marga Jaya</span><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: &quot;Times New Roman&quot;;\">, Kecamatan </span><span style=\"font-family: &quot;Times New Roman&quot;;\">Bekasi Selatan</span><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: &quot;Times New Roman&quot;;\">, Kota </span><span style=\"font-family: &quot;Times New Roman&quot;;\">Bekasi</span></span><span style=\"text-indent: 27.8pt; font-size: 12pt; text-align: left; line-height: 150%; font-family: &quot;Times New Roman&quot;;\">.</span></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"text-indent: 27.8pt; font-size: 12pt; text-align: left; line-height: 150%; font-family: &quot;Times New Roman&quot;;\"><b>Visi :&nbsp;</b></span></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt; text-indent: 1cm; text-align: left;\">Menjadi usaha percetakan profesional,\r\nberkarakter, inovatif, produktif yang mampu memenuhi permintaan pelanggan serta\r\nmampu membuka lapangan pekerjaan bagi orang lain.</span></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt; text-indent: 1cm; text-align: left;\"><b>Misi :</b></span></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt; text-align: left; text-indent: -21.25pt;\">1. Menghasilkan produk dan pelayanan jasa percetakan yang berkualitas dan\r\nberdaya saing tinggi.</span></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt; text-align: left; text-indent: -21.25pt;\">2. Responsif dalam memberikan jasa yang berkualitas.</span></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span lang=\"EN-ID\" style=\"text-indent: -21.25pt; font-size: 12pt; text-align: left; line-height: 150%; font-family: &quot;Times New Roman&quot;;\">3. Menjaga dan meningkatkan kepuasan pelanggan dengan memberikan kualitas\r\nyang terbaik.</span></p></div>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimoni`
--

CREATE TABLE `testimoni` (
  `idtesti` int(11) NOT NULL,
  `plg_id` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `isi_testi` text NOT NULL,
  `status_testi` int(11) NOT NULL,
  `tgl_post` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `testimoni`
--

INSERT INTO `testimoni` (`idtesti`, `plg_id`, `email`, `isi_testi`, `status_testi`, `tgl_post`) VALUES
(1, 'PLG1907100002', 'ardhiramadhan98@gmail.com', 'Mantap Kali ini', 1, '2019-07-10 08:52:57'),
(2, 'PLG1907100003', 'rmdhan95@gmail.com', 'Betul Pelayanannnya Mantap', 1, '2019-07-10 09:20:40');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indeks untuk tabel `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`plg_id`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`bayar_id`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`no_pesanan`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`produkid`);

--
-- Indeks untuk tabel `tentang_kami`
--
ALTER TABLE `tentang_kami`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`idtesti`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `adminid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `bayar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `produkid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `tentang_kami`
--
ALTER TABLE `tentang_kami`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `idtesti` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
