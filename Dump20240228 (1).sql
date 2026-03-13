-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: bestmeds
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `address` (
  `addressid` int(11) NOT NULL AUTO_INCREMENT,
  `usermobile` varchar(45) DEFAULT NULL,
  `address1` varchar(45) DEFAULT NULL,
  `address2` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `zipcode` varchar(45) DEFAULT NULL,
  `address_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`addressid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (4,'8462054552','Morar','mORA','Chandigarh (UT)','Chandigarh','INDIA','474006',1),(7,NULL,'Morar','Morar','Bihar','Bhagalpur','INDIA','474006',0),(8,'8462054552','Thatipur','Thatipur','Madhya Pradesh','Gwalior','INDIA','474011',0);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `administrator` (
  `emailid` varchar(100) NOT NULL,
  `adminname` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `adminpicture` text,
  PRIMARY KEY (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES ('harry@gmail.com','harry','1234',NULL);
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `banner` (
  `bannerid` int(11) NOT NULL AUTO_INCREMENT,
  `bannerstatus` varchar(100) DEFAULT NULL,
  `bannerpicture` text,
  PRIMARY KEY (`bannerid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES (16,'Active','845ea9a0-de94-464f-aa40-1547dc6b9ecf.jpg'),(21,'Active','adb69d26-202f-47f7-8128-0cf74f1304d5.jpg'),(22,'Active','18d5f674-adbc-4c30-86a8-62594d190da8.jpg'),(23,'Active','22cd0bfe-a9a9-4597-8e58-62b793d1d2a4.jpg');
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoiceno` varchar(45) NOT NULL,
  `storeid` int(11) DEFAULT NULL,
  `storename` varchar(45) DEFAULT NULL,
  `storeaddress` varchar(45) DEFAULT NULL,
  `storegstno` varchar(45) DEFAULT NULL,
  `billcol` varchar(45) DEFAULT NULL,
  `cmobile` varchar(45) DEFAULT NULL,
  `cname` varchar(45) DEFAULT NULL,
  `cadd` varchar(45) DEFAULT NULL,
  `cgstno` varchar(45) DEFAULT NULL,
  `ccard` varchar(45) DEFAULT NULL,
  `notesforitem` longtext,
  `date_register` timestamp NULL DEFAULT NULL,
  `storemobiles` varchar(100) DEFAULT NULL,
  `deliverycharges` varchar(45) DEFAULT NULL,
  `deliveryaddress` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billproduct`
--

DROP TABLE IF EXISTS `billproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `billproduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoiceno` varchar(45) DEFAULT NULL,
  `ptype` varchar(45) DEFAULT NULL,
  `brandname` varchar(45) DEFAULT NULL,
  `brandid` varchar(45) DEFAULT NULL,
  `modelname` varchar(45) DEFAULT NULL,
  `modelid` varchar(45) DEFAULT NULL,
  `categoriesid` varchar(45) DEFAULT NULL,
  `modelno` varchar(45) DEFAULT NULL,
  `hsnmobile` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `discount` varchar(45) DEFAULT NULL,
  `qty` varchar(45) DEFAULT NULL,
  `imeimob` varchar(45) DEFAULT NULL,
  `gstpercent` varchar(45) DEFAULT NULL,
  `register_date` timestamp NULL DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billproduct`
--

LOCK TABLES `billproduct` WRITE;
/*!40000 ALTER TABLE `billproduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `billproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `brands` (
  `brandid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategoryid` int(11) DEFAULT NULL,
  `brandname` varchar(45) DEFAULT NULL,
  `brandicon` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `icon` text,
  PRIMARY KEY (`brandid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (4,1,8,'Dabur',NULL,'popularr','19d22d29-807a-41d3-893e-99ee5371273d.png'),(5,1,8,'Dabur',NULL,'popular','d9cc32a0-a033-490b-b037-a230ca7b5565.png'),(6,1,15,'Patanjali',NULL,'popular','717d822b-7cea-4a14-8847-dbfe923edea6.png'),(7,2,1,'cipla',NULL,'popular','55f8dc64-4e64-4bf2-86cb-654a90758da1.png'),(8,3,10,'mankind',NULL,'popular','af90b9b6-dd79-4a83-be38-4c5ba5bde381.png'),(9,9,16,'Dr.Morepen',NULL,'popular','e1b6a9bd-c512-43bd-8a52-7c6cf8860e39.jpg'),(10,9,17,'Accucheck',NULL,'accucheck','6d97c0fa-cb69-49ae-bd92-0788a603d4d9.png'),(11,9,18,'Apollo',NULL,'popular','824078b6-f5d0-4ccb-9dce-f3708455a152.png'),(12,9,19,'Beurer ',NULL,'Exact checking','fce075fd-db87-4325-ad53-cc1b7e6cc649.png');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cartbanner`
--

DROP TABLE IF EXISTS `cartbanner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cartbanner` (
  `cartbannerid` int(11) NOT NULL AUTO_INCREMENT,
  `bannerstatus` varchar(100) DEFAULT NULL,
  `bannerpicture` text,
  PRIMARY KEY (`cartbannerid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartbanner`
--

LOCK TABLES `cartbanner` WRITE;
/*!40000 ALTER TABLE `cartbanner` DISABLE KEYS */;
INSERT INTO `cartbanner` VALUES (1,'as','ec918113-a019-40df-a184-4b1d965e35bd.jpg'),(2,'as','d4daaf61-2d1b-4802-bd1b-4e8404384a76.jpg'),(3,'as','6b1f9587-950a-4ad4-b593-0668f0c78d13.jpg'),(4,'as','92728845-dfd1-4367-92ff-6c435b568593.jpg');
/*!40000 ALTER TABLE `cartbanner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryname` text,
  `icon` text,
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (2,'Vitamins','e96fc21a-724e-4e7f-bbc6-f96f9fb134fc.jpg'),(3,'Fitness','42156874-446b-4598-9fd8-e662f90ba06e.jpg'),(4,'Cosmetics','7ca03738-37f4-4e8a-ab45-3d776d5eaecd.png'),(6,'Baby Care','c0dbfe76-928f-4503-afd8-d8c09d4d3369.jpeg'),(7,'Covid Essentials','c7bf694b-e2ae-4a0f-b312-f09572fac8a6.jpg'),(8,'Diabetes','56450d9c-faad-49f6-8268-19462491b98d.jpg'),(9,'Devices','77d0cc3b-b2a3-4e88-a29b-ed21c864c215.png');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon`
--

DROP TABLE IF EXISTS `coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `coupon` (
  `couponid` int(11) NOT NULL AUTO_INCREMENT,
  `couponstatus` varchar(45) DEFAULT NULL,
  `couponpicture` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`couponid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon`
--

LOCK TABLES `coupon` WRITE;
/*!40000 ALTER TABLE `coupon` DISABLE KEYS */;
INSERT INTO `coupon` VALUES (5,'Active','e8f4f562-ad38-4c16-af2e-6057ed617775.jpg'),(6,'Active','663e6352-971f-4d29-b5c5-3ad282adf16b.jpg'),(7,'','4ffc3f26-ddbf-417a-bcc7-449be096ba14.jpg'),(8,'','fdb060f9-7977-4fc8-9d22-a117ab58de20.jpg');
/*!40000 ALTER TABLE `coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliverdetails`
--

DROP TABLE IF EXISTS `deliverdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `deliverdetails` (
  `transactionid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employeeid` varchar(45) NOT NULL,
  `currentdate` varchar(45) NOT NULL,
  `currenttime` varchar(45) NOT NULL,
  `orderno` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `reason` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`transactionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliverdetails`
--

LOCK TABLES `deliverdetails` WRITE;
/*!40000 ALTER TABLE `deliverdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `deliverdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveryaddress`
--

DROP TABLE IF EXISTS `deliveryaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `deliveryaddress` (
  `transactionid` int(11) NOT NULL AUTO_INCREMENT,
  `orderno` varchar(45) NOT NULL,
  `address` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`transactionid`,`orderno`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryaddress`
--

LOCK TABLES `deliveryaddress` WRITE;
/*!40000 ALTER TABLE `deliveryaddress` DISABLE KEYS */;
INSERT INTO `deliveryaddress` VALUES (1,'BMA1','Morar,mORA,Chandigarh,Chandigarh (UT),474006'),(2,'BMA2','Morar,mORA,Chandigarh,Chandigarh (UT),474006'),(3,'BMA3','Morar,mORA,Chandigarh,Chandigarh (UT),474006'),(4,'BMA4','Morar,mORA,Chandigarh,Chandigarh (UT),474006'),(5,'BMA1','Morar,mORA,Chandigarh,Chandigarh (UT),474006'),(6,'BMA2','Morar,mORA,Chandigarh,Chandigarh (UT),474006'),(7,'BMA1','Morar,mORA,Chandigarh,Chandigarh (UT),474006'),(8,'BMA2','Morar,mORA,Chandigarh,Chandigarh (UT),474006'),(9,'BMA3','Morar,mORA,Chandigarh,Chandigarh (UT),474006'),(10,'BMA4','Morar,mORA,Chandigarh,Chandigarh (UT),474006'),(11,'BMA5','Morar,mORA,Chandigarh,Chandigarh (UT),474006');
/*!40000 ALTER TABLE `deliveryaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productimages`
--

DROP TABLE IF EXISTS `productimages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `productimages` (
  `productimageid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategoryid` int(11) DEFAULT NULL,
  `brandid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `image` text,
  PRIMARY KEY (`productimageid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productimages`
--

LOCK TABLES `productimages` WRITE;
/*!40000 ALTER TABLE `productimages` DISABLE KEYS */;
INSERT INTO `productimages` VALUES (19,1,4,1,2,'fcbb5cd1-c155-40f5-b47b-d453c911f25c.jpeg'),(20,1,4,1,2,'4493193c-af63-4aad-90cf-792442e65036.jpeg'),(21,1,4,1,2,'bc55d217-759d-49db-9289-7b888eb7690a.jpeg'),(22,2,1,7,4,'373d8717-c817-4120-9be2-b106a8e2f18c.jpg'),(23,2,1,7,4,'11e0d4e8-58ff-45a1-813f-8cdcc24927c5.jpg'),(24,2,1,7,4,'4a9d8bc1-6e18-4e8f-bc6b-bd9726792852.jpg'),(25,2,1,7,4,'bdab6094-4c82-4b73-807d-e5f3411dbfdf.jpg'),(26,2,1,7,4,'12c62ae2-8525-4cd4-90e6-f607f7748eae.jpg');
/*!40000 ALTER TABLE `productimages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productitems`
--

DROP TABLE IF EXISTS `productitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `productitems` (
  `productid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `modelid` varchar(45) DEFAULT NULL,
  `productname` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `picture` longtext,
  `offerprice` varchar(45) NOT NULL,
  `delivery` decimal(10,0) DEFAULT NULL,
  `ratings` decimal(10,0) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `brandid` int(11) DEFAULT NULL,
  `ad` varchar(45) DEFAULT NULL,
  `adstatus` varchar(45) DEFAULT NULL,
  `displaystatus` varchar(45) DEFAULT NULL,
  `subcategoryid` int(11) DEFAULT NULL,
  `totalstock` int(11) DEFAULT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productitems`
--

LOCK TABLES `productitems` WRITE;
/*!40000 ALTER TABLE `productitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `productitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `products` (
  `productid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategoryid` int(11) DEFAULT NULL,
  `brandid` int(11) DEFAULT NULL,
  `productname` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `offerprice` varchar(45) DEFAULT NULL,
  `offertype` varchar(45) DEFAULT NULL,
  `stock` varchar(45) DEFAULT NULL,
  `status` text,
  `salestatus` text,
  `rating` text,
  `picture` text,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,4,1,'oil','tasty',90,'750','festival','9000',NULL,NULL,NULL,'e91e8c26-2ba6-420d-986d-b4cf0f8ea0e5.jpeg'),(2,1,4,1,'sugarfree','asas',90,'90','festival','900','enable','trending','9','147dbaa5-23df-4eb4-8ab4-1ddf167fdd53.jpeg'),(3,1,8,4,'Chyawanprash','Chywanprash',500,'250','Festival','800','trending','trending','9','e4c86ea2-ba18-49b5-91fc-124389eae435.jpg'),(4,2,1,7,'Limcee','only for chewable',250,'100','Festival','800','trending','trending','9','ef13a0a9-7f7e-4e59-bb3a-54f7758b6c4b.jpg'),(5,3,10,8,'Protein Powder','Protein powder',700,'500','Weekend','700','trending','trending','9','f9dfc870-f827-40a3-b034-2eddcb3de44c.jpg'),(6,9,16,9,'Blood Pressure Machine','accuratre check',1200,'600','festival','800','trending','good','9','6d52bd18-9670-4b4c-9228-02becd9f35ed.png'),(7,9,17,10,'GlucoseMonitor','check the sugar level in body',1200,'1000','festival','600','trending','good','9','7dbcacde-e62f-4681-a386-12b36847bd22.png'),(8,9,18,11,'Apollo thermometer','to check body temperature',500,'250','weekend','800','trending','good','9','0d4a94c7-e83d-4729-82cf-7a8a71993a19.png'),(9,9,19,12,'Oximeter','easy to use',900,'700','Festival','900','Trending','good','9','f5cad793-7232-4f47-994f-d4b2b9c311b2.png');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchasedetails`
--

DROP TABLE IF EXISTS `purchasedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `purchasedetails` (
  `transactionid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orderno` varchar(45) NOT NULL,
  `orderdate` date NOT NULL,
  `price` varchar(45) NOT NULL,
  `quantity` varchar(45) DEFAULT NULL,
  `amount` int(10) NOT NULL,
  `discount` varchar(45) NOT NULL,
  `usermailid` varchar(45) NOT NULL,
  `mobileno` varchar(45) NOT NULL,
  `ordertime` varchar(45) NOT NULL,
  `productid` varchar(45) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `deliverstatus` varchar(45) DEFAULT NULL,
  `orderstatus` varchar(45) DEFAULT NULL,
  `notesforitem` longtext,
  `outletid` int(11) NOT NULL,
  `paymenttransactionid` varchar(45) DEFAULT NULL,
  `amountpaid` text,
  `deliverycharges` decimal(10,2) DEFAULT NULL,
  `deliveryaddress` varchar(250) DEFAULT NULL,
  `itc` varchar(45) DEFAULT NULL,
  `picture` longtext,
  PRIMARY KEY (`transactionid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchasedetails`
--

LOCK TABLES `purchasedetails` WRITE;
/*!40000 ALTER TABLE `purchasedetails` DISABLE KEYS */;
INSERT INTO `purchasedetails` VALUES (2,'BMA2','2022-10-19','900',NULL,900,'700','aa@gmail.com','8462054552','14:34','9','Active',NULL,'Home Delivery','Cash On Delivery',5,'','₹2,800.00',0.00,'Morar,mORA,Chandigarh,Chandigarh (UT),474006',NULL,NULL),(3,'BMA3','2022-10-19','250','5',250,'100','aa@gmail.com','8462054552','14:39','4','Active',NULL,'Home Delivery','Cash On Delivery',5,'','₹500.00',0.00,'Morar,mORA,Chandigarh,Chandigarh (UT),474006',NULL,NULL),(4,'BMA4','2022-10-19','500','2',500,'250','aa@gmail.com','8462054552','15:11','8','Cancel Order',NULL,'Home Delivery','Cash On Delivery',5,'','₹500.00',0.00,'Morar,mORA,Chandigarh,Chandigarh (UT),474006',NULL,NULL),(5,'BMA5','2022-10-19','700','1',700,'500','aa@gmail.com','8462054552','17:28','5','Active',NULL,'Home Delivery','Online Paid',5,'pay_KVcaJQ3dWOeNaC','₹500.00',0.00,'Morar,mORA,Chandigarh,Chandigarh (UT),474006',NULL,NULL);
/*!40000 ALTER TABLE `purchasedetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `subcategories` (
  `subcategoryid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategoryname` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `icon` text,
  PRIMARY KEY (`subcategoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategories`
--

LOCK TABLES `subcategories` WRITE;
/*!40000 ALTER TABLE `subcategories` DISABLE KEYS */;
INSERT INTO `subcategories` VALUES (1,2,'health&fitness','chyawanprash,honey etc','4ccdb6cc-edce-422a-acd6-516ba3de97a3.jpeg'),(2,1,'oils','all branded oils','2ab358e8-6cd0-4113-8b11-d1430739a624.jpeg'),(4,1,'Dabur','medicine and daily products','36a5d8c1-cdbe-40c2-8891-c3b734f61d22.jpeg'),(5,3,'Boost ','secret of my energy','5a7ebe1b-5d93-4141-ab7b-7c2f67608ef7.jpeg'),(8,1,'ayurveda','ayurveda','253fa252-7133-4f2c-b0e2-1ceaa1d84dd1.jpg'),(9,2,'Vitamin C','Vitamin','82b70466-dfcd-42b5-99c9-86a1f5842ebc.jpg'),(10,3,'Proteins','Proteins','48870e27-fdd7-40ea-8157-afda2b8bb631.jpg'),(11,3,'Supplements','Supplements','25b60f65-b932-4dd4-a6a0-32066c8a0b71.jpg'),(12,1,'Homopathy','Homopathy','5537d49c-5f0b-435e-b02d-35e3463c1b39.jpg'),(13,4,'Hair Fall','HairFall','86ac96d6-1ac5-4af4-a2ee-c56d50f00762.jpg'),(14,4,'Skin Care','Skin Care','8b6378ef-962d-41aa-aeeb-6bbad7ea7c76.jpg'),(15,1,'Patanjali','Patanjali','08ec609e-142d-464d-8fe4-61a1ed7bdb00.jpg'),(16,9,'Heart','Heart','6979e953-f14c-4277-84a4-d3bc3365d377.png'),(17,9,'Diabetes','Diabetes','ee9847e7-e9e8-4374-ad83-a2489477bdb9.jpg'),(18,9,'thermometer','thermometer','74d2d241-974b-4f8e-beb7-824a26f4cd45.png'),(19,9,'Checkup device','checkup device','aebf3c08-62c1-489e-abca-d4a8b21e4bca.png');
/*!40000 ALTER TABLE `subcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useraddress`
--

DROP TABLE IF EXISTS `useraddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `useraddress` (
  `addressid` int(11) NOT NULL AUTO_INCREMENT,
  `mobileno` varchar(45) DEFAULT NULL,
  `emailid` varchar(45) DEFAULT NULL,
  `pincode` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `landmark` varchar(45) DEFAULT NULL,
  `dmobileno` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`addressid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useraddress`
--

LOCK TABLES `useraddress` WRITE;
/*!40000 ALTER TABLE `useraddress` DISABLE KEYS */;
INSERT INTO `useraddress` VALUES (13,'9174537339',NULL,'474011','Madhya Pradesh','Gwalior','Vishal','Jain','Thatipur','Thatipur','9174537339'),(14,'8462064663',NULL,'474006','Madhya Pradesh','Gwalior','Aditya','Jain','Thatipur','Thatipur','9174537339'),(15,'8462064663',NULL,'282001','Uttar Pradesh','Agra','Aditya ','Jain','Sadar bazar','Agra','9174537339'),(16,'8462054552','e.adijain@gmail.com','474006','Madhya Pradesh','Gwalior','Aditya','Jain','morar','morar','8462054552'),(17,'8462054552','','','','','Aditya','Jain','','','');
/*!40000 ALTER TABLE `useraddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `mobileno` varchar(45) NOT NULL,
  `emailid` varchar(45) NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`mobileno`,`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('8462054552','aa@gmail.com','Aditya','Jain','12345'),('8462054558','e.aa@gmail.com','Add','jaa','12345'),('8462064662','aa@gmail.com','Adii','jain','12345'),('8462064663','e.adijain@gmail.com','Aditya ','Jain','12345');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-28 21:44:43
