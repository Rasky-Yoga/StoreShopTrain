/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 10.1.21-MariaDB : Database - php_db_karaoke
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`php_db_karaoke` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `php_db_karaoke`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id_admin` INT(11) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(30) DEFAULT NULL,
  `password` VARCHAR(30) DEFAULT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

INSERT  INTO `admin`(`id_admin`,`username`,`password`) VALUES 
(1,'admin','admin123');

/*Table structure for table `dinas_pajak` */

DROP TABLE IF EXISTS `dinas_pajak`;

CREATE TABLE `dinas_pajak` (
  `no_dinas_pajak` INT(11) NOT NULL,
  `no_tlp` VARCHAR(12) DEFAULT NULL,
  `alamat` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (`no_dinas_pajak`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `dinas_pajak` */

/*Table structure for table `gambar` */

DROP TABLE IF EXISTS `gambar`;

CREATE TABLE `gambar` (
  `id_gambar` INT(11) NOT NULL AUTO_INCREMENT,
  `nama` VARCHAR(100) DEFAULT NULL,
  `foto` VARCHAR(5000) DEFAULT NULL,
  PRIMARY KEY (`id_gambar`)
) ENGINE=INNODB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `gambar` */

INSERT  INTO `gambar`(`id_gambar`,`nama`,`foto`) VALUES 
(7,'diva','diva_fix.jpg'),
(8,'nav','nav.png'),
(9,'maroon5','marron5.jpg'),
(10,'andmesh','Andmesh.jpg'),
(11,'marionjola','marionjola.jpg'),
(12,'oneokerock','oneokrock.jpg'),
(13,'justinbeiber','justin.jpg'),
(14,'judika','judika.jpg'),
(15,'blackpink','blackpink.jpg'),
(16,'tulus','tulus.jpg'),
(17,'kenshiyonezu','kenshiyonezu.jpg');

/*Table structure for table `kritik_saran` */

DROP TABLE IF EXISTS `kritik_saran`;

CREATE TABLE `kritik_saran` (
  `id_comment` INT(11) NOT NULL AUTO_INCREMENT,
  `tgl_comment` DATE DEFAULT NULL,
  `isi_comment` TEXT,
  `id_user` INT(11) DEFAULT NULL,
  PRIMARY KEY (`id_comment`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `kritik_saran_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `kritik_saran` */

/*Table structure for table `lagu` */

DROP TABLE IF EXISTS `lagu`;

CREATE TABLE `lagu` (
  `id_lagu` INT(11) NOT NULL AUTO_INCREMENT,
  `id_penyanyi` INT(11) DEFAULT NULL,
  `judul_lagu` VARCHAR(100) DEFAULT NULL,
  `tanggal_rilis` DATE DEFAULT NULL,
  `asal_lagu` VARCHAR(100) DEFAULT NULL,
  `status_tersedia` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`id_lagu`),
  KEY `id_penyanyi` (`id_penyanyi`),
  CONSTRAINT `lagu_ibfk_1` FOREIGN KEY (`id_penyanyi`) REFERENCES `penyanyi` (`id_penyanyi`)
) ENGINE=INNODB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

/*Data for the table `lagu` */

INSERT  INTO `lagu`(`id_lagu`,`id_penyanyi`,`judul_lagu`,`tanggal_rilis`,`asal_lagu`,`status_tersedia`) VALUES 
(1,1,'Memories','2019-10-08','UK','NAV, Diva, Inul Vizta, Zero 4'),
(2,2,'Nyaman','2019-10-11','Indonesia','NAV, Diva, Inul Vizta, Zero 4'),
(3,2,'Kumau Dia','2019-11-27','Indonesia','NAV, Diva, Inul Vizta'),
(4,4,'The Beginning','2013-07-25','Jepang','NAV, Diva, Inul Vizta, Zero 4'),
(5,4,'C.h.a.o.s.m.y.t.h.','2014-11-05','Jepang','NAV, Diva, Inul Vizta, Zero 4'),
(6,4,'Wherever You Are','2011-06-01','Jepang','NAV, Diva, Inul Vizta, Zero 4'),
(7,4,'Be The Light','2014-07-12','Jepang','NAV, Diva, Inul Vizta, Zero 4'),
(8,3,'Jangan','2018-07-18','Indonesia','NAV, Diva, Inul Vizta, Zero 4'),
(9,3,'Rayu','2019-08-21','Indonesia','NAV, Diva, Inul Vizta, Zero 4'),
(10,5,'Love Your Self','2015-07-12','USA','NAV, Diva, Inul Vizta, Zero 4'),
(11,5,'What Do You Mean?','2015-07-12','USA','NAV, Diva, Inul Vizta, Zero 4'),
(12,5,'Sorry','2015-07-12','USA','NAV, Diva, Inul Vizta, Zero 4'),
(13,6,'Karna Cinta','2019-07-18','Indonesia','NAV, Diva, Inul Vizta, Zero 4'),
(14,6,'Jikalau Kau Cinta','2018-09-21','Indonesia','NAV, Diva, Inul Vizta, Zero 4'),
(15,6,'Jadi Aku Sebentar Saja','2017-07-27','Indonesia','NAV, Diva, Inul Vizta, Zero 4'),
(16,7,'Kill This Love','2019-02-14','Korea','NAV, Diva'),
(17,7,'DDU-DDU-DDU','2018-04-11','Korea','NAV, Diva'),
(18,7,'Bombayah','2017-04-20','Korea','NAV, Diva, Inul Vizta, Zero 4'),
(19,7,'Whistel','2017-07-20','Korea','NAV, Diva, Inul Vizta, Zero 4'),
(20,8,'Pamit','2016-07-12','Indonesia','NAV, Diva, Inul Vizta, Zero 4'),
(21,8,'Monokrom','2016-06-12','Indonesia','NAV, Diva, Inul Vizta, Zero 4'),
(22,8,'Labirin','2018-10-12','Indonesia','NAV, Diva, Inul Vizta, Zero 4'),
(23,9,'Lemon','2018-02-22','Jepang','NAV, Diva'),
(24,9,'Flamingo','2018-07-12','Jepang','NAV, Diva'),
(25,9,'Spirit Of The Sea','2019-02-19','Jepang','NAV, Diva');

/*Table structure for table `penyanyi` */

DROP TABLE IF EXISTS `penyanyi`;

CREATE TABLE `penyanyi` (
  `id_penyanyi` INT(11) NOT NULL AUTO_INCREMENT,
  `id_gambar` INT(11) DEFAULT NULL,
  `nama_penyanyi` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (`id_penyanyi`),
  KEY `id_gambar` (`id_gambar`),
  CONSTRAINT `penyanyi_ibfk_1` FOREIGN KEY (`id_gambar`) REFERENCES `gambar` (`id_gambar`)
) ENGINE=INNODB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `penyanyi` */

INSERT  INTO `penyanyi`(`id_penyanyi`,`id_gambar`,`nama_penyanyi`) VALUES 
(1,9,'Maroon 5'),
(2,10,'Andmesh'),
(3,11,'Marion Jola'),
(4,12,'One Ok Rock'),
(5,13,'Justin Bieber'),
(6,14,'Judika'),
(7,15,'Blackpink'),
(8,16,'Tulus'),
(9,17,'Kenshi Yonezu');

/*Table structure for table `perusahaan_karaoke` */

DROP TABLE IF EXISTS `perusahaan_karaoke`;

CREATE TABLE `perusahaan_karaoke` (
  `id_perusahaan` INT(11) NOT NULL AUTO_INCREMENT,
  `nama_perusahaan` VARCHAR(50) DEFAULT NULL,
  `no_tlp` VARCHAR(12) DEFAULT NULL,
  PRIMARY KEY (`id_perusahaan`)
) ENGINE=INNODB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `perusahaan_karaoke` */

INSERT  INTO `perusahaan_karaoke`(`id_perusahaan`,`nama_perusahaan`,`no_tlp`) VALUES 
(1,'NAV Karaoke',NULL),
(2,'DIVA Karaoke',NULL),
(3,'Zero 4 Karaoke',NULL),
(4,'Inul Vizta',NULL);

/*Table structure for table `report` */

DROP TABLE IF EXISTS `report`;

CREATE TABLE `report` (
  `id_report` INT(11) DEFAULT NULL,
  `tgl_report` DATE DEFAULT NULL,
  `id_reservasi` INT(11) DEFAULT NULL,
  `no_dinas_pajak` INT(11) DEFAULT NULL,
  KEY `id_reservasi` (`id_reservasi`),
  KEY `no_dinas_pajak` (`no_dinas_pajak`),
  CONSTRAINT `report_ibfk_1` FOREIGN KEY (`id_reservasi`) REFERENCES `reservasi` (`id_reservasi`),
  CONSTRAINT `report_ibfk_2` FOREIGN KEY (`no_dinas_pajak`) REFERENCES `dinas_pajak` (`no_dinas_pajak`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `report` */

/*Table structure for table `reservasi` */

DROP TABLE IF EXISTS `reservasi`;

CREATE TABLE `reservasi` (
  `id_reservasi` INT(11) NOT NULL AUTO_INCREMENT,
  `tanggal` VARCHAR(50) DEFAULT NULL,
  `waktu` VARCHAR(50) DEFAULT NULL,
  `lama_waktu` VARCHAR(11) DEFAULT NULL,
  `total_harga` INT(11) DEFAULT NULL,
  `id_perusahaan` INT(11) DEFAULT NULL,
  `id_ruang` INT(11) DEFAULT NULL,
  `id_user` INT(11) DEFAULT NULL,
  `id_admin` INT(11) DEFAULT NULL,
  `status` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (`id_reservasi`),
  KEY `id_perusahaan` (`id_perusahaan`),
  KEY `id_ruang` (`id_ruang`),
  KEY `id_user` (`id_user`),
  KEY `id_admin` (`id_admin`),
  CONSTRAINT `reservasi_ibfk_1` FOREIGN KEY (`id_perusahaan`) REFERENCES `perusahaan_karaoke` (`id_perusahaan`),
  CONSTRAINT `reservasi_ibfk_2` FOREIGN KEY (`id_ruang`) REFERENCES `ruang_karaoke` (`id_ruang`),
  CONSTRAINT `reservasi_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  CONSTRAINT `reservasi_ibfk_4` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `reservasi` */

INSERT  INTO `reservasi`(`id_reservasi`,`tanggal`,`waktu`,`lama_waktu`,`total_harga`,`id_perusahaan`,`id_ruang`,`id_user`,`id_admin`,`status`) VALUES 
(1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `ruang_karaoke` */

DROP TABLE IF EXISTS `ruang_karaoke`;

CREATE TABLE `ruang_karaoke` (
  `id_ruang` INT(11) NOT NULL AUTO_INCREMENT,
  `jenis_ruang` VARCHAR(50) DEFAULT NULL,
  `harga` INT(11) DEFAULT NULL,
  PRIMARY KEY (`id_ruang`)
) ENGINE=INNODB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `ruang_karaoke` */

INSERT  INTO `ruang_karaoke`(`id_ruang`,`jenis_ruang`,`harga`) VALUES 
(1,'Small',50000),
(2,'Medium',100000),
(3,'Large',150000);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id_user` INT(11) NOT NULL AUTO_INCREMENT,
  `nama` VARCHAR(50) DEFAULT NULL,
  `email` VARCHAR(50) DEFAULT NULL,
  `username` VARCHAR(50) DEFAULT NULL,
  `password_user` VARCHAR(50) DEFAULT NULL,
  `no_tlp` VARCHAR(12) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=INNODB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

INSERT  INTO `user`(`id_user`,`nama`,`email`,`username`,`password_user`,`no_tlp`) VALUES 
(1,'Adhi Maheswara','adhi.maheswara.p@gmail.com','adhimaheswara','adhi123','082236022758'),
(21,'David Christian','davidchristian@gmail.com','davidchristian','david123','082333756565'),
(22,'Komang Kurnia Suestiana','komangkurnia@gmail.com','kurniasuestiana','kuernia123','081239972332'),
(23,'Rasky Yoga A','raskiyoga70@gmail.com','raskyoga','rasky123','081231413413'),
(26,'Ersa','ersaya@gmail.com','ersaaa','ersa123','081231241232');

/*!50106 set global event_scheduler = 1*/;

/* Event structure for event `e_sms_member` */

/*!50106 DROP EVENT IF EXISTS `e_sms_member`*/;

DELIMITER $$

/*!50106 CREATE DEFINER=`ricoferdian`@`%` EVENT `e_sms_member` ON SCHEDULE EVERY 1 DAY STARTS '2019-12-08 17:41:20' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
		
		DECLARE is_selesai TINYINT(1) DEFAULT 0;
		DECLARE id_service_s INT DEFAULT NULL;
		
		DECLARE id_service_c INT DEFAULT NULL;
		DECLARE tgl_selesai_c DATE DEFAULT NULL;
		DECLARE no_tlp_c VARCHAR(16) DEFAULT NULL;
		
		DECLARE selesai TINYINT(1) DEFAULT 0;
		
		DECLARE cariselesai CURSOR FOR
			SELECT id_service,tgl_selesai,no_tlp FROM tb_service;
		DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET selesai = 1;
		OPEN cariselesai;
		REPEAT
			FETCH cariselesai INTO id_service_c,tgl_selesai_c,no_tlp_c;
			IF (tgl_selesai_c<=CURDATE()) THEN
				SET is_selesai = 1;
			END IF;
			IF NOT selesai AND is_selesai THEN
				SET id_service_s = (SELECT id_service FROM tb_messages WHERE id_service=id_service_c);
				IF id_service_s IS NULL THEN
					INSERT INTO tb_messages(id_service,messages,no_tlp)
					VALUES(id_service_c,CONCAT("Perbaikan dengan id service : ",id_service_c,
					" milik anda telah selesai. Anda dapat mengambilnya di toko kami"),no_tlp_c);
				END IF;
			END IF;
			SET is_selesai = 0;
		UNTIL selesai
		END REPEAT;
		CLOSE cariselesai;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_crud_member` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_crud_member` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`ricoferdian`@`%` PROCEDURE `sp_crud_member`(in task_type tinyint(1), in id_member_in int,in nama_in varchar(80),in alamat_in varchar(255)
    ,in no_tlp_in varchar(16))
BEGIN
		if task_type=1 then
			insert into tb_member(nama,alamat,no_tlp) values(nama_in,alamat_in,no_tlp_in);
		elseif task_type=2 THEN
			update tb_member set nama=nama_in,alamat=alamat_in,no_tlp=no_tlp_in where id_member=id_member_in;
		elseif task_type=3 THEN
			delete from tb_member where id_member=id_member_in;
		end if;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_crud_produk` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_crud_produk` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`ricoferdian`@`%` PROCEDURE `sp_crud_produk`(in task_type tinyint(1),in id_produk_in int, in id_kategori_in int,
    in id_merek_in int, in nama_in varchar(80), in stok_in int, in harga_jual_in decimal(12,2), in harga_beli_in decimal(12,2),
    in deskripsi_in text, in spare_parts_in tinyint(1))
BEGIN
		IF task_type=1 THEN
			INSERT INTO tb_produk(id_kategori,id_merek,nama,stok,harga_jual,harga_beli,deskripsi,spare_parts)
			values(id_kategori_in,id_merek_in,nama_in,stok_in,harga_jual_in,harga_beli_in,deskripsi_in,spare_parts_in);
		ELSEIF task_type=2 THEN
			UPDATE tb_produk set id_kategori=id_kategori_in,id_merek=id_merek_in,nama=nama_in,
			stok=stok_in,harga_jual=harga_jual_in,harga_beli=harga_beli_in,deskripsi=deskripsi_in,
			spare_parts=spare_parts_in WHERE id_produk=id_produk_in;
		ELSEIF task_type=3 THEN
			DELETE FROM tb_produk WHERE id_produk=id_produk_in;
		END IF;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_login` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_login` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`ricoferdian`@`%` PROCEDURE `sp_login`(IN username_in VARCHAR(50), IN password_in VARCHAR(50))
BEGIN
		SET @loggedin_id = NULL;
		SET @loggedin_id = (SELECT id_pegawai FROM tb_pegawai WHERE username=username_in AND `password`=password_in);
		IF @loggedin_id IS NULL THEN
			SELECT "username atau password salah";
		ELSE
			set @role_work_in = (SELECT id_jabatan FROM tb_pegawai WHERE id_pegawai=@loggedin_id);
			SELECT "login sukses";
		END IF;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_member_penjualan` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_member_penjualan` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`ricoferdian`@`%` PROCEDURE `sp_member_penjualan`(in id_pegawai_in int,in id_member_in int,
    out id_penjualan int)
BEGIN
		insert into tb_penjualan(id_pegawai,id_member,`status`)
		values(id_pegawai_in,id_member_in,0);
		SET id_penjualan = (SELECT LAST_INSERT_ID() FROM tb_penjualan LIMIT 1); 
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_member_service` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_member_service` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`ricoferdian`@`%` PROCEDURE `sp_member_service`(IN id_pegawai_in INT,IN id_member_in INT, in produk_in varchar(80),
    in no_tlp_in varchar(16),OUT id_service INT)
BEGIN
		INSERT INTO tb_service(id_pegawai,id_member,produk,no_tlp)
		VALUES(id_pegawai_in,id_member_in,produk_in,no_tlp_in);
		SET id_service = (SELECT LAST_INSERT_ID() FROM tb_service LIMIT 1); 
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_report_allservice_belumdiambil` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_report_allservice_belumdiambil` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`ricoferdian`@`%` PROCEDURE `sp_report_allservice_belumdiambil`()
BEGIN
		SELECT tb_service.`tgl_selesai`,tb_member.`nama`,
		COUNT(id_detail_service) AS jumlah_barang_diservice,tb_service.biaya, tb_service.`biaya_spare_part` FROM tb_service
		INNER JOIN tb_member ON tb_member.`id_member`=tb_service.`id_member`
		left JOIN tb_detail_service ON tb_detail_service.`id_service`=tb_service.`id_service`
		WHERE tb_service.`tgl_selesai`<=CURDATE() AND tb_service.`status`<3 AND tb_service.`status`>0
		GROUP BY tb_service.`id_service`;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_report_palingdibeli` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_report_palingdibeli` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`ricoferdian`@`%` PROCEDURE `sp_report_palingdibeli`(IN tgl_awal DATE,IN tgl_akhir DATE)
BEGIN
		SELECT tb_produk.nama,tb_detail_penjualan.id_produk,COUNT(*) AS jumlah_penjualan FROM tb_detail_penjualan
		INNER JOIN tb_produk ON tb_produk.id_produk=tb_detail_penjualan.`id_produk`
		INNER JOIN tb_penjualan ON tb_penjualan.`id_penjualan`=tb_detail_penjualan.`id_penjualan`
		WHERE tgl_transaksi >= tgl_awal AND tgl_transaksi <= tgl_akhir
		GROUP BY id_produk ORDER BY jumlah_penjualan DESC;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_report_palingdipakai` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_report_palingdipakai` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`ricoferdian`@`%` PROCEDURE `sp_report_palingdipakai`(IN tgl_awal DATE,IN tgl_akhir DATE)
BEGIN

		SELECT tb_produk.nama,tb_detail_service.id_produk,COUNT(*) AS jumlah_pemakaian FROM tb_detail_service

		INNER JOIN tb_produk ON tb_produk.id_produk=tb_detail_service.`id_produk`

		INNER JOIN tb_service ON tb_service.`id_service`=tb_detail_service.`id_service`

		WHERE tgl_selesai >= tgl_awal AND tgl_selesai <= tgl_akhir

		GROUP BY id_produk ORDER BY jumlah_pemakaian DESC;

	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_report_pendapatan_penjualan_periode` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_report_pendapatan_penjualan_periode` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`ricoferdian`@`%` PROCEDURE `sp_report_pendapatan_penjualan_periode`(IN tgl_awal DATE,IN tgl_akhir DATE)
BEGIN
		SELECT tb_penjualan.`tgl_transaksi`,SUM(tb_penjualan.total_biaya) AS total_pendapatan,
		COUNT(DISTINCT tb_penjualan.`id_penjualan`) AS jumlah_transaksi,
		SUM(tb_detail_penjualan.`jumlah`) AS jumlah_produk_terjual
		FROM tb_penjualan
		INNER JOIN tb_detail_penjualan ON tb_detail_penjualan.`id_penjualan`=tb_penjualan.`id_penjualan`
		WHERE tb_penjualan.`tgl_transaksi`<=tgl_akhir AND tb_penjualan.`tgl_transaksi`>=tgl_awal;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_report_pendapatan_service_periode` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_report_pendapatan_service_periode` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`ricoferdian`@`%` PROCEDURE `sp_report_pendapatan_service_periode`(IN tgl_awal DATE,IN tgl_akhir DATE)
BEGIN
		SELECT tb_service.`tgl_selesai` AS tgl_transaksi,SUM(tb_service.biaya) AS pendapatan_layanan,
		SUM(tb_service.biaya_spare_part) AS pendapatan_dari_sparepart,
		COUNT(DISTINCT tb_service.`id_service`) AS jumlah_transaksi_service,
		SUM(tb_detail_service.`jumlah`) AS jumlah_sparepart_terjual
		FROM tb_service
		LEFT JOIN tb_detail_service ON tb_detail_service.`id_service`=tb_service.`id_service`
		WHERE tb_service.`tgl_selesai`<=tgl_akhir AND tb_service.`tgl_selesai`>=tgl_awal;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_crud_service` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_crud_service` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`ricoferdian`@`%` PROCEDURE `sp_crud_service`(IN task_type tinyint(1), in id_service_in int,
    in id_pegawai_in int, in id_member_in int, in produk_in varchar(80), in tgl_service_in date, in tgl_selesai_in date,
    in no_tlp_in varchar(16), in biaya_in int, in status_in int)
BEGIN
		IF task_type=1 THEN
			INSERT INTO tb_service(id_pegawai,id_member,produk,tgl_service,tgl_selesai,no_tlp,biaya,`status`)
			values(id_pegawai_in,id_member_in,produk_in,tgl_service_in,tgl_selesai_in,no_tlp_in,biaya_in,status_in);
		ELSEIF task_type=2 THEN
			UPDATE tb_service SET
			produk=produk_in,tgl_service=tgl_service_in,tgl_selesai=tgl_selesai_in,no_tlp=no_tlp_in,
			biaya=biaya_in,`status`=status_in WHERE id_service=id_service_in;
		ELSEIF task_type=3 THEN
			DELETE FROM tb_service WHERE id_service=id_service_in;
		ELSEIF task_type=22 THEN
			UPDATE tb_service SET id_pegawai=id_pegawai_in,id_member=id_member_in,
			produk=produk_in,tgl_service=tgl_service_in,tgl_selesai=tgl_selesai_in,no_tlp=no_tlp_in,
			biaya=biaya_in,`status`=status_in WHERE id_service=id_service_in;
		END IF;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_manage_pegawai` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_manage_pegawai` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`ricoferdian`@`%` PROCEDURE `sp_manage_pegawai`(IN `role` int,in task int,IN id_pegawai_in INT,IN nip_in VARCHAR(15),
    IN nama_in VARCHAR(80),IN alamat_in VARCHAR(255),IN no_tlp_in VARCHAR(16),
    IN username_in VARCHAR(50), IN password_in VARCHAR(50),IN id_jabatan_in INT)
BEGIN
	IF `role`=1 THEN
		if task=0 then
			INSERT INTO tb_pegawai(`nip`,`nama`,`alamat`,`no_tlp`,`username`,`password`,`id_jabatan`)
			VALUES(nip_in,nama_in,alamat_in,no_tlp_in,username_in,password_in,id_jabatan_in);
		elseIF task=1 THEN
			update tb_pegawai set `nip`=nip_in,`nama`=nama_in,`alamat`=alamat_in
			,`no_tlp`=no_tlp_in,`username`=username_in,`password`=password_in,`id_jabatan`=id_jabatan_in
			where id_pegawai=id_pegawai_in;
		ELSEIF task=2 THEN
			delete from tb_pegawai WHERE id_pegawai=id_pegawai_in;
		end if;
	ELSE
		UPDATE tb_pegawai SET username=username_in, `password`=password_in WHERE id_pegawai=id_pegawai_in;
	END IF;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_member_belisekarang` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_member_belisekarang` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`ricoferdian`@`%` PROCEDURE `sp_member_belisekarang`(in id_penjualan_in int)
BEGIN
		DECLARE selesai INT DEFAULT 0;
		DECLARE id_produk_pros INT;
		DECLARE jumlah_pros INT;
		
		DECLARE bawapulang CURSOR FOR
			SELECT id_produk,jumlah FROM tb_detail_penjualan WHERE id_penjualan=id_penjualan_in;
		DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET selesai = 1;
		
		OPEN bawapulang;
		WHILE NOT selesai DO
			FETCH bawapulang INTO id_produk_pros,jumlah_pros;
			IF NOT selesai THEN
				UPDATE tb_produk SET stok=(tb_produk.stok-jumlah_pros)
				WHERE id_produk=id_produk_pros;
			END IF;
		END WHILE;
		CLOSE bawapulang;
		
		UPDATE tb_penjualan SET `status`=1,tgl_transaksi=CURDATE(),
		total_biaya=(SELECT SUM(harga_jual) FROM tb_detail_penjualan WHERE id_penjualan=id_penjualan_in) 
		WHERE id_penjualan=id_penjualan_in;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_member_detailpenjualan` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_member_detailpenjualan` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`ricoferdian`@`%` PROCEDURE `sp_member_detailpenjualan`(IN id_produk_in INT,IN id_penjualan_in INT,in jumlah_in int)
BEGIN
		DECLARE harga_barang DECIMAL(12,2) default null;
		declare id_detail_s int default null;
		SET id_detail_s = (select id_detail_penjualan from tb_detail_penjualan where id_penjualan=id_penjualan_in
		and id_produk=id_produk_in);
		SET harga_barang = (SELECT harga_jual FROM tb_produk WHERE tb_produk.id_produk = id_produk_in
		and tb_produk.stok>0);
		IF harga_barang IS NOT NULL THEN
			if id_detail_s is not null then
				update tb_detail_penjualan set jumlah=jumlah_in;
			else
				insert into tb_detail_penjualan(id_penjualan,id_produk,jumlah,harga_jual)
				values(id_penjualan_in,id_produk_in,jumlah_in,harga_barang);
			end if;
		ELSE
			SELECT "stok barang habis atau barang tidak tersedia";
		END IF;

	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_member_detailservice` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_member_detailservice` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`ricoferdian`@`%` PROCEDURE `sp_member_detailservice`(IN id_produk_in INT,IN id_service_in INT,IN jumlah_in INT)
BEGIN
		DECLARE harga_barang DECIMAL(12,2) DEFAULT NULL;
		DECLARE id_detail_s INT DEFAULT NULL;
		SET id_detail_s = (SELECT id_detail_service FROM tb_detail_service WHERE id_service=id_service_in
		AND id_produk=id_produk_in);
		SET harga_barang = (SELECT harga_jual FROM tb_produk WHERE tb_produk.id_produk = id_produk_in
		AND tb_produk.stok>0);
		IF harga_barang IS NOT NULL THEN
			IF id_detail_s IS NOT NULL THEN
				UPDATE tb_detail_penjualan SET jumlah=jumlah_in;
			ELSE
				INSERT INTO tb_detail_service(id_service,id_produk,jumlah,harga_spare_part)
				VALUES(id_service_in,id_produk_in,jumlah_in,harga_barang);
			END IF;
		ELSE
			SELECT "stok barang habis atau barang tidak tersedia";
		END IF;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_member_servicesekarang` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_member_servicesekarang` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`ricoferdian`@`%` PROCEDURE `sp_member_servicesekarang`(IN id_service_in INT,in tgl_selesai_in date,in biaya_in decimal(12,2))
BEGIN
		DECLARE selesai INT DEFAULT 0;
		DECLARE id_produk_pros INT;
		DECLARE jumlah_pros INT;
		
		DECLARE bawapulang CURSOR FOR
			SELECT id_produk,jumlah FROM tb_detail_service WHERE id_service=id_service_in;
		DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET selesai = 1;
		
		OPEN bawapulang;
		WHILE NOT selesai DO
			FETCH bawapulang INTO id_produk_pros,jumlah_pros;
			IF NOT selesai THEN
				UPDATE tb_produk SET stok=(tb_produk.stok-jumlah_pros)
				WHERE id_produk=id_produk_pros;
			END IF;
		END WHILE;
		CLOSE bawapulang;
		
		UPDATE tb_service SET `status`=1,tgl_service=CURDATE(),tgl_selesai=tgl_selesai_in,
		biaya=biaya_in,biaya_spare_part=(select sum(harga_spare_part) from tb_detail_service where id_service=id_service_in)
		WHERE id_service=id_service_in;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_report_penjualan` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_report_penjualan` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`ricoferdian`@`%` PROCEDURE `sp_report_penjualan`(in report_type tinyint(1))
BEGIN

	IF report_type=0 THEN

		SELECT tb_penjualan.`tgl_transaksi`,SUM(tb_penjualan.total_biaya) AS total_pendapatan,

		COUNT(DISTINCT tb_penjualan.`id_penjualan`) AS jumlah_transaksi,

		SUM(tb_detail_penjualan.`jumlah`) AS jumlah_produk_terjual

		FROM tb_penjualan

		INNER JOIN tb_detail_penjualan ON tb_detail_penjualan.`id_penjualan`=tb_penjualan.`id_penjualan`

		WHERE tb_penjualan.`tgl_transaksi`<=CURDATE() AND tb_penjualan.`tgl_transaksi`>=DATE_SUB(CURDATE(),INTERVAL 1 YEAR)

		GROUP BY tb_penjualan.`tgl_transaksi`;

	ELSEIF report_type=1 THEN

		SELECT tb_penjualan.`tgl_transaksi`,SUM(tb_penjualan.total_biaya) AS total_pendapatan,

		COUNT(DISTINCT tb_penjualan.`id_penjualan`) AS jumlah_transaksi,

		SUM(tb_detail_penjualan.`jumlah`) AS jumlah_produk_terjual

		FROM tb_penjualan

		INNER JOIN tb_detail_penjualan ON tb_detail_penjualan.`id_penjualan`=tb_penjualan.`id_penjualan`

		WHERE tb_penjualan.`tgl_transaksi`<=CURDATE() AND tb_penjualan.`tgl_transaksi`>=DATE_SUB(CURDATE(),INTERVAL 1 month)

		GROUP BY tb_penjualan.`tgl_transaksi`;

	ELSEIF report_type=2 THEN

		SELECT tb_penjualan.`tgl_transaksi`,SUM(tb_penjualan.total_biaya) AS total_pendapatan,

		COUNT(DISTINCT tb_penjualan.`id_penjualan`) AS jumlah_transaksi,

		SUM(tb_detail_penjualan.`jumlah`) AS jumlah_produk_terjual

		FROM tb_penjualan

		INNER JOIN tb_detail_penjualan ON tb_detail_penjualan.`id_penjualan`=tb_penjualan.`id_penjualan`

		WHERE tb_penjualan.`tgl_transaksi`<=CURDATE() AND tb_penjualan.`tgl_transaksi`>=DATE_SUB(CURDATE(),INTERVAL 1 week)

		GROUP BY tb_penjualan.`tgl_transaksi`;

	ELSE

		SELECT tb_penjualan.`tgl_transaksi`,SUM(tb_penjualan.total_biaya) AS total_pendapatan,

		COUNT(DISTINCT tb_penjualan.`id_penjualan`) AS jumlah_transaksi,

		SUM(tb_detail_penjualan.`jumlah`) AS jumlah_produk_terjual

		FROM tb_penjualan

		INNER JOIN tb_detail_penjualan ON tb_detail_penjualan.`id_penjualan`=tb_penjualan.`id_penjualan`

		WHERE tb_penjualan.`tgl_transaksi`=CURDATE()

		GROUP BY tb_penjualan.`tgl_transaksi`;

	END IF;



	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_report_service` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_report_service` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`ricoferdian`@`%` PROCEDURE `sp_report_service`(IN report_type TINYINT(1))
BEGIN
	IF report_type=0 THEN
		SELECT tb_service.`tgl_selesai` as tgl_transaksi_selesai,SUM(tb_service.biaya) AS pendapatan_layanan,
		SUM(tb_service.biaya_spare_part) AS pendapatan_dari_sparepart,
		COUNT(DISTINCT tb_service.`id_service`) AS jumlah_transaksi,
		SUM(tb_detail_service.`jumlah`) AS jumlah_sparepart_terjual
		FROM tb_service
		left JOIN tb_detail_service ON tb_detail_service.`id_service`=tb_service.`id_service`
		WHERE tb_service.`tgl_selesai`<=CURDATE() AND tb_service.`tgl_selesai`>=DATE_SUB(CURDATE(),INTERVAL 1 YEAR)
		GROUP BY tb_service.`tgl_selesai`;
	ELSEIF report_type=1 THEN
		SELECT tb_service.`tgl_selesai` AS tgl_transaksi_selesai,SUM(tb_service.biaya) AS pendapatan_layanan,
		SUM(tb_service.biaya_spare_part) AS pendapatan_dari_sparepart,
		COUNT(DISTINCT tb_service.`id_service`) AS jumlah_transaksi,
		SUM(tb_detail_service.`jumlah`) AS jumlah_sparepart_terjual
		FROM tb_service
		LEFT JOIN tb_detail_service ON tb_detail_service.`id_service`=tb_service.`id_service`
		WHERE tb_service.`tgl_selesai`<=CURDATE() AND tb_service.`tgl_selesai`>=DATE_SUB(CURDATE(),INTERVAL 1 month)
		GROUP BY tb_service.`tgl_selesai`;
	ELSEIF report_type=2 THEN
		SELECT tb_service.`tgl_selesai` AS tgl_transaksi_selesai,SUM(tb_service.biaya) AS pendapatan_layanan,
		SUM(tb_service.biaya_spare_part) AS pendapatan_dari_sparepart,
		COUNT(DISTINCT tb_service.`id_service`) AS jumlah_transaksi,
		SUM(tb_detail_service.`jumlah`) AS jumlah_sparepart_terjual
		FROM tb_service
		LEFT JOIN tb_detail_service ON tb_detail_service.`id_service`=tb_service.`id_service`
		WHERE tb_service.`tgl_selesai`<=CURDATE() AND tb_service.`tgl_selesai`>=DATE_SUB(CURDATE(),INTERVAL 1 week)
		GROUP BY tb_service.`tgl_selesai`;
	ELSE
		SELECT tb_service.`tgl_selesai` AS tgl_transaksi_selesai,SUM(tb_service.biaya) AS pendapatan_layanan,
		SUM(tb_service.biaya_spare_part) AS pendapatan_dari_sparepart,
		COUNT(DISTINCT tb_service.`id_service`) AS jumlah_transaksi,
		SUM(tb_detail_service.`jumlah`) AS jumlah_sparepart_terjual
		FROM tb_service
		LEFT JOIN tb_detail_service ON tb_detail_service.`id_service`=tb_service.`id_service`
		WHERE tb_service.`tgl_selesai`=CURDATE()
		GROUP BY tb_service.`tgl_selesai`;
	end if;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_uji_event` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_uji_event` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`ricoferdian`@`%` PROCEDURE `sp_uji_event`()
BEGIN
		DECLARE is_selesai TINYINT(1) DEFAULT 0;
		DECLARE id_service_s INT DEFAULT NULL;
		
		DECLARE id_service_c INT DEFAULT NULL;
		DECLARE tgl_selesai_c DATE DEFAULT NULL;
		DECLARE no_tlp_c varchar(16) default null;
		
		DECLARE selesai TINYINT(1) DEFAULT 0;
		
		DECLARE cariselesai CURSOR FOR
			SELECT id_service,tgl_selesai,no_tlp FROM tb_service;
		DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET selesai = 1;
		OPEN cariselesai;
		REPEAT
			FETCH cariselesai INTO id_service_c,tgl_selesai_c,no_tlp_c;
			IF (tgl_selesai_c<=CURDATE()) THEN
				SET is_selesai = 1;
			END IF;
			IF NOT selesai AND is_selesai THEN
				set id_service_s = (select id_service from tb_messages where id_service=id_service_c);
				if id_service_s is null then
					insert into tb_messages(id_service,messages,no_tlp)
					values(id_service_c,concat("Perbaikan dengan id service : ",id_service_c,
					" milik anda telah selesai. Anda dapat mengambilnya di toko kami"),no_tlp_c);
				end if;
			END IF;
			SET is_selesai = 0;
		UNTIL selesai
		END REPEAT;
		close cariselesai;
	END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
