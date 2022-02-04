-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 3.128.250.42    Database: ConsitiPOS
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

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
-- Table structure for table `TRAN_HEAD`
--

DROP TABLE IF EXISTS `TRAN_HEAD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TRAN_HEAD` (
  `STORE_DAY_SEQ_NO` int NOT NULL,
  `REV_NO` int NOT NULL,
  `REGISTER` varchar(5) DEFAULT NULL,
  `TRAN_NO` int DEFAULT NULL,
  `CASHIER` varchar(10) DEFAULT NULL,
  `SALESPERSON` varchar(10) DEFAULT NULL,
  `TRAN_TYPE` varchar(6) NOT NULL,
  `SUB_TRAN_TYPE` varchar(6) DEFAULT NULL,
  `ORIG_TRAN_NO` int DEFAULT NULL,
  `ORIG_TRAN_TYPE` varchar(6) DEFAULT NULL,
  `ORIG_REG_NO` varchar(5) DEFAULT NULL,
  `REF_NO1` varchar(30) DEFAULT NULL,
  `REF_NO2` varchar(30) DEFAULT NULL,
  `REF_NO3` varchar(30) DEFAULT NULL,
  `REF_NO4` varchar(30) DEFAULT NULL,
  `REASON_CODE` varchar(6) DEFAULT NULL,
  `VENDOR_NO` varchar(10) DEFAULT NULL,
  `VENDOR_INVC_NO` varchar(30) DEFAULT NULL,
  `PAYMENT_REF_NO` varchar(16) DEFAULT NULL,
  `PROOF_OF_DELIVERY_NO` varchar(30) DEFAULT NULL,
  `STATUS` varchar(6) NOT NULL,
  `VALUE` int DEFAULT NULL,
  `POS_TRAN_IND` varchar(1) NOT NULL,
  `UPDATE_DATETIME` date NOT NULL,
  `UPDATE_ID` varchar(30) NOT NULL,
  `ERROR_IND` varchar(1) NOT NULL,
  `BANNER_NO` int DEFAULT NULL,
  `CUST_ORDER_NO` varchar(30) DEFAULT NULL,
  `CUST_ORDER_DATE` date DEFAULT NULL,
  `ROUNDED_AMT` int DEFAULT NULL,
  `ROUNDED_OFF_AMT` int DEFAULT NULL,
  `CREDIT_PROMOTION_ID` int DEFAULT NULL,
  `REF_NO25` varchar(30) DEFAULT NULL,
  `REF_NO26` varchar(30) DEFAULT NULL,
  `REF_NO27` varchar(30) DEFAULT NULL,
  `STORE` int NOT NULL,
  `DAY` int NOT NULL,
  `TRAN_SEQ_NO` int NOT NULL,
  `TRAN_DATETIME` date NOT NULL,
  PRIMARY KEY (`STORE`,`DAY`,`TRAN_SEQ_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRAN_HEAD`
--

LOCK TABLES `TRAN_HEAD` WRITE;
/*!40000 ALTER TABLE `TRAN_HEAD` DISABLE KEYS */;
/*!40000 ALTER TABLE `TRAN_HEAD` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-25 10:09:15