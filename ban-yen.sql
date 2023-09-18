-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: localhost    Database: cuong_dz_nhat_hn
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` int NOT NULL,
  `description` varchar(45) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `banner` longtext,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'THƯỢNG VY YẾN','thuong-vy-yen','https://theme.hstatic.net/200000404397/1001052028/14/banner_htp_1.jpg?v=167'),(2,'THƯỢNG VY SÂM','thuong-vy-sam','https://theme.hstatic.net/200000404397/1001052028/14/2_banner_htp_1_master.jpg?v=167');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `media_id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `source` longtext,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`media_id`),
  KEY `fk_constrainst_product3_idx` (`product_id`),
  CONSTRAINT `fk_constrainst_product3` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,NULL,'image','https://product.hstatic.net/200000404397/product/tinh_che_1-3_78c2ea10b5e5460fa89756a986a46e6a_master.jpg',1),(2,NULL,'image','https://product.hstatic.net/200000404397/product/tinh_che_1-10_6b7503d015b044ab811c6798a8aeaeed_master.jpg',1),(3,NULL,'image','https://product.hstatic.net/200000404397/product/tinh_che_1-8_ad1ec4a982b043e59f7f73416d300d4a_master.jpg',1),(4,NULL,'image','https://product.hstatic.net/200000404397/product/hop_ef36ee5417df4e3786c7a12eabd2fa9f_master.jpg',1);
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `order_name` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `province` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `ward` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `fk_constrainst_user_idx` (`user_id`),
  CONSTRAINT `fk_constrainst_user2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'ádfasdfadsf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'sdafasdf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Phương Nam Cơm Chó',NULL,'2023-09-15 11:38:00','pending','phuongnamcho@gmail.com','091234567','36 Mễ Trì','Tỉnh Hà Giang','Huyện Mèo Vạc','Xã Xín Cái'),(6,'Phương Nam Cơm Chó',NULL,'2023-09-15 11:40:20','pending','phuongnamcho@gmail.com','091234567','36 Mễ Trì','Tỉnh Hà Giang','Huyện Mèo Vạc','Xã Xín Cái'),(7,'Phương Nam Cơm Chó',NULL,'2023-09-15 11:43:19','pending','phuongnamcho@gmail.com','091234567','36 Mễ Trì','Tỉnh Hà Giang','Huyện Mèo Vạc','Xã Xín Cái'),(8,'Phương Nam Cơm Chó',NULL,'2023-09-15 11:44:56','pending','phuongnamcho@gmail.com','091234567','36 Mễ Trì','Tỉnh Hà Giang','Huyện Mèo Vạc','Xã Xín Cái'),(9,'Phương Nam Cơm Chó',NULL,'2023-09-15 13:42:37','pending','phuongnamcho@gmail.com','091234567','36 Mễ Trì','Tỉnh Hà Giang','Huyện Mèo Vạc','Xã Xín Cái'),(10,'Phương Nam Cơm Chó',NULL,'2023-09-15 13:46:38','pending','phuongnamcho@gmail.com','091234567','36 Mễ Trì','Tỉnh Hà Giang','Huyện Mèo Vạc','Xã Xín Cái'),(11,'Phương Nam Cơm Chó',NULL,'2023-09-15 13:52:32','pending','phuongnamcho@gmail.com','091234567','36 Mễ Trì','Tỉnh Hà Giang','Huyện Mèo Vạc','Xã Xín Cái'),(12,'Phương Nam Cơm Chó',NULL,'2023-09-15 13:56:15','pending','phuongnamcho@gmail.com','091234567','36 Mễ Trì','Tỉnh Hà Giang','Huyện Mèo Vạc','Xã Xín Cái'),(13,'Phương Nam Cơm Chó',NULL,'2023-09-15 13:57:00','pending','phuongnamcho@gmail.com','091234567','36 Mễ Trì','Tỉnh Hà Giang','Huyện Mèo Vạc','Xã Xín Cái'),(14,'Giang Mai',NULL,'2023-09-15 14:22:15','pending','giangmai@gmail.com','0981231232','36 Mễ Trì','Thành phố Hà Nội','Quận Ba Đình','Phường Phúc Xá'),(15,'Minh Cường',NULL,'2023-09-15 16:50:48','pending','cuongtm@gmail.com','0981231232','36 Mễ Trì','Tỉnh Hà Giang','Huyện Mèo Vạc','Xã Xín Cái'),(16,'Minh Cường',NULL,'2023-09-15 16:56:04','pending','cuongtm@gmail.com','','','Tỉnh Bắc Kạn','Huyện Ba Bể','Xã Hà Hiệu'),(17,'cuongtm@gmail.com',NULL,'2023-09-15 17:00:09','pending','cuongtm@gmail.com','','','Tỉnh Bắc Kạn','Huyện Ba Bể','Xã Phúc Lộc'),(18,'ádfasdfasd',NULL,'2023-09-15 17:02:40','pending','adsfasdfasdf','','','','',''),(19,'adfasfasdf',NULL,'2023-09-15 17:04:25','pending','ádfadsfads','','','','',''),(20,'',NULL,'2023-09-15 17:06:06','pending','','','','','',''),(21,'Trần Minh Cường',NULL,'2023-09-16 22:19:07','pending','cuongtm@gmail.com','0973712395','8 Lâm Hạ','Thành phố Hà Nội','Quận Long Biên','Phường Ngọc Thụy'),(22,'ádfasdf',NULL,'2023-09-16 22:24:11','pending','ádfadsf','ádfasdf','ádfasdfadsf','Tỉnh Hà Giang','Huyện Mèo Vạc','Xã Pải Lủng'),(23,'dfasdfdasf',NULL,'2023-09-16 22:24:57','pending','ádfadsf','adsfadsf','ádfadsfadsf','Tỉnh Cao Bằng','Huyện Hà Quảng','Xã Đa Thông'),(24,'adsfasdfas',NULL,'2023-09-16 22:25:35','pending','fadsfadsfas','fasdfdasf','ádfadsfasdfdasfdasfasf','Tỉnh Hà Giang','Huyện Yên Minh','Xã Sủng Tráng'),(25,'Trần Minh Cường',NULL,'2023-09-16 22:28:39','pending','tranminhcuong3101@gmail.com','09737312395','37 Lâm Hạ','Tỉnh Cao Bằng','Huyện Hạ Lang','Xã Đức Quang'),(26,'',NULL,'2023-09-16 22:57:16','pending','','','','Tỉnh Hà Giang','Huyện Mèo Vạc','Xã Xín Cái');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `order_detail_id` int NOT NULL AUTO_INCREMENT,
  `number` varchar(45) DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`order_detail_id`),
  KEY `fk_constrainst_order_idx` (`order_id`),
  KEY `fk_constrainst_product_idx` (`product_id`),
  CONSTRAINT `fk_constrainst_order` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_constrainst_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (1,'4',13,1),(2,'3',13,2),(3,'4',14,1),(4,'3',14,2),(5,'4',15,1),(6,'4',15,4),(7,'4',16,1),(8,'8',17,1),(9,'6',17,2),(10,'4',18,1),(11,'4',18,2),(12,'3',19,1),(13,'4',19,2),(14,'3',20,NULL),(15,'4',20,NULL),(16,'3',20,3),(17,'2',21,2),(18,'5',21,1),(19,'3',22,1),(20,'3',23,3),(21,'6',23,1),(22,'4',24,2),(23,'4',24,3),(24,'5',24,1),(25,'6',25,2),(26,'11',26,1);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `number` int NOT NULL,
  `price` int NOT NULL,
  `sale` double DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `fk_constrainst_category_idx` (`category_id`),
  CONSTRAINT `fk_constrainst_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Tổ Yến',10,55000,0.5,1),(2,'Yến Chưng',20,100000,0.3,1),(3,'Yến Chưng Ngàn Năm',30,200000,0.5,1),(4,'Sâm Dứa',30,10000,0.5,2),(5,'Nước Sâm 300',30,10000,0.5,2),(6,'Sâm Hầm Cafe',20,10000,0.5,2);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profile` (
  `user_id` int NOT NULL,
  `street` varchar(45) DEFAULT NULL,
  `suite` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `zipcode` int DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fk_constrainst_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `tag_id` int NOT NULL,
  `tag_name` varchar(45) NOT NULL,
  `color` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_product`
--

DROP TABLE IF EXISTS `tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag_product` (
  `tag_product_id` int NOT NULL,
  `tag_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`tag_product_id`),
  KEY `fk_constrainst_tag_idx` (`tag_id`),
  KEY `fk_constrainst_product2_idx` (`product_id`),
  CONSTRAINT `fk_constrainst_product2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_constrainst_tag` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_product`
--

LOCK TABLES `tag_product` WRITE;
/*!40000 ALTER TABLE `tag_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-18  8:15:30
