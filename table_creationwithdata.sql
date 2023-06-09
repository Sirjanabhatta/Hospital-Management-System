-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital_manag
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `apdetails`
--

DROP TABLE IF EXISTS `apdetails`;
/*!50001 DROP VIEW IF EXISTS `apdetails`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `apdetails` AS SELECT 
 1 AS `aid`,
 1 AS `adate`,
 1 AS `atime`,
 1 AS `did`,
 1 AS `concat(dfname,' ',dlname)`,
 1 AS `depname`,
 1 AS `dqual`,
 1 AS `dexp`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `appointmentdetails`
--

DROP TABLE IF EXISTS `appointmentdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointmentdetails` (
  `aid` int NOT NULL,
  `adate` date NOT NULL,
  `did` int NOT NULL,
  `atime` time NOT NULL,
  PRIMARY KEY (`aid`),
  KEY `did` (`did`),
  CONSTRAINT `appointmentdetails_ibfk_1` FOREIGN KEY (`did`) REFERENCES `docinfo` (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointmentdetails`
--

LOCK TABLES `appointmentdetails` WRITE;
/*!40000 ALTER TABLE `appointmentdetails` DISABLE KEYS */;
INSERT INTO `appointmentdetails` VALUES (3,'2022-08-02',222,'14:45:00'),(1211,'2022-08-05',786,'10:00:00'),(1212,'2023-02-27',3,'20:30:00'),(1223,'2022-08-05',987,'10:00:00'),(1231,'2022-08-04',109,'10:00:00'),(2221,'2022-08-05',3,'02:30:00'),(2342,'2022-05-05',5,'10:00:00'),(2345,'2022-08-04',1000,'10:00:00'),(3222,'2022-08-05',934,'10:00:00'),(3232,'2022-08-05',789,'10:00:00'),(3242,'2022-08-04',987,'10:00:00'),(3323,'2022-08-05',576,'10:00:00'),(3453,'2022-08-04',57,'08:00:00'),(3456,'2022-08-04',8,'10:00:00'),(4325,'2022-08-04',134,'10:00:00'),(4354,'2022-08-04',787,'10:00:00'),(4434,'2022-08-05',787,'10:00:00'),(4522,'2022-08-04',1024,'10:00:00'),(4564,'2022-08-04',110,'10:00:00'),(4565,'2022-08-04',679,'10:00:00'),(4567,'2022-08-04',6745,'10:00:00'),(5421,'2022-08-04',888,'10:00:00'),(5467,'2022-08-04',4,'10:00:00'),(5545,'2022-08-05',34,'10:00:00'),(5565,'2022-08-05',677,'10:00:00'),(5675,'2022-08-04',679,'10:00:00'),(6566,'2022-08-04',8,'10:00:00'),(6789,'2022-08-05',134,'10:00:00'),(6987,'2022-08-05',888,'10:00:00'),(7654,'2022-08-03',786,'16:00:00'),(7787,'2022-08-05',110,'10:00:00'),(7899,'2022-08-05',754,'10:00:00'),(9098,'2022-08-04',8,'10:00:00'),(9786,'2022-08-04',787,'10:00:00'),(11111,'2022-08-04',3,'05:30:00'),(11112,'2022-08-04',11,'10:00:00'),(12341,'2022-08-05',69,'10:00:00'),(13432,'2022-08-04',34,'10:00:00'),(13456,'2022-08-04',11,'10:00:00'),(21112,'2022-08-05',222,'10:00:00'),(22321,'2022-08-05',111,'10:00:00'),(23345,'2022-08-05',878,'10:00:00'),(23432,'2022-08-04',679,'10:00:00'),(23453,'2022-08-04',677,'10:00:00'),(33434,'2022-08-05',67,'10:00:00'),(33452,'2022-08-04',13,'10:00:00'),(34354,'2022-08-04',912,'10:00:00'),(34542,'2022-08-04',754,'10:00:00'),(43214,'2022-08-04',111,'10:00:00'),(43234,'2022-08-04',112,'10:00:00'),(43546,'2022-08-04',878,'10:00:00'),(44543,'2022-08-04',13,'10:00:00'),(45675,'2022-08-04',222,'10:00:00'),(45676,'2022-08-04',1001,'10:00:00'),(55656,'2022-08-05',987,'10:00:00'),(56430,'2022-01-04',5643,'10:00:00'),(76076,'2022-08-04',69,'10:00:00'),(77738,'2022-08-04',3,'05:30:00'),(78098,'2022-08-04',7878,'10:00:00'),(78632,'2022-08-04',786,'10:00:00'),(87648,'2022-08-04',3,'05:30:00'),(87678,'2022-08-04',67,'10:00:00'),(89343,'2022-08-04',896,'10:00:00'),(93425,'2022-08-04',934,'10:00:00'),(98437,'2022-08-04',576,'10:00:00'),(112321,'2022-08-04',10,'10:00:00');
/*!40000 ALTER TABLE `appointmentdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointmentsetup`
--

DROP TABLE IF EXISTS `appointmentsetup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointmentsetup` (
  `turn` int NOT NULL,
  `pid` int NOT NULL,
  `statuss` enum('Visited','Not Visited') DEFAULT 'Not Visited',
  `aid` int NOT NULL,
  PRIMARY KEY (`pid`,`aid`),
  KEY `aid` (`aid`),
  CONSTRAINT `appointmentsetup_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `patientinfo` (`pid`),
  CONSTRAINT `appointmentsetup_ibfk_2` FOREIGN KEY (`aid`) REFERENCES `appointmentdetails` (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointmentsetup`
--

LOCK TABLES `appointmentsetup` WRITE;
/*!40000 ALTER TABLE `appointmentsetup` DISABLE KEYS */;
INSERT INTO `appointmentsetup` VALUES (2,2,'Not Visited',3),(1,2,'Not Visited',1212),(1,2,'Not Visited',4565),(4,3,'Not Visited',4565),(3,8,'Not Visited',3),(3,8,'Not Visited',4565),(5,11,'Not Visited',4565),(1,12,'Not Visited',3),(6,13,'Not Visited',4565),(1,15,'Not Visited',5467),(7,27,'Not Visited',4565),(8,32,'Not Visited',4565),(1,36,'Not Visited',93425),(1,37,'Not Visited',21112),(4,41,'Not Visited',3),(2,41,'Not Visited',4565),(1,41,'Not Visited',34354),(1,43,'Not Visited',33452),(9,44,'Not Visited',4565);
/*!40000 ALTER TABLE `appointmentsetup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!50001 DROP VIEW IF EXISTS `bill`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `bill` AS SELECT 
 1 AS `pid`,
 1 AS `name`,
 1 AS `psex`,
 1 AS `paage`,
 1 AS `pphn`,
 1 AS `paddress`,
 1 AS `datee`,
 1 AS `opdcost`,
 1 AS `labcost`,
 1 AS `medicinecost`,
 1 AS `miscellaneous`,
 1 AS `Total_Cost`,
 1 AS `statuss`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `docinfo`
--

DROP TABLE IF EXISTS `docinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docinfo` (
  `did` int NOT NULL AUTO_INCREMENT,
  `dfname` varchar(20) NOT NULL,
  `dlname` varchar(20) NOT NULL,
  `dsex` enum('Male','Female','Other') DEFAULT NULL,
  `dexp` int NOT NULL,
  `depname` varchar(20) NOT NULL,
  `daddress` varchar(30) NOT NULL,
  `dqual` varchar(30) NOT NULL,
  `dphn` bigint NOT NULL,
  `demail` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`did`),
  UNIQUE KEY `dphn` (`dphn`),
  UNIQUE KEY `demail` (`demail`)
) ENGINE=InnoDB AUTO_INCREMENT=7879 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docinfo`
--

LOCK TABLES `docinfo` WRITE;
/*!40000 ALTER TABLE `docinfo` DISABLE KEYS */;
INSERT INTO `docinfo` VALUES (1,'Ramu','Chaudhary','Male',9,'Physician','Kathmandu','MBBS',9808675648,'ramu@gmail.com'),(3,'Anjali','Mehta','Female',7,'Dentistry','KAthmandu','MD',9876678998,'Atm@gmail.com'),(4,'Bishu','Dahal','Female',14,'Gynaecology','Jorpati','MD',9867656789,'bish@gmail.com'),(5,'Raju','Dulal','Male',5,'Gynaecology','Balkumari','MBBS',9876786745,'rjhfjs@gmail.com'),(8,'Ajay','Devgan','Male',17,'Psychiatry','Bhaktapur','MD',9876567869,'singham@gmail.com'),(10,'Daya','Gada','Female',35,'Pediatric','Gokuldham','MD',9867564509,'heymamataji@gmail.com'),(11,'Jethalal','Gada','Male',36,'Orthopedic','Andheri','MD',9878093457,'satvifail@gmail.com'),(13,'Hansraj','Hathi','Male',55,'ENT','Gokuldham','MD',9876567809,'bhookh@gmail.com'),(34,'Champaklal','Gada','Male',44,'Orthopedic','Bhachao','MBBS',9845767890,'babuchak@gmail.com'),(57,'Tipendra','Gada','Male',44,'Orthopedic','Andheri','MD',9856478903,'tapu@gmail.com'),(67,'Gurucharan','Sodhi','Male',12,'Anesthesiology','Gokuldham','MD',9809097895,'balle@gmail.com'),(69,'Rita','Shrivastav','Female',6,'Pathology','Kathmandu','MBBS',9870520819,'kaltak@gmail.com'),(109,'Madhvi','Bhide','Female',8,'Physiotherapy','Baneshwor','MBBS',9876780989,'aho@gmail.com'),(110,'Sonalika','Bhide','Female',10,'Physiotherapy','Baneshwor','MD',9809987012,'sonu@gmail.com'),(111,'Natwarlal','Undhaiwala','Male',40,'Anesthesiology','Gokuldham','MD',9867543400,'nattukaka@gmail.com'),(112,'Munna','Bhai','Male',34,'Pathology','Mumbai','MBBS',9878675099,'munnabhai@gmail.com'),(134,'Roshan','Sodhi','Male',23,'Anesthesiology','Jalandhar','MD',9878987123,'balleballe@gmail.com'),(222,'sujan','mahara','Male',12,'Gynaecology','sankhamul','mbbs',9867676766,'su@gmail.com'),(576,'Kajol','Devgan','Female',23,'Psychiatry','Lalitpur','MBBS',9867567890,'iloveajay@gmail.com'),(677,'Suman','Koirala','Male',11,'Psychiatry','Baudhha','Md',9812785099,'suman@gmail.com'),(679,'Umesh','Khanal','Male',9,'Physician','Kailali','Md',9878777777,'ums@gmail.com'),(754,'Daya','Pokharel','Male',47,'Pediatric','Lokanthali','MBBS',9809876456,'dalmeinkala@gmail.com'),(786,'Rajat','Dulal','Male',20,'Forensics','Ktm','Mbbs',9876565654,'rjt@gmail.com'),(787,'Bavri','Acharya','Female',7,'Oncology','Kanpur','MBBS',9809844545,'galtisemistake@gmail.com'),(789,'Salunke','Bhatta','Male',55,'Forensics','Kailali','MD',9876567609,'kuchtogadbadhai@gmail.com'),(878,'Tarak','Mehta','Male',32,'Dentistry','Suryabinayak','MBBS',9856780989,'mehtasaab@gmail.com'),(888,'Komal','Hathi','Female',22,'ENT','UP','MBBS',9867567098,'koml@gmail.com'),(896,'Tarika','Dahal','Female',30,'Forensics','Ratnapark','MBBS',9876756489,'tarik@gmail.com'),(912,'Suramya','Chor','Male',18,'Dermatology','Gatthaghar','MD',9860674065,'surampok@gmail.com'),(934,'Krishnan','Iyer','Male',34,'Dermatology','Thimi','MD',9867564098,'scientist@gmail.com'),(987,'Acp','Pradhumn','Male',34,'Pediatric','Newroad','MD',9867234509,'pradh@gmail.com'),(1000,'Popatlal','Pandey','Male',23,'Dentistry','Karyabinayak','MBBS',9867898750,'Goldencrow@gmail.com'),(1001,'Atmaram','Bhide','Male',24,'Physiotherapy','Gokuldham','MD',9898097890,'ekmevasecretary@gmail.com'),(1024,'Roshan','Sodhi','Female',23,'Pathology','Gokuldham','MD',9867560932,'taddangheloche@gmail.com'),(1111,'Abdul','Dulal','Male',23,'Oncology','Balwatar','MD',9876000098,'kasamsodeki@gmail.com'),(5643,'dinesh','sapkota','Male',8,'Physician','kailali','MD',9856764564,'dinesh@gmail.com'),(6745,'Gulabkumar','Hathi','Male',34,'ENT','Gatthaghar','MD',9867450956,'goli@gmail.com'),(6969,'Bagheshwor','Undhaiwala','Male',34,'Oncology','Undhai','MBBS',9876009911,'bagha@gmail.com'),(7878,'Babita','Iyer','Female',12,'Dermatology','Kaushaltar','MBBS',9809876756,'babita12@gmail.com');
/*!40000 ALTER TABLE `docinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `docshift`
--

DROP TABLE IF EXISTS `docshift`;
/*!50001 DROP VIEW IF EXISTS `docshift`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `docshift` AS SELECT 
 1 AS `did`,
 1 AS `fullname`,
 1 AS `depname`,
 1 AS `sday`,
 1 AS `sfrom`,
 1 AS `sto`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `patientinfo`
--

DROP TABLE IF EXISTS `patientinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patientinfo` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `pfname` varchar(20) NOT NULL,
  `plname` varchar(20) NOT NULL,
  `psex` enum('Male','Female','Other') DEFAULT NULL,
  `paage` int NOT NULL,
  `paddress` varchar(30) NOT NULL,
  `pemail` varchar(30) DEFAULT NULL,
  `pphn` bigint NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientinfo`
--

LOCK TABLES `patientinfo` WRITE;
/*!40000 ALTER TABLE `patientinfo` DISABLE KEYS */;
INSERT INTO `patientinfo` VALUES (1,'Sujana','Pokharel','Female',23,'godawari','suju@gmail.com',9812345621),(2,'sirjana','bhatta','Female',21,'kanchanpur','sirju@gmail.com',9868888404),(3,'hukum','rawal','Male',34,'lalitpur','huk@gmail.com',9812345623),(5,'dipesh','shakya','Female',34,'damauli','',9876452311),(8,'pratigya','paudel','Female',43,'parbat','pratigya@gmail.com',9867543234),(10,'birat','paudel','Male',45,'kailali','b@gm.com',9878676545),(11,'Hari','Kumar','Male',76,'Sankhamul','hari3@gmail.com',9876565454),(12,'shiwani','shah','Female',21,'biratnagar','',9810263030),(13,'Ram','shah','Male',45,'kalanki','',9812454345),(14,'Sita','aryal','Female',67,'Kalanki','',9878787878),(15,'Sirjana','Joshi','Female',76,'Kailali','sirjana@gmail.com',9878766567),(16,'Sirjana','Joshi','Female',76,'Kailali','sirjana@gmail.com',9878766567),(17,'Sirjana','Joshi','Female',76,'Kailali','sirjana@gmail.com',9878766567),(18,'Maya','joshi','Female',56,'lalitpur','maya3@gmail.com',9878765432),(19,'Suman','Bohara','Male',78,'Koteshwor','suman1@gmail.com',9823456765),(20,'Mahesh','Kumar','Male',45,'Biratnagar','mhs@gmail.com',9867654544),(21,'Mahesh','Kumar','Male',45,'Biratnagar','mhs@gmail.com',9867654544),(22,'Mahesh','Kumar','Male',45,'Biratnagar','mhs@gmail.com',9867654544),(23,'Mahesh','Kumar','Male',45,'Biratnagar','mhs@gmail.com',9867654544),(24,'Mahesh','Kumar','Male',45,'Biratnagar','mhs@gmail.com',9867654544),(25,'Ram','joshi','Male',67,'ktm','',9812345654),(26,'Sirjana','Dahal','Female',65,'imadol','si@gmail.com',9823456765),(27,'radha','subedi','Female',34,'Ktm','radha56@gmail.com',9876545454),(28,'Tywin','Lannister','Male',67,'Casterly Rock','tyw90@gmail.com',9878760978),(29,'Tyrion','Lannister','Male',35,'King\'s Landing','tyrion@gmail.com',9878675645),(30,'Tyrion','Lannister','Male',35,'King\'s Landing','tyrion@gmail.com',9878675645),(31,'Stannis','Baratheon','Male',55,'Dragonstone','stann@gmail.com',9878346570),(32,'Jon','Snow','Male',26,'Winterfell','jons@gmail.com',9876789045),(33,'Gandalf','Grey','Male',101,'Arda','gandalf@gmail.com',9807675456),(34,'Arwen','Elf','Female',27,'Lothlorien','arwen@gmail.com',9878651234),(35,'Sauron','Morgoth','Male',108,'Mordor','sau@gmail.com',9876765450),(36,'Pratigya','Paudel','Female',43,'Parbat','p@gmail.com',9843454545),(37,'Tej','Paneru','Other',34,'Sankhamul','tej@gmail.com',9834445454),(41,'sirjana','bhatta','Female',23,'Kanchanpur','sirjana4@gmail.com',9868888888),(42,'sirjana','bhatta','Female',23,'Kanchanpur','sirjana4@gmail.com',9868888888),(43,'Sirjana','Bhatta','Female',23,'kanchanpur','s@gmail.com',9878787878),(44,'Suramya ','pokharel','Male',45,'ktm','sura@gmail.com',9876767676);
/*!40000 ALTER TABLE `patientinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patreport`
--

DROP TABLE IF EXISTS `patreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patreport` (
  `pid` int NOT NULL,
  `rdate` date NOT NULL,
  `test` varchar(30) NOT NULL,
  `valuee` varchar(10) NOT NULL,
  PRIMARY KEY (`pid`,`rdate`,`test`),
  CONSTRAINT `patreport_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `patientinfo` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patreport`
--

LOCK TABLES `patreport` WRITE;
/*!40000 ALTER TABLE `patreport` DISABLE KEYS */;
INSERT INTO `patreport` VALUES (2,'2022-07-26','cretine','0.7'),(2,'2022-07-26','sugar','70'),(2,'2022-07-26','Uric acid','4.0'),(8,'2022-06-12','cholestrol','230'),(8,'2022-07-25','height','9ft'),(8,'2022-07-25','sugar','200'),(10,'2022-07-26','Glucose Fasting','90'),(10,'2022-07-26','Glucose Random','150'),(10,'2022-07-26','Height','7ft'),(10,'2022-07-26','Sugar','100'),(15,'2022-08-02','Cholestrol','122'),(15,'2022-08-02','Height ','5.8ft'),(15,'2022-08-02','Sugar','89dl/mg'),(15,'2022-08-02','Weight','52kg'),(34,'2022-08-03','Bp','120/80'),(34,'2022-08-03','Citinine','0.8 dl/mg '),(34,'2022-08-03','Sugar','70dl/mg'),(36,'2022-08-02','Bp','80/120'),(36,'2022-08-02','Height','7ft'),(36,'2022-08-02','Sugar','90dl/mg'),(37,'2022-08-03','Sugar','89 mg/dl'),(37,'2022-08-03','Weight','80 kg'),(43,'2022-08-03','sugar','89 dl/mg'),(43,'2022-08-03','weight','50kg'),(44,'2022-08-03','sugar','80 dl/mg'),(44,'2022-08-03','weight','50kg');
/*!40000 ALTER TABLE `patreport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentinfo`
--

DROP TABLE IF EXISTS `paymentinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymentinfo` (
  `pid` int NOT NULL,
  `datee` date NOT NULL,
  `opdcost` int NOT NULL,
  `labcost` int DEFAULT NULL,
  `medicinecost` int DEFAULT NULL,
  `miscellaneous` int DEFAULT NULL,
  `statuss` enum('paid','Unpaid') DEFAULT 'Unpaid',
  PRIMARY KEY (`pid`,`datee`),
  CONSTRAINT `paymentinfo_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `patientinfo` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentinfo`
--

LOCK TABLES `paymentinfo` WRITE;
/*!40000 ALTER TABLE `paymentinfo` DISABLE KEYS */;
INSERT INTO `paymentinfo` VALUES (1,'2022-07-30',750,1200,300,0,'paid'),(2,'2022-06-12',750,400,0,0,'paid'),(2,'2022-07-30',700,450,300,0,'paid'),(2,'2022-08-01',750,200,100,0,'paid'),(5,'2022-08-01',750,230,400,120,'Unpaid'),(8,'2022-07-30',750,300,230,0,'paid'),(8,'2022-08-01',750,500,230,1200,'paid'),(10,'2022-07-31',750,200,1200,890,'paid'),(15,'2022-08-02',750,300,450,0,'Unpaid'),(36,'2022-08-02',750,500,290,0,'paid'),(37,'2022-08-03',750,560,1100,1560,'paid'),(43,'2022-08-03',750,3450,345,0,'Unpaid'),(44,'2022-08-03',750,560,670,0,'paid');
/*!40000 ALTER TABLE `paymentinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shift`
--

DROP TABLE IF EXISTS `shift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shift` (
  `did` int NOT NULL,
  `sday` varchar(11) NOT NULL,
  `sfrom` varchar(20) DEFAULT NULL,
  `sto` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`did`,`sday`),
  CONSTRAINT `shift_ibfk_1` FOREIGN KEY (`did`) REFERENCES `docinfo` (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shift`
--

LOCK TABLES `shift` WRITE;
/*!40000 ALTER TABLE `shift` DISABLE KEYS */;
INSERT INTO `shift` VALUES (1,'Friday','10:00','16:00'),(1,'Monday','22:00','16:00'),(1,'Sunday','14:20','21:00'),(1,'Thursday','10:00','16:00'),(1,'Tuesday','06:30','17:30'),(1,'Wednesday','07:30','14:30'),(3,'Friday','02:30','23:30'),(3,'Monday','20:30','04:30'),(3,'Sunday','10:00','16:00'),(3,'Tuesday','09:30','17:30'),(3,'Wednesday','10:00','16:00'),(4,'Monday','10:00','16:00'),(4,'Sunday','10:00','16:00'),(4,'Thursday','10:00','16:00'),(4,'Tuesday','10:00','16:00'),(4,'Wednesday','10:00','16:00'),(5,'Monday','10:00','16:00'),(5,'Sunday','10:00','16:00'),(5,'Thursday','10:00','16:00'),(5,'Tuesday','10:00','16:00'),(5,'Wednesday','10:00','16:00'),(8,'Monday','10:00','16:00'),(8,'Sunday','10:00','16:00'),(8,'Thursday','10:00','16:00'),(8,'Tuesday','10:00','16:00'),(8,'Wednesday','10:00','16:00'),(10,'Monday','10:00','16:00'),(10,'Sunday','10:00','16:00'),(10,'Thursday','10:00','16:00'),(10,'Tuesday','10:00','16:00'),(10,'Wednesday','10:00','16:00'),(11,'Monday','10:00','16:00'),(11,'Sunday','10:00','16:00'),(11,'Thursday','10:00','16:00'),(11,'Tuesday','10:00','16:00'),(11,'Wednesday','10:00','16:00'),(13,'Monday','10:00','16:00'),(13,'Saturday','10:00','16:00'),(13,'Sunday','10:00','16:00'),(13,'Thursday','10:00','16:00'),(13,'Tuesday','10:00','16:00'),(13,'Wednesday','10:00','16:00'),(34,'Friday','10:00','16:00'),(34,'Monday','10:00','16:00'),(34,'Saturday','10:00','16:00'),(34,'Sunday','10:00','16:00'),(34,'Thursday','10:00','16:00'),(34,'Tuesday','10:00','16:00'),(34,'Wednesday','10:00','16:00'),(57,'Monday','10:00','16:00'),(57,'Sunday','05:00','14:00'),(57,'Thursday','08:00','15:00'),(57,'Tuesday','10:00','16:00'),(57,'Wednesday','10:00','16:00'),(67,'Friday','10:00','16:00'),(67,'Monday','10:00','16:00'),(67,'Saturday','10:00','16:00'),(67,'Sunday','10:00','16:00'),(67,'Thursday','10:00','16:00'),(67,'Tuesday','10:00','16:00'),(67,'Wednesday','10:00','16:00'),(69,'Friday','10:00','16:00'),(69,'Monday','10:00','16:00'),(69,'Sunday','10:00','16:00'),(69,'Thursday','10:00','16:00'),(69,'Tuesday','10:00','16:00'),(69,'Wednesday','10:00','16:00'),(109,'Thursday','10:00','16:00'),(110,'Friday','10:00','16:00'),(110,'Monday','10:00','16:00'),(110,'Saturday','10:00','16:00'),(110,'Sunday','10:00','16:00'),(110,'Thursday','10:00','16:00'),(110,'Tuesday','10:00','16:00'),(110,'Wednesday','10:00','16:00'),(111,'Friday','10:00','16:00'),(111,'Monday','10:00','16:00'),(111,'Saturday','10:00','16:00'),(111,'Sunday','10:00','16:00'),(111,'Thursday','10:00','16:00'),(111,'Tuesday','10:00','16:00'),(111,'Wednesday','10:00','16:00'),(112,'Friday','10:00','16:00'),(112,'Monday','10:00','16:00'),(112,'Saturday','10:00','16:00'),(112,'Sunday','10:00','16:00'),(112,'Thursday','10:00','16:00'),(112,'Tuesday','10:00','16:00'),(112,'Wednesday','10:00','16:00'),(134,'Friday','10:00','16:00'),(134,'Monday','10:00','16:00'),(134,'Saturday','10:00','16:00'),(134,'Sunday','10:00','16:00'),(134,'Thursday','10:00','16:00'),(134,'Tuesday','10:00','16:00'),(134,'Wednesday','10:00','16:00'),(222,'Friday','10:00','16:09'),(222,'Monday','10:00','16:00'),(222,'Saturday','10:00','16:00'),(222,'Sunday','10:00','16:00'),(222,'Thursday','10:00','16:00'),(222,'Tuesday','14:45','20:45'),(222,'Wednesday','10:00','16:00'),(576,'Friday','10:00','16:00'),(576,'Monday','10:00','16:00'),(576,'Saturday','10:00','16:00'),(576,'Sunday','10:00','16:00'),(576,'Thursday','10:00','16:00'),(576,'Tuesday','10:00','16:00'),(576,'Wednesday','10:00','16:00'),(677,'Friday','10:00','16:00'),(677,'Monday','10:00','16:00'),(677,'Sunday','03:28','19:28'),(677,'Thursday','10:00','16:00'),(677,'Tuesday','10:00','16:00'),(677,'Wednesday','10:00','16:00'),(679,'Monday','10:00','16:00'),(679,'Sunday','10:50','03:55'),(679,'Thursday','10:00','16:00'),(679,'Tuesday','10:00','16:00'),(679,'Wednesday','10:00','16:00'),(754,'Friday','10:00','16:00'),(754,'Monday','10:00','16:00'),(754,'Sunday','10:00','16:00'),(754,'Thursday','10:00','16:00'),(754,'Tuesday','10:00','16:00'),(754,'Wednesday','10:00','16:00'),(786,'Friday','10:00','16:00'),(786,'Monday','10:00','16:00'),(786,'Sunday','10:00','16:00'),(786,'Thursday','10:00','16:00'),(786,'Tuesday','10:00','16:00'),(786,'Wednesday','16:00','22:00'),(787,'Friday','10:00','16:00'),(787,'Monday','10:00','16:00'),(787,'Saturday','10:00','16:00'),(787,'Sunday','10:00','16:00'),(787,'Thursday','10:00','16:00'),(787,'Tuesday','10:00','16:00'),(789,'Friday','10:00','16:00'),(789,'Monday','10:00','16:00'),(789,'Saturday','10:00','16:00'),(789,'Sunday','10:00','16:00'),(789,'Thursday','10:00','16:00'),(789,'Tuesday','10:00','16:00'),(789,'Wednesday','10:00','16:00'),(878,'Friday','10:00','16:00'),(878,'Monday','10:00','16:00'),(878,'Sunday','10:00','16:00'),(878,'Thursday','10:00','16:00'),(878,'Tuesday','10:00','16:00'),(878,'Wednesday','10:00','16:00'),(888,'Friday','10:00','16:00'),(888,'Monday','10:00','16:00'),(888,'Sunday','10:00','16:00'),(888,'Thursday','10:00','16:00'),(888,'Tuesday','10:00','16:00'),(888,'Wednesday','10:00','16:00'),(896,'Friday','10:00','16:00'),(896,'Monday','10:00','16:00'),(896,'Saturday','10:00','16:00'),(896,'Sunday','10:00','16:00'),(896,'Thursday','10:00','16:00'),(896,'Wednesday','10:00','16:00'),(912,'Friday','10:00','16:00'),(912,'Monday','10:00','16:00'),(912,'Saturday','10:00','16:00'),(912,'Sunday','10:00','16:00'),(912,'Thursday','10:00','16:00'),(912,'Tuesday','10:00','16:00'),(912,'Wednesday','10:00','16:00'),(934,'Friday','10:00','16:00'),(934,'Monday','10:00','16:00'),(934,'Sunday','10:00','16:00'),(934,'Thursday','10:00','16:00'),(934,'Tuesday','10:00','16:00'),(934,'Wednesday','10:00','16:00'),(987,'Friday','10:00','16:00'),(987,'Monday','10:00','16:00'),(987,'Sunday','10:00','16:00'),(987,'Thursday','10:00','16:00'),(987,'Tuesday','10:00','16:00'),(987,'Wednesday','10:00','16:00'),(1000,'Friday','10:00','16:00'),(1000,'Sunday','10:00','16:00'),(1000,'Thursday','10:00','16:00'),(1000,'Tuesday','10:00','16:00'),(1000,'Wednesday','10:00','16:00'),(1001,'Friday','10:00','16:00'),(1001,'Monday','10:00','16:00'),(1001,'Saturday','10:00','16:00'),(1001,'Sunday','10:00','16:00'),(1001,'Thursday','10:00','16:00'),(1001,'Tuesday','10:00','16:00'),(1001,'Wednesday','10:00','16:00'),(1024,'Friday','10:00','16:00'),(1024,'Monday','10:00','16:00'),(1024,'Saturday','10:00','16:00'),(1024,'Sunday','10:00','16:00'),(1024,'Thursday','10:00','16:00'),(1024,'Tuesday','10:00','16:00'),(1024,'Wednesday','10:00','16:00'),(1111,'Friday','10:00','16:00'),(1111,'Monday','10:00','17:00'),(1111,'Sunday','10:00','16:00'),(1111,'Wednesday','10:00','16:00'),(5643,'Friday','10:00','16:00'),(5643,'Monday','14:00','20:00'),(5643,'Saturday','10:00','16:00'),(5643,'Sunday','17:30','22:00'),(5643,'Thursday','05:00','12:30'),(5643,'Tuesday','10:00','17:00'),(5643,'Wednesday','10:00','16:00'),(6745,'Friday','10:00','16:00'),(6745,'Monday','10:00','16:00'),(6745,'Saturday','10:00','16:00'),(6745,'Sunday','10:00','16:00'),(6745,'Thursday','10:00','16:00'),(6745,'Tuesday','10:00','16:00'),(6745,'Wednesday','10:00','16:00'),(6969,'Friday','10:00','16:00'),(6969,'Monday','10:00','16:00'),(6969,'Sunday','10:00','16:00'),(6969,'Thursday','10:00','16:00'),(6969,'Tuesday','10:00','16:00'),(7878,'Friday','10:00','16:00'),(7878,'Monday','10:00','16:00'),(7878,'Saturday','10:00','16:00'),(7878,'Sunday','10:00','16:00'),(7878,'Thursday','10:00','16:00'),(7878,'Tuesday','10:00','16:00'),(7878,'Wednesday','10:00','16:00');
/*!40000 ALTER TABLE `shift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `apdetails`
--

/*!50001 DROP VIEW IF EXISTS `apdetails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `apdetails` AS select `appointmentdetails`.`aid` AS `aid`,`appointmentdetails`.`adate` AS `adate`,`appointmentdetails`.`atime` AS `atime`,`appointmentdetails`.`did` AS `did`,concat(`docinfo`.`dfname`,' ',`docinfo`.`dlname`) AS `concat(dfname,' ',dlname)`,`docinfo`.`depname` AS `depname`,`docinfo`.`dqual` AS `dqual`,`docinfo`.`dexp` AS `dexp` from (`appointmentdetails` join `docinfo` on((`appointmentdetails`.`did` = `docinfo`.`did`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `bill`
--

/*!50001 DROP VIEW IF EXISTS `bill`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bill` AS select `p`.`pid` AS `pid`,concat(`p`.`pfname`,' ',`p`.`plname`) AS `name`,`p`.`psex` AS `psex`,`p`.`paage` AS `paage`,`p`.`pphn` AS `pphn`,`p`.`paddress` AS `paddress`,`a`.`datee` AS `datee`,`a`.`opdcost` AS `opdcost`,`a`.`labcost` AS `labcost`,`a`.`medicinecost` AS `medicinecost`,`a`.`miscellaneous` AS `miscellaneous`,(((`a`.`labcost` + `a`.`medicinecost`) + `a`.`miscellaneous`) + `a`.`opdcost`) AS `Total_Cost`,`a`.`statuss` AS `statuss` from (`patientinfo` `p` join `paymentinfo` `a` on((`p`.`pid` = `a`.`pid`))) where (`a`.`statuss` = 'Unpaid') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `docshift`
--

/*!50001 DROP VIEW IF EXISTS `docshift`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `docshift` AS select `shift`.`did` AS `did`,concat(`docinfo`.`dfname`,' ',`docinfo`.`dlname`) AS `fullname`,`docinfo`.`depname` AS `depname`,`shift`.`sday` AS `sday`,`shift`.`sfrom` AS `sfrom`,`shift`.`sto` AS `sto` from (`shift` join `docinfo` on((`shift`.`did` = `docinfo`.`did`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-01  7:46:54
