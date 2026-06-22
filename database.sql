/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.32-MariaDB : Database - db_studio_foto
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_studio_foto` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `db_studio_foto`;

/*Table structure for table `tb_paket_foto` */

DROP TABLE IF EXISTS `tb_paket_foto`;

CREATE TABLE `tb_paket_foto` (
  `id_paket` varchar(20) NOT NULL,
  `nama_paket` varchar(100) NOT NULL,
  `kategori` enum('Pernikahan','Maternity','Newborn','Keluarga','Wisuda','Komersial','Portrait') NOT NULL,
  `durasi_sesi` int(11) NOT NULL COMMENT 'dalam menit',
  `harga` decimal(12,2) NOT NULL,
  `jumlah_foto` int(11) NOT NULL COMMENT 'jumlah foto yang disertakan',
  `deskripsi` text DEFAULT NULL,
  `tanggal_input` date NOT NULL,
  `foto_paket` varchar(255) DEFAULT NULL,
  `status` enum('Tersedia','Habis','Nonaktif') DEFAULT 'Tersedia',
  PRIMARY KEY (`id_paket`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tb_paket_foto` */

insert  into `tb_paket_foto`(`id_paket`,`nama_paket`,`kategori`,`durasi_sesi`,`harga`,`jumlah_foto`,`deskripsi`,`tanggal_input`,`foto_paket`,`status`) values 
('PKT001','Paket Premiere Wedding','Pernikahan',480,5000000.00,100,'0','0000-00-00','1781620559_1067071705441646290.jpg','Tersedia'),
('PKT002','Paket Sweet Maternity','Maternity',120,1500000.00,30,'0','0000-00-00','1781685785_Probably one of our fav moments to capture are new….jpg','Tersedia'),
('PKT003','Paket Newborn Dream','Newborn',180,2000000.00,40,'0','0000-00-00','1781600559_Looking for cute newborn baby girl photoshoot….jpg','Habis');

/*Table structure for table `tb_users` */

DROP TABLE IF EXISTS `tb_users`;

CREATE TABLE `tb_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tb_users` */

insert  into `tb_users`(`id`,`username`,`password`,`created_at`) values 
(1,'admin','admin123','2026-06-16 15:23:51'),
(2,'user','users','2026-06-17 09:13:58'),
(4,'silvia','vyara','2026-06-17 09:35:53');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
