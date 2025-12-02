-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: db_tabel_bus
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `daftar_bus`
--

DROP TABLE IF EXISTS `daftar_bus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daftar_bus` (
  `id_bus` int(11) NOT NULL AUTO_INCREMENT,
  `nama_bus` varchar(50) DEFAULT NULL,
  `tujuan` varchar(100) DEFAULT NULL,
  `jadwal` varchar(50) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `nama_sopir` varchar(50) DEFAULT NULL,
  `kelas_bus` varchar(20) DEFAULT 'Ekonomi',
  `kapasitas` int(11) DEFAULT 30,
  PRIMARY KEY (`id_bus`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daftar_bus`
--

LOCK TABLES `daftar_bus` WRITE;
/*!40000 ALTER TABLE `daftar_bus` DISABLE KEYS */;
INSERT INTO `daftar_bus` VALUES (1,'Goodwill','Semarang-Lasem','13.00-16.00',49000,'Roni','Ekonomi',25),(2,'CBI','Lebak Bulus-Cileunyi','14.00-17.00',45000,'Ari','AC',40),(3,'Primajasa','Bandung-Merak','10.30-14.00',85000,'Heri','AC',45),(4,'MGI','Tasik-Bogor','10.30-14.00',158000,'Budi Prakoso','Executive',30),(5,'Sinar Jaya','Jakarta-Solo','16.00-04.00',120000,'Agus','AC',50),(6,'Rosalia Indah','Malang-Jakarta','13.00-05.00',250000,'Bambang','Super Executive',32),(7,'Harapan Jaya','Blitar-Jakarta','11.00-04.00',280000,'Joko','Sleeper',20),(8,'Budiman','Tasik-Bandung','05.00-08.00',65000,'Asep','Bisnis',38),(9,'Sugeng Rahayu','Surabaya-Yogya','08.00-15.00',90000,'Slamet','Ekonomi',55),(10,'Eka','Surabaya-Solo','09.00-13.00',110000,'Yanto','Patas',40);
/*!40000 ALTER TABLE `daftar_bus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_bus`
--

DROP TABLE IF EXISTS `info_bus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_bus` (
  `kode_bus` varchar(10) NOT NULL,
  `nama_sopir` varchar(50) DEFAULT NULL,
  `terakhir_dilihat` varchar(50) DEFAULT NULL,
  `warna_bus` varchar(20) DEFAULT NULL,
  `aktivitas_bus` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kode_bus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_bus`
--

LOCK TABLES `info_bus` WRITE;
/*!40000 ALTER TABLE `info_bus` DISABLE KEYS */;
INSERT INTO `info_bus` VALUES ('All_07','Ari','Bandung','Hitam','Berangkat'),('AS_05','Budi Prakoso','Cibitung','Hitam','On The Way'),('AS_30','Roni','Bogor','Merah','Sampai'),('GAL_11','Budi Prakoso','Bandung','Kuning','Berangkat'),('GS_29','Heri','Cikampek','Merah','On The Way'),('HAS_29','Roni','Bandung','Hitam','Berangkat'),('IL_04','Heri','Bogor','Merah','Sampai'),('JAN_17','Budi Prakoso','Cikarang','Putih','On The Way'),('JAN_18','Budi Prakoso','Cikarang','Putih','On The Way'),('SR_13','Ari','Cibitung','Putih','Delay'),('TWI_98','Roni','Cikarang','Putih','On The Way'),('YAN_22','Heri','Cibubur','Kuning','On The Way');
/*!40000 ALTER TABLE `info_bus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keberangkatan`
--

DROP TABLE IF EXISTS `keberangkatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keberangkatan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_depan` varchar(50) DEFAULT NULL,
  `nama_belakang` varchar(50) DEFAULT NULL,
  `stasiun_keberangkatan` varchar(50) DEFAULT NULL,
  `kedatangan` varchar(50) DEFAULT NULL,
  `boarding_time` varchar(10) DEFAULT NULL,
  `jam_sampai` varchar(10) DEFAULT NULL,
  `nomor_kursi` varchar(5) DEFAULT NULL,
  `id_bus` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keberangkatan`
--

LOCK TABLES `keberangkatan` WRITE;
/*!40000 ALTER TABLE `keberangkatan` DISABLE KEYS */;
INSERT INTO `keberangkatan` VALUES (1,'Maria','Rizma','Bandung','Jakarta','18.30','21.20','A1',1,'2025-12-05'),(2,'Defanty','Veninda','Cimahi','Jakarta','18.30','21.20','A2',1,'2025-12-05'),(3,'Giantinisa','Salma','Bandung','Jakarta','18.30','21.20','B1',2,'2025-12-05'),(4,'Yunita','Priatna','Purwakarta','Jakarta','18.30','21.20','B2',2,'2025-12-05'),(5,'Hanifa','Supartiwi','Bekasi','Jakarta','18.30','21.20','C1',3,'2025-12-05'),(6,'Sri','Ayu','Bandung','Jakarta','18.30','21.20','C2',1,'2025-12-05'),(7,'Galuh','Suparman','Cimahi','Jakarta','18.30','21.20','D1',2,'2025-12-05'),(8,'Revan','Laksono','Bogor','Jakarta','19.00','20.30','D2',3,'2025-12-06'),(9,'Dika','Pratama','Bekasi','Jakarta','18.45','19.50','E1',1,'2025-12-06'),(10,'Siti','Aminah','Cikampek','Jakarta','17.00','19.00','E2',2,'2025-12-06');
/*!40000 ALTER TABLE `keberangkatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penumpang`
--

DROP TABLE IF EXISTS `penumpang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penumpang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  `jenis_kelamin` char(1) DEFAULT NULL,
  `usia` int(11) DEFAULT NULL,
  `riwayat_penyakit` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penumpang`
--

LOCK TABLES `penumpang` WRITE;
/*!40000 ALTER TABLE `penumpang` DISABLE KEYS */;
INSERT INTO `penumpang` VALUES (1,'Albila Khairunnisa','P',23,'Tidak ada'),(2,'Triwijaya Galuh','L',56,'Tidak ada'),(3,'Sri Rahma Ayu','P',12,'Tidak ada'),(4,'Mahesa Narendra','L',34,'Asma (Sesak Napas)'),(5,'Naura Nadhifa','P',21,'Vertigo'),(6,'Budi Santoso','L',45,'Hipertensi'),(7,'Siti Aminah','P',29,'Tidak ada'),(8,'Revan Laksono','L',17,'Tidak ada'),(9,'Dinda Kirana','P',19,'Maag'),(10,'Agus Setiawan','L',30,'Tidak ada');
/*!40000 ALTER TABLE `penumpang` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-02 10:36:20
