-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: DAIRYONDEMAND
-- ------------------------------------------------------
-- Server version	5.7.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `DOD_BUS_OBJECT`
--

DROP TABLE IF EXISTS `DOD_BUS_OBJECT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DOD_BUS_OBJECT` (
  `ROW_ID` mediumint(9) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) DEFAULT NULL,
  `CREATED` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY` mediumint(9) DEFAULT NULL,
  `ACTIVE_FLG` char(1) DEFAULT NULL,
  `DELETED_STATE` char(1) DEFAULT NULL,
  `TENANT_ID` mediumint(9) NOT NULL,
  `hhub_type` varchar(100) NOT NULL,
  PRIMARY KEY (`ROW_ID`),
  KEY `TENANT_ID` (`TENANT_ID`),
  CONSTRAINT `DOD_BUS_OBJECT_ibfk_1` FOREIGN KEY (`TENANT_ID`) REFERENCES `DOD_COMPANY` (`ROW_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DOD_BUS_OBJECT`
--

LOCK TABLES `DOD_BUS_OBJECT` WRITE;
/*!40000 ALTER TABLE `DOD_BUS_OBJECT` DISABLE KEYS */;
INSERT INTO `DOD_BUS_OBJECT` VALUES (1,'COM.HHUB.ABAC.BUSOBJECT.ATTRIBUTE','2017-12-19 08:01:37',CURRENT_TIMESTAMP,NULL,'Y','N',1,'DOD-AUTH-ATTR-LOOKUP'),(2,'COM.HHUB.ABAC.BUSOBJET.AUTHPOLICYATTRIBUTES','2018-01-17 11:29:40',CURRENT_TIMESTAMP,NULL,'Y','N',1,'DOD-AUTH-POLICY-ATTR'),(3,'COM.HHUB.ABAC.BUSOBJECT.POLICY','2018-01-17 11:29:57',CURRENT_TIMESTAMP,NULL,'Y','N',1,'DOD-AUTH-POLICY'),(4,'COM.HHUB.ABAC.BUSOBJECT.COMPANY','2018-04-08 05:26:03',CURRENT_TIMESTAMP,NULL,'Y','N',1,'DOD-COMPANY'),(5,'COM.HHUB.ABAC.BUSOBJECT.VENDORORDERS','2018-04-08 05:26:14',CURRENT_TIMESTAMP,NULL,'Y','N',1,'DOD-VENDOR-ORDERS'),(6,'COM.HHUB.ABAC.BUSOBJECT.ORDER','2018-04-08 05:42:12',CURRENT_TIMESTAMP,NULL,'Y','N',1,'DOD-ORDER'),(7,'USER','2018-09-10 17:22:51',CURRENT_TIMESTAMP,NULL,'Y','N',1,''),(8,'COM.HHUB.ABAC.BUSOBJECT.CUSTOMERWALLET','2018-09-10 17:23:13',CURRENT_TIMESTAMP,NULL,'Y','N',1,'DOD-CUST-WALLET'),(9,'COM.HHUB.ABAC.BUSOBJECT.PRODUCTMASTER','2019-01-08 12:29:37',CURRENT_TIMESTAMP,NULL,'Y','N',1,'DOD-PRD-MASTER'),(10,'SYSTEM','2019-07-26 11:39:20',CURRENT_TIMESTAMP,NULL,'Y','N',1,''),(11,'COM.HHUB.ABAC.BUSOBJET.PAYMENTTRANSACTION','2019-07-26 11:39:50',CURRENT_TIMESTAMP,NULL,'Y','N',1,'DOD-PAYMENT-TRANSACTION'),(12,'COM.HHUB.ABAC.BUSOBJECT.PASSWORDRESET','2019-07-26 11:40:05',CURRENT_TIMESTAMP,NULL,'Y','N',1,'DOD-PASSWORD-RESET'),(13,'COM.HHUB.ABAC.BUSOBJET.VENDORAVAILABILITYDAY','2019-07-26 11:43:04',CURRENT_TIMESTAMP,NULL,'Y','N',1,'DOD-VENDOR-AVAILABILITY-DAY'),(14,'COM.HHUB.ABAC.BUSOBJET.VENDORAPPOINTMENT','2019-07-26 11:43:41',CURRENT_TIMESTAMP,NULL,'Y','N',1,'DOD-VENDOR-APPOINTMENT'),(15,'VENDOR ORDERS','2019-07-26 11:44:28',CURRENT_TIMESTAMP,NULL,'Y','N',1,''),(16,'COM.HHUB.ABAC.BUSOBJET.VENDORTENANTS','2019-07-26 11:44:40',CURRENT_TIMESTAMP,NULL,'Y','N',1,'DOD-VENDOR-TENANTS'),(17,'COM.HHUB.ABAC.BUSOBJET.ROLES','2019-07-26 11:45:11',CURRENT_TIMESTAMP,NULL,'Y','N',1,'DOD-ROLES'),(18,'COM.HHUB.ABAC.BUSOBJET.ORDERITEMS','2019-07-26 11:46:28',CURRENT_TIMESTAMP,NULL,'Y','N',1,'DOD-ORDER-ITEMS'),(19,'COM.HHUB.ABAC.BUSOBJET.ORDERITEMSTRACK','2019-07-26 11:46:51',CURRENT_TIMESTAMP,NULL,'Y','N',1,'DOD-ORDER-ITEMS-TRACK'),(20,'COM.HHUB.ABAC.BUSOBJET.ORDERSUBSCRIPTION','2019-07-26 11:47:51',CURRENT_TIMESTAMP,NULL,'Y','N',1,'DOD-ORD-PREF'),(21,'COM.HHUB.ABAC.BUSOBJECT.PRODUCTCATEGORY','2019-07-26 11:48:44',CURRENT_TIMESTAMP,NULL,'Y','N',1,'DOD-PRD-CATG');
/*!40000 ALTER TABLE `DOD_BUS_OBJECT` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-09 20:06:25
