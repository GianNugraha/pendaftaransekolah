/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 10.4.11-MariaDB : Database - daftar_sekolah
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`daftar_sekolah` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `daftar_sekolah`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_admin` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`id`,`nama_admin`,`password`) values 
(4,'admin','21232f297a57a5a743894a0e4a801fc3'),
(5,'Gian Nugraha','e84e710424653e8d984c78085f814b69');

/*Table structure for table `bukti_transfer` */

DROP TABLE IF EXISTS `bukti_transfer`;

CREATE TABLE `bukti_transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pendaftar` int(11) NOT NULL,
  `nama_pendaftar` varchar(100) NOT NULL,
  `nama_bank` varchar(100) NOT NULL,
  `bukti_transfer` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `bukti_transfer` */

insert  into `bukti_transfer`(`id`,`id_pendaftar`,`nama_pendaftar`,`nama_bank`,`bukti_transfer`,`status`) values 
(0,4,'raden defi','BCA Raden defi megantari','img/bukti_transfer/cara transfer uang melalui internet banking bca sesama bca4.jpg',1),
(2,6,'Gian Nugraha','Mandiri - Gian Nugraha','img/bukti_transfer/Landing page.png',2),
(4,14,'Nugraha Gian','BCA - Nugraha Gian','img/bukti_transfer/email red.png',0);

/*Table structure for table `data_orangtua` */

DROP TABLE IF EXISTS `data_orangtua`;

CREATE TABLE `data_orangtua` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pendaftar` varchar(100) NOT NULL,
  `id_pendaftar` int(11) NOT NULL,
  `nama_ayah` varchar(100) DEFAULT NULL,
  `nama_ibu` varchar(100) DEFAULT NULL,
  `nama_wali` varchar(100) DEFAULT NULL,
  `alamat` text NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `kodepos` varchar(100) NOT NULL,
  `nohp` varchar(15) NOT NULL,
  `email_ortu` varchar(100) DEFAULT NULL,
  `pendidikan_ayah` varchar(100) NOT NULL,
  `pendidikan_ibu` varchar(100) NOT NULL,
  `pekerjaan_ayah` varchar(100) NOT NULL,
  `pekerjaan_ibu` varchar(100) NOT NULL,
  `penghasilan_ortu` varchar(100) NOT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `data_orangtua` */

insert  into `data_orangtua`(`id`,`nama_pendaftar`,`id_pendaftar`,`nama_ayah`,`nama_ibu`,`nama_wali`,`alamat`,`provinsi`,`kota`,`kecamatan`,`kodepos`,`nohp`,`email_ortu`,`pendidikan_ayah`,`pendidikan_ibu`,`pekerjaan_ayah`,`pekerjaan_ibu`,`penghasilan_ortu`,`status`) values 
(6,'frans chaniago',2,'asd','dada','','sda','sulawesiutara','da','da','242','4242342','','s2','d3','pns','pns','3-5jt',NULL),
(7,'Gian Nugraha',6,'Endang Sudrajat','Siti Mariyam','','Bayongbong, garut','jawabarat','garut','bayongbong','44162','087821925626','','sd','sd','wirausaha','tidak bekerja','1-3jt',1),
(8,'Nugraha Gian',14,'Endang Sudrajat','Siti Mariyam','','bayongbong, garut','jawabarat','Garut','Bayongbong','44162','089658385919','','sd','sd','wirausaha','tidak bekerja','under 1jt',1);

/*Table structure for table `dokumen` */

DROP TABLE IF EXISTS `dokumen`;

CREATE TABLE `dokumen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pendaftar` int(11) NOT NULL,
  `nama_pendaftar` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `ktp` varchar(100) NOT NULL,
  `akte` varchar(100) NOT NULL,
  `ijazah` varchar(100) NOT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `dokumen` */

insert  into `dokumen`(`id`,`id_pendaftar`,`nama_pendaftar`,`foto`,`ktp`,`akte`,`ijazah`,`status`) values 
(2,4,'raden defi','img/dokumen/foto/2x3.jpg','img/dokumen/ktp/60-75.jpg','img/dokumen/akte/80.jpg','img/dokumen/ijazah/60.jpg',NULL),
(3,6,'Gian Nugraha','img/dokumen/foto/ICON USER.png','img/dokumen/ktp/email.jpg','img/dokumen/akte/Image 6.png','img/dokumen/ijazah/ICON USER.png',1);

/*Table structure for table `formulir_mhs` */

DROP TABLE IF EXISTS `formulir_mhs`;

CREATE TABLE `formulir_mhs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `no_jaket` varchar(5) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tgl_daftar` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `nama_lengkap` (`nama_lengkap`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `formulir_mhs` */

insert  into `formulir_mhs`(`id`,`nama_lengkap`,`tempat_lahir`,`tgl_lahir`,`jenis_kelamin`,`agama`,`no_hp`,`alamat`,`provinsi`,`no_jaket`,`email`,`tgl_daftar`) values 
(2,'frans chaniago','lebak','1995-11-04','laki-laki','islam','08982002243','pasarkemis','banten','m','franschaniago5@gmail.com','2016-06-11'),
(4,'raden defi','tangerang','2011-06-16','Perempuan','islam','08982002243','binong permai','banten','s','radendefi@gmail.com','11-06-16'),
(6,'Gian Nugraha','Garut','2004-06-20','laki-laki','islam','081295704758','Bayongbong, Garut','jawabarat','m','giannugraha76@gmail.com','040620'),
(14,'Nugraha Gian','Garut','1997-11-05','laki-laki','islam','087821925626','Bayongbong, Garut','jawabarat','m','nugrahagian76@gmail.com','1997-11-05');

/*Table structure for table `pendidikan` */

DROP TABLE IF EXISTS `pendidikan`;

CREATE TABLE `pendidikan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pendaftar` varchar(100) NOT NULL,
  `id_pendaftar` int(11) NOT NULL,
  `status_slta` varchar(100) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `kode_pos` varchar(10) NOT NULL,
  `nama_slta` varchar(100) NOT NULL,
  `no_ijazah` varchar(100) NOT NULL,
  `tahun lulus` varchar(100) NOT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `pendidikan` */

insert  into `pendidikan`(`id`,`nama_pendaftar`,`id_pendaftar`,`status_slta`,`kota`,`kecamatan`,`kode_pos`,`nama_slta`,`no_ijazah`,`tahun lulus`,`status`) values 
(3,'frans chaniago',2,'negeri','jakarta','cengkareng','15589','SMP 2 Cengkareng','687678578579','2013',NULL),
(4,'Gian Nugraha',6,'swasta','Garut','Bayongbong','44162','MTs Al-Musthofa','1234567','2010',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
