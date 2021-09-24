-- MySQL dump 10.13  Distrib 5.7.35, for Linux (x86_64)
--
-- Host: localhost    Database: revenuedb
-- ------------------------------------------------------
-- Server version	5.7.35

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
-- Table structure for table `travel`
--

DROP TABLE IF EXISTS `travel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `travel` (
  `date` text,
  `adUnitName` text,
  `adUnitID` bigint(20) DEFAULT NULL,
  `typetag` bigint(20) DEFAULT NULL,
  `revenueSource` text,
  `market` text,
  `queries` text,
  `clicks` bigint(20) DEFAULT NULL,
  `impressions` bigint(20) DEFAULT NULL,
  `pageRpm` double DEFAULT NULL,
  `impressionRpm` double DEFAULT NULL,
  `trueRevenue` double DEFAULT NULL,
  `coverage` double DEFAULT NULL,
  `ctr` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel`
--

LOCK TABLES `travel` WRITE;
/*!40000 ALTER TABLE `travel` DISABLE KEYS */;
INSERT INTO `travel` VALUES ('01/09/21','ad_unit_name_1',1111111,900001,'traffic','Portugal','2',0,0,0,0,0,0,0),('01/09/21','ad_unit_name_2',1111112,900002,'traffic','France','338',145,341,43.25,42.87,1462,10089,0.42522),('01/09/21','ad_unit_name_3',1111113,900003,'traffic','Netherlands','43',19,43,172.81,172.81,743,10000,0.44186),('01/09/21','ad_unit_name_4',1111114,900004,'traffic','United States','0',0,0,0,0,0,0,0),('01/09/21','ad_unit_name_5',1111115,900005,'traffic','United Kingdom','60',17,60,111.92,111.92,672,10000,0.283333),('01/09/21','ad_unit_name_6',1111116,900006,'traffic','United States','0',0,0,0,0,0,0,0),('01/09/21','ad_unit_name_7',1111117,900007,'traffic','Ireland','0',0,0,0,0,0,0,0),('01/09/21','ad_unit_name_8',1111118,900008,'traffic','Ireland','0',0,0,0,0,0,0,0),('01/09/21','ad_unit_name_9',1111119,900009,'traffic','Ireland','0',0,0,0,0,0,0,0),('01/09/21','ad_unit_name_10',1111120,900010,'traffic','Ireland','0',0,0,0,0,0,0,0),('01/09/21','ad_unit_name_11',1111121,900011,'traffic','Germany','1',1,1,73.17,73.17,7,10000,1),('01/09/21','ad_unit_name_12',1111122,900012,'traffic','Estonia','3',0,0,0,0,0,0,0),('01/09/21','ad_unit_name_13',1111123,900013,'traffic','France','128',32,128,26.04,26.04,333,10000,0.25),('01/09/21','ad_unit_name_14',1111124,900014,'traffic','Greece','2',0,0,0,0,0,0,0),('01/09/21','ad_unit_name_15',1111125,900015,'traffic','Netherlands','58',17,60,53.27,51.49,309,10345,0.283333),('01/09/21','ad_unit_name_16',1111126,900016,'traffic','United States','0',0,0,0,0,0,0,0),('01/09/21','ad_unit_name_17',1111127,900017,'traffic','Netherlands','25',4,25,77.07,77.07,193,10000,0.16),('01/09/21','ad_unit_name_18',1111128,900018,'traffic','United States','0',0,0,0,0,0,0,0),('01/09/21','ad_unit_name_19',1111129,900019,'traffic','Ireland','22',0,22,0,0,0,10000,0),('01/09/21','ad_unit_name_20',1111130,900020,'traffic','Ireland','0',0,0,0,0,0,0,0),('01/09/21','ad_unit_name_21',1111131,900021,'traffic','Ireland','0',0,0,0,0,0,0,0),('01/09/21','ad_unit_name_22',1111132,900022,'traffic','Ireland','2',0,1,0,0,0,5000,0),('01/09/21','ad_unit_name_23',1111133,900023,'traffic','Ireland','0',0,0,0,0,0,0,0),('01/09/21','ad_unit_name_24',1111134,900024,'traffic','Germany','26',12,26,282.67,282.67,735,10000,0.461538),('01/09/21','ad_unit_name_25',1111135,900025,'traffic','Germany','4',3,4,81.3,81.3,33,10000,0.75),('01/09/21','ad_unit_name_26',1111136,900026,'traffic','United Kingdom','1',0,1,0,0,0,10000,0),('01/09/21','ad_unit_name_27',1111137,900027,'traffic','United Kingdom','9',3,9,81.3,81.3,73,10000,0.333333),('01/09/21','ad_unit_name_28',1111138,900028,'traffic','Ireland','2',0,2,0,0,0,10000,0),('01/09/21','ad_unit_name_29',1111139,900029,'traffic','Norway','375',152,376,130.36,130.02,4889,10027,0.404255),('01/09/21','ad_unit_name_30',1111140,900030,'traffic','France','138',62,139,39.24,38.95,541,10072,0.446043),('01/09/21','ad_unit_name_31',1111141,900031,'traffic','France','9',2,9,39.75,39.75,36,10000,0.222222),('01/09/21','ad_unit_name_32',1111142,900032,'traffic','United States','1',0,1,0,0,0,10000,0),('01/09/21','ad_unit_name_33',1111143,900033,'traffic','United States','3',0,3,0,0,0,10000,0),('01/09/21','ad_unit_name_34',1111144,900034,'traffic','Ireland','0',0,0,0,0,0,0,0),('01/09/21','ad_unit_name_35',1111145,900035,'traffic','Ireland','2',0,2,0,0,0,10000,0),('01/09/21','ad_unit_name_36',1111146,900036,'traffic','Ireland','0',0,0,0,0,0,0,0),('01/09/21','ad_unit_name_37',1111147,900037,'traffic','Ireland','2',0,1,0,0,0,5000,0),('01/09/21','ad_unit_name_38',1111148,900038,'traffic','Ireland','0',0,0,0,0,0,0,0),('01/09/21','ad_unit_name_39',1111149,900039,'traffic','United States','2',1,2,178.86,178.86,36,10000,0.5),('01/09/21','ad_unit_name_40',1111150,900040,'traffic','Sweden','90',35,92,104.7,102.42,942,10222,0.380435),('01/09/21','ad_unit_name_41',1111151,900041,'traffic','Sweden','188',49,188,98.47,98.47,1851,10000,0.260638),('01/09/21','ad_unit_name_42',1111152,900042,'traffic','United States','59',24,60,291.03,286.18,1717,10169,0.4),('01/09/21','ad_unit_name_43',1111153,900043,'traffic','Norway','18',6,17,165.76,175.51,298,9444,0.352941),('01/09/21','ad_unit_name_44',1111154,900044,'traffic','Netherlands','57',13,54,97.7,103.13,557,9474,0.240741),('01/09/21','ad_unit_name_45',1111155,900045,'traffic','United States','0',0,0,0,0,0,0,0),('01/09/21','ad_unit_name_46',1111156,900046,'traffic','United States','0',0,0,0,0,0,0,0),('01/09/21','ad_unit_name_47',1111157,900047,'traffic','United States','0',0,0,0,0,0,0,0),('01/09/21','ad_unit_name_48',1111158,900048,'traffic','Spain','1',1,1,56.91,56.91,6,10000,1),('01/09/21','ad_unit_name_49',1111159,900049,'traffic','Spain','1',0,1,0,0,0,10000,0),('01/09/21','ad_unit_name_50',1111160,900050,'traffic','United States','8',0,6,0,0,0,7500,0),('01/09/21','ad_unit_name_51',1111161,900051,'traffic','France','17',6,17,106.17,106.17,180,10000,0.352941),('01/09/21','ad_unit_name_52',1111162,900052,'traffic','Netherlands','1',0,1,0,0,0,10000,0),('01/09/21','ad_unit_name_53',1111163,900053,'traffic','France','386',74,387,17.54,17.5,677,10026,0.191214),('01/09/21','ad_unit_name_54',1111164,900054,'traffic','Switzerland','27',10,27,128.27,128.27,346,10000,0.37037),('01/09/21','ad_unit_name_55',1111165,900055,'traffic','France','22',8,22,205.84,205.84,453,10000,0.363636),('01/09/21','ad_unit_name_56',1111166,900056,'traffic','United States','0',0,0,0,0,0,0,0),('01/09/21','ad_unit_name_57',1111167,900057,'traffic','United States','0',0,0,0,0,0,0,0),('01/09/21','ad_unit_name_58',1111168,900058,'traffic','Denmark','19',12,19,173.3,173.3,329,10000,0.631579),('01/09/21','ad_unit_name_59',1111169,900059,'traffic','Netherlands','81',25,81,114.12,114.12,924,10000,0.308642),('01/09/21','ad_unit_name_60',1111170,900060,'traffic','United States','0',0,0,0,0,0,0,0),('01/09/21','ad_unit_name_61',1111171,900061,'traffic','Denmark','89',37,89,41.56,41.56,370,10000,0.41573),('01/09/21','ad_unit_name_62',1111172,900062,'traffic','Germany','39',16,46,102.35,86.78,399,11795,0.347826),('01/09/21','ad_unit_name_63',1111173,900063,'traffic','Poland','3',0,0,0,0,0,0,0),('01/09/21','ad_unit_name_64',1111174,900064,'traffic','Austria','4',1,4,65.04,65.04,26,10000,0.25),('01/09/21','ad_unit_name_65',1111175,900065,'traffic','United Kingdom','33',12,34,92.14,89.43,304,10303,0.352941),('01/09/21','ad_unit_name_66',1111176,900066,'traffic','United States','25',9,25,167.8,167.8,420,10000,0.36),('01/09/21','ad_unit_name_67',1111177,900067,'traffic','Switzerland','1',0,1,0,0,0,10000,0),('01/09/21','ad_unit_name_68',1111178,900068,'traffic','United Kingdom','5',3,5,134.96,134.96,67,10000,0.6),('01/09/21','ad_unit_name_69',1111179,900069,'traffic','Italy','124',25,122,24.78,25.19,307,9839,0.204918),('01/09/21','ad_unit_name_70',1111180,900070,'traffic','United Kingdom','112',39,112,77.96,77.96,873,10000,0.348214),('01/09/21','ad_unit_name_71',1111181,900071,'traffic','United States','0',0,0,0,0,0,0,0),('01/09/21','ad_unit_name_72',1111182,900072,'traffic','United States','6',1,6,63.68,63.68,38,10000,0.166667),('01/09/21','ad_unit_name_73',1111183,900073,'traffic','Ireland','0',0,0,0,0,0,0,0),('01/09/21','ad_unit_name_74',1111184,900074,'traffic','Ireland','0',0,0,0,0,0,0,0),('01/09/21','ad_unit_name_75',1111185,900075,'traffic','Netherlands','44',24,44,270.88,270.88,1192,10000,0.545455),('01/09/21','ad_unit_name_76',1111186,900076,'traffic','France','1',0,1,0,0,0,10000,0),('01/09/21','ad_unit_name_77',1111187,900077,'traffic','United Kingdom','1',0,1,0,0,0,10000,0),('01/09/21','ad_unit_name_78',1111188,900078,'traffic','Italy','53',16,53,55.53,55.53,294,10000,0.301887),('01/09/21','ad_unit_name_79',1111189,900079,'traffic','United States','78',30,78,137.27,137.27,1071,10000,0.384615),('01/09/21','ad_unit_name_80',1111190,900080,'traffic','United States','18',8,18,106.14,106.14,191,10000,0.444444),('01/09/21','ad_unit_name_81',1111191,900081,'traffic','France','245',40,241,67.69,68.82,1659,9837,0.165975),('01/09/21','ad_unit_name_82',1111192,900082,'traffic','France','171',54,174,84.15,82.7,1439,10175,0.310345),('01/09/21','ad_unit_name_83',1111193,900083,'traffic','United States','13',0,13,0,0,0,10000,0),('01/09/21','ad_unit_name_84',1111194,900084,'traffic','United States','0',0,0,0,0,0,0,0),('01/09/21','ad_unit_name_85',1111195,900085,'traffic','United States','0',0,0,0,0,0,0,0),('01/09/21','ad_unit_name_86',1111196,900086,'traffic','Ireland','3',0,3,0,0,0,10000,0),('01/09/21','ad_unit_name_87',1111197,900087,'traffic','Netherlands','2',1,2,166.67,166.67,33,10000,0.5),('01/09/21','ad_unit_name_88',1111198,900088,'traffic','Ireland','0',0,0,0,0,0,0,0),('01/09/21','ad_unit_name_89',1111199,900089,'traffic','United Kingdom','1',0,1,0,0,0,10000,0),('01/09/21','ad_unit_name_90',1111200,900090,'traffic','Italy','1,542',262,846,12.92,23.54,1992,5486,0.309693),('01/09/21','ad_unit_name_91',1111201,900091,'traffic','United States','575',129,578,125.85,125.2,7237,10052,0.223183),('01/09/21','ad_unit_name_92',1111202,900092,'traffic','United States','140',40,140,153.77,153.77,2153,10000,0.285714),('01/09/21','ad_unit_name_93',1111203,900093,'traffic','United States','0',0,0,0,0,0,0,0),('01/09/21','ad_unit_name_94',1111204,900094,'traffic','Ireland','0',0,0,0,0,0,0,0),('01/09/21','ad_unit_name_95',1111205,900095,'traffic','Ireland','1',0,1,0,0,0,10000,0),('01/09/21','ad_unit_name_96',1111206,900096,'traffic','Ireland','1',0,0,0,0,0,0,0),('01/09/21','ad_unit_name_97',1111207,900097,'traffic','Ireland','0',0,0,0,0,0,0,0),('01/09/21','ad_unit_name_98',1111208,900098,'traffic','Spain','2',0,2,0,0,0,10000,0),('01/09/21','ad_unit_name_99',1111209,900099,'traffic','Ireland','0',0,0,0,0,0,0,0),('01/09/21','ad_unit_name_1',1111111,900001,'traffic','Portugal','2',0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `travel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-24  8:32:44
