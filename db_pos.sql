/*
 Navicat Premium Data Transfer

 Source Server         : xamp
 Source Server Type    : MySQL
 Source Server Version : 100432 (10.4.32-MariaDB)
 Source Host           : localhost:0
 Source Schema         : db_pos

 Target Server Type    : MySQL
 Target Server Version : 100432 (10.4.32-MariaDB)
 File Encoding         : 65001

 Date: 28/04/2025 16:22:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_akses
-- ----------------------------
DROP TABLE IF EXISTS `tbl_akses`;
CREATE TABLE `tbl_akses`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_akses
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_barang
-- ----------------------------
DROP TABLE IF EXISTS `tbl_barang`;
CREATE TABLE `tbl_barang`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode_barang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_barang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jenis` int NULL DEFAULT NULL,
  `harga_beli` decimal(10, 0) NULL DEFAULT NULL,
  `harga_jual` decimal(10, 0) NULL DEFAULT NULL,
  `qty` decimal(10, 0) NULL DEFAULT NULL,
  `uom` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `margin` decimal(10, 0) NULL DEFAULT NULL,
  `create_at` datetime NULL DEFAULT NULL,
  `tgl_update_stock` datetime NULL DEFAULT NULL,
  `set_diskon` decimal(10, 0) NULL DEFAULT 0,
  `min_qty` int NULL DEFAULT 0,
  `status` int NULL DEFAULT 1,
  `status_barang` int NULL DEFAULT NULL COMMENT '1 = Rawmat\r\n2 = Siap Jual',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_barang
-- ----------------------------
INSERT INTO `tbl_barang` VALUES (1, 'BRG-2502-0001', 'Beras @50KG', 1, 640000, 700000, 30, 'Kg', 60000, '2025-02-27 08:53:35', '2025-03-18 16:02:48', NULL, NULL, 1, 1);
INSERT INTO `tbl_barang` VALUES (2, 'BRG-2502-0002', 'Gula GMP @50 Kg', 1, 860000, 900000, 15, 'Kg', 40000, '2025-02-27 08:57:23', '2025-02-27 08:57:23', 0, 0, 1, NULL);
INSERT INTO `tbl_barang` VALUES (3, 'BRG-2502-0003', 'Gula GMP', 1, 18000, 20000, 25, 'Kg', 2000, '2025-02-27 08:57:49', '2025-03-02 13:56:02', 3000, 3, 1, NULL);
INSERT INTO `tbl_barang` VALUES (4, 'BRG-2502-0004', 'INDOMIE AYAM SPESIAL @DOS', 1, 103000, 105000, 5, 'DOS', 2000, '2025-02-27 08:58:11', '2025-02-27 08:58:11', 0, 0, 1, NULL);
INSERT INTO `tbl_barang` VALUES (5, 'BRG-2502-0005', 'INDOMIE GORENG DOS', 1, 111000, 115000, 5, 'DOS', 4000, '2025-02-27 08:58:37', '2025-02-27 08:58:37', 0, 0, 1, NULL);
INSERT INTO `tbl_barang` VALUES (6, 'BRG-2502-0006', 'INDOMIE GORENG ', 1, 3000, 3500, 5, 'Pcs', 500, '2025-02-27 08:58:54', '2025-02-27 08:58:54', 0, 0, 1, NULL);
INSERT INTO `tbl_barang` VALUES (7, 'BRG-2502-0007', 'INDOMIE SOTO', 1, 2700, 3000, 9, 'Pcs', 300, '2025-02-27 09:00:12', '2025-02-27 09:00:12', 0, 0, 1, NULL);
INSERT INTO `tbl_barang` VALUES (8, 'BRG-2502-0008', 'KECAP SEDAP @520ml', 1, 7500, 8500, 3, 'Ml', 1000, '2025-02-27 09:00:54', '2025-02-27 09:00:54', 0, 0, 1, NULL);
INSERT INTO `tbl_barang` VALUES (9, 'BRG-2502-0009', 'Minyak Kita @1L', 1, 0, 0, 0, 'L', 0, '2025-02-27 09:01:17', '2025-02-27 09:01:17', 0, 0, 1, NULL);
INSERT INTO `tbl_barang` VALUES (10, 'BRG-2502-0010', 'MIKA TELOR PACK', 1, 45000, 50000, 10, 'Pack', 5000, '2025-02-27 09:02:49', '2025-02-27 09:02:49', 0, 0, 1, NULL);
INSERT INTO `tbl_barang` VALUES (11, 'BRG-2502-0011', 'MIKA TELOR @pcs', 1, 1000, 2000, 9, 'Pcs', 1000, '2025-02-27 09:03:19', '2025-02-27 09:03:19', 0, 0, 1, NULL);
INSERT INTO `tbl_barang` VALUES (12, 'BRG-2502-0012', 'TELOR PETI @15Kg', 1, 360000, 380000, 10, 'Kg', 20000, '2025-02-27 09:03:49', '2025-02-27 09:03:49', 0, 0, 1, NULL);
INSERT INTO `tbl_barang` VALUES (13, 'BRG-2502-0013', 'TELOR', 1, 10000, 12000, 5, 'Kg', 2000, '2025-02-27 09:04:17', '2025-02-27 09:04:17', 0, 0, 1, NULL);
INSERT INTO `tbl_barang` VALUES (14, 'BRG-2502-0014', 'TERIGU LENCANA MERAH', 1, 110000, 115000, 9, 'Kg', 5000, '2025-02-27 09:05:22', '2025-02-27 09:05:22', 0, 0, 1, NULL);
INSERT INTO `tbl_barang` VALUES (15, 'BRG-2502-0015', 'TERIGU LENCANA MERAH', 1, 128000, 130000, 9, 'Kg', 2000, '2025-02-27 09:05:36', '2025-02-27 09:05:36', 0, 0, 1, NULL);
INSERT INTO `tbl_barang` VALUES (16, 'BRG-2502-0016', 'TROPICAL @ 6Krat', 1, 215000, 220000, 9, 'KRAT', 5000, '2025-02-27 09:06:03', '2025-02-27 09:06:03', 0, 0, 1, NULL);
INSERT INTO `tbl_barang` VALUES (17, 'BRG-2502-0017', 'TROPICAL @2L', 1, 40000, 45000, 8, 'L', 5000, '2025-02-27 09:06:27', '2025-02-27 09:06:27', 0, 0, 1, NULL);
INSERT INTO `tbl_barang` VALUES (18, 'BRG-2502-0018', 'BERAS SYATHIBI @ 5 KG', 1, 74000, 77000, 8, 'Kg', 3000, '2025-02-27 09:12:50', '2025-02-27 09:12:50', 0, 0, 1, NULL);
INSERT INTO `tbl_barang` VALUES (19, 'BRG-2504-0019', 'TIssu Bundle (3 pcs)', 1, 0, 18000, 5, 'BDL', 0, '2025-04-28 10:55:26', '2025-04-28 10:55:26', NULL, NULL, 1, 2);

-- ----------------------------
-- Table structure for tbl_dtl_trans
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dtl_trans`;
CREATE TABLE `tbl_dtl_trans`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `head_trans` int NULL DEFAULT NULL,
  `kode_barang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `qty` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `total_harga` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_dtl_trans
-- ----------------------------
INSERT INTO `tbl_dtl_trans` VALUES (1, 1, 'BRG-2504-0019', '1', '18000');

-- ----------------------------
-- Table structure for tbl_history_barang
-- ----------------------------
DROP TABLE IF EXISTS `tbl_history_barang`;
CREATE TABLE `tbl_history_barang`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `barang_id` int NULL DEFAULT NULL,
  `qty` int NULL DEFAULT NULL,
  `history_date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_history_barang
-- ----------------------------
INSERT INTO `tbl_history_barang` VALUES (1, 1, 7, '2025-02-28 22:48:36');
INSERT INTO `tbl_history_barang` VALUES (2, 2, 10, '2025-02-28 22:51:04');
INSERT INTO `tbl_history_barang` VALUES (3, 3, 20, '2025-03-02 08:20:26');
INSERT INTO `tbl_history_barang` VALUES (4, 1, 20, '2025-03-16 08:59:19');
INSERT INTO `tbl_history_barang` VALUES (5, 3, 10, '2025-03-17 04:16:35');
INSERT INTO `tbl_history_barang` VALUES (6, 3, 5, '2025-03-17 04:16:47');
INSERT INTO `tbl_history_barang` VALUES (7, 1, -1, '2025-03-18 07:15:00');

-- ----------------------------
-- Table structure for tbl_kateg_trans
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kateg_trans`;
CREATE TABLE `tbl_kateg_trans`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kategori_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_kateg_trans
-- ----------------------------
INSERT INTO `tbl_kateg_trans` VALUES (1, NULL, 'Dana Penjualan', 1);
INSERT INTO `tbl_kateg_trans` VALUES (2, NULL, 'Dana Modal', 1);
INSERT INTO `tbl_kateg_trans` VALUES (3, NULL, 'Dana Investasi', 1);
INSERT INTO `tbl_kateg_trans` VALUES (4, NULL, 'Dana Penerimaan Pinjaman', 1);
INSERT INTO `tbl_kateg_trans` VALUES (5, NULL, 'Biaya Operasional', 2);
INSERT INTO `tbl_kateg_trans` VALUES (6, NULL, 'Biaya Pembelian Barang', 2);
INSERT INTO `tbl_kateg_trans` VALUES (7, NULL, 'Biaya Pembelian Aset', 2);
INSERT INTO `tbl_kateg_trans` VALUES (8, NULL, 'Biaya Pembayaran Hutan', 2);

-- ----------------------------
-- Table structure for tbl_kategori
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kategori`;
CREATE TABLE `tbl_kategori`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_kategori
-- ----------------------------
INSERT INTO `tbl_kategori` VALUES (1, 'IN', 'Pemasukan');
INSERT INTO `tbl_kategori` VALUES (2, 'OUT', 'Pengeluaran');
INSERT INTO `tbl_kategori` VALUES (3, 'TRF', 'Transfer');

-- ----------------------------
-- Table structure for tbl_keuangan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_keuangan`;
CREATE TABLE `tbl_keuangan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kategori_keuangan` int NULL DEFAULT NULL,
  `nominal` decimal(10, 0) NULL DEFAULT NULL,
  `periode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_keuangan
-- ----------------------------
INSERT INTO `tbl_keuangan` VALUES (1, 1, 18000, '0425');
INSERT INTO `tbl_keuangan` VALUES (2, 2, 0, '0425');
INSERT INTO `tbl_keuangan` VALUES (3, 3, 0, '0425');
INSERT INTO `tbl_keuangan` VALUES (4, 4, 0, '0425');
INSERT INTO `tbl_keuangan` VALUES (5, 5, 0, '0425');
INSERT INTO `tbl_keuangan` VALUES (6, 6, 0, '0425');
INSERT INTO `tbl_keuangan` VALUES (7, 7, 0, '0425');
INSERT INTO `tbl_keuangan` VALUES (8, 8, 0, '0425');

-- ----------------------------
-- Table structure for tbl_level
-- ----------------------------
DROP TABLE IF EXISTS `tbl_level`;
CREATE TABLE `tbl_level`  (
  `id` int NOT NULL,
  `level_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_level
-- ----------------------------
INSERT INTO `tbl_level` VALUES (1, 'Super User');
INSERT INTO `tbl_level` VALUES (2, 'Admin');
INSERT INTO `tbl_level` VALUES (3, 'Kasir');

-- ----------------------------
-- Table structure for tbl_pemasukan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_pemasukan`;
CREATE TABLE `tbl_pemasukan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kategori_id` int NULL DEFAULT NULL,
  `nominal` decimal(10, 0) NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_pemasukan
-- ----------------------------
INSERT INTO `tbl_pemasukan` VALUES (2, 1, 500000, '2025-03-19', 'sumbangan dari si fulan');
INSERT INTO `tbl_pemasukan` VALUES (3, 2, 200000, '2025-03-19', 'printing');
INSERT INTO `tbl_pemasukan` VALUES (4, 3, 10000000, '2025-03-19', 'cadangan dagangan');

-- ----------------------------
-- Table structure for tbl_pengeluaran
-- ----------------------------
DROP TABLE IF EXISTS `tbl_pengeluaran`;
CREATE TABLE `tbl_pengeluaran`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kategori_id` int NULL DEFAULT NULL,
  `sumber_dana_id` int NULL DEFAULT NULL,
  `nominal` decimal(10, 0) NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_pengeluaran
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_transaksi
-- ----------------------------
DROP TABLE IF EXISTS `tbl_transaksi`;
CREATE TABLE `tbl_transaksi`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `no_transaksi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `diskon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `grand_total` varchar(65) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `uang_bayar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `uang_kembali` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_transaksi` datetime NULL DEFAULT NULL,
  `pembeli` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pelanggan_id` int NULL DEFAULT NULL,
  `lainnya` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `metode_bayar` int NULL DEFAULT NULL,
  `kasir_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_transaksi
-- ----------------------------
INSERT INTO `tbl_transaksi` VALUES (1, 'TRX-2504-0001', '0', '18000', '20000', '2000', '2025-04-28 15:59:00', 'AIda', NULL, NULL, 1, 3);

-- ----------------------------
-- Table structure for tbl_uom
-- ----------------------------
DROP TABLE IF EXISTS `tbl_uom`;
CREATE TABLE `tbl_uom`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `uom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_uom
-- ----------------------------
INSERT INTO `tbl_uom` VALUES (1, 'Kg', 'Kilogram');
INSERT INTO `tbl_uom` VALUES (2, 'KRAT', 'Krat');
INSERT INTO `tbl_uom` VALUES (3, 'DOS', 'Karton');
INSERT INTO `tbl_uom` VALUES (4, 'Pcs', 'Pieces');
INSERT INTO `tbl_uom` VALUES (5, 'Ml', 'Mililiter');
INSERT INTO `tbl_uom` VALUES (6, 'L', 'Liter');
INSERT INTO `tbl_uom` VALUES (7, 'Pack', 'Pack');
INSERT INTO `tbl_uom` VALUES (8, 'BDL', 'Bundle');

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `level` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (1, 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 2, 1);
INSERT INTO `tbl_user` VALUES (2, 'Tukiyem', 'kasir', 'c7911af3adbd12a035b289556d96470a', 3, 1);
INSERT INTO `tbl_user` VALUES (3, 'Super User', 'su', '0b180078d994cb2b5ed89d7ce8e7eea2', 1, 1);

SET FOREIGN_KEY_CHECKS = 1;
