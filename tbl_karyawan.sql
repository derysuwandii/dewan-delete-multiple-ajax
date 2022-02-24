/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100037
 Source Host           : localhost:3306
 Source Schema         : db_dewankomputer

 Target Server Type    : MySQL
 Target Server Version : 100037
 File Encoding         : 65001

 Date: 01/07/2019 19:12:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_karyawan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_karyawan`;
CREATE TABLE `tbl_karyawan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jenkel` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jabatan` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `umur` int(11) NOT NULL,
  `foto` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_karyawan
-- ----------------------------
INSERT INTO `tbl_karyawan` VALUES (1, 'Jono Jondah', 'Jalan Rajawali Cilacap Selatan Jawa Tengah', 'Laki-laki', 'Supir', 36, 'avatar1.png');
INSERT INTO `tbl_karyawan` VALUES (2, 'Tini Skak', 'Jalan Rajawali Cilacap Selatan Jawa Tengah', 'Perempuan', 'Programmer', 24, 'avatar3.png');
INSERT INTO `tbl_karyawan` VALUES (3, 'Jini oh jini', 'Jalan Rajawali Cilacap Selatan Jawa Tengah', 'Perempuan', 'Service technician', 262, 'avatar3.png');
INSERT INTO `tbl_karyawan` VALUES (4, 'Slamet', 'Jalan Rajawali Cilacap Selatan Jawa Tengah', 'Laki-laki', 'Office Boy', 32, 'avatar1.png');
INSERT INTO `tbl_karyawan` VALUES (5, 'Sule Rharjo', 'Jalan Rajawali Cilacap Selatan Jawa Tengah', 'Laki-laki', 'Akuntan', 29, 'avatar2.png');
INSERT INTO `tbl_karyawan` VALUES (6, 'Cristiano Ronaldinho', 'Jalan Rajawali Cilacap Selatan Jawa Tengah', 'Laki-laki', 'Systems programmer', 32, 'avatar2.png');
INSERT INTO `tbl_karyawan` VALUES (7, 'Angelina Ozawa', 'Jalan Rajawali Cilacap Selatan Jawa Tengah', 'Perempuan', 'Sekertaris', 38, 'avatar3.png');
INSERT INTO `tbl_karyawan` VALUES (8, 'Titin', 'Jalan Rajawali Cilacap Selatan Jawa Tengah', 'Perempuan', 'Konsultan', 2823, 'avatar3.png');
INSERT INTO `tbl_karyawan` VALUES (9, 'Pongki', 'Jalan Rajawali Cilacap Selatan Jawa Tengah', 'Laki-laki', 'Analis', 6413, 'avatar2.png');
INSERT INTO `tbl_karyawan` VALUES (10, 'Budun', 'Jalan Rajawali Cilacap Selatan Jawa Tengah', 'Laki-laki', 'Fotografer', 331, 'avatar1.png');

SET FOREIGN_KEY_CHECKS = 1;
