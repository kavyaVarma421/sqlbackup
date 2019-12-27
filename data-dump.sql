-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: lms
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

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
-- Table structure for table `App_Parameters`
--

DROP TABLE IF EXISTS `App_Parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `App_Parameters` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Key_Type` varchar(20) NOT NULL,
  `Key_Value` varchar(20) NOT NULL,
  `Key_Text` varchar(20) NOT NULL,
  `Current_Status` varchar(20) NOT NULL,
  `Lastupd_User` varchar(20) NOT NULL,
  `Lastupd_Stamp` varchar(20) NOT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Creator_User` int(11) NOT NULL,
  `Seq_Number` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Creator_User` (`Creator_User`),
  CONSTRAINT `App_Parameters_ibfk_1` FOREIGN KEY (`Creator_User`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `App_Parameters`
--

LOCK TABLES `App_Parameters` WRITE;
/*!40000 ALTER TABLE `App_Parameters` DISABLE KEYS */;
/*!40000 ALTER TABLE `App_Parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Candiadte_Qualification`
--

DROP TABLE IF EXISTS `Candiadte_Qualification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Candiadte_Qualification` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Candidate_Id` int(11) NOT NULL,
  `Diploma` tinyint(1) DEFAULT NULL,
  `Degree_Name` varchar(20) NOT NULL,
  `Is_Degree_Name_Verified` tinyint(1) DEFAULT NULL,
  `Employee_Descipline` varchar(20) NOT NULL,
  `Is_Employee_Descipline_Verified` tinyint(1) DEFAULT NULL,
  `Passing_Year` int(4) NOT NULL,
  `Is_Passing_Year_Verified` tinyint(1) DEFAULT NULL,
  `Aggregate_Percentage` decimal(10,0) NOT NULL,
  `Final_Year_Percentage` decimal(10,0) NOT NULL,
  `Is_Final_Year_Percentage_Verified` tinyint(1) DEFAULT NULL,
  `Training_Institute` varchar(30) DEFAULT NULL,
  `Is_Training_Institute_Verified` tinyint(1) DEFAULT NULL,
  `Training_Duration_Month` int(11) NOT NULL,
  `Is_Training_Duration_Month_Verified` tinyint(1) DEFAULT NULL,
  `Other_Training` varchar(30) DEFAULT NULL,
  `Is_Other_Training_Verified` tinyint(1) DEFAULT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Creator_User` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Creator_User` (`Creator_User`),
  CONSTRAINT `Candiadte_Qualification_ibfk_1` FOREIGN KEY (`Creator_User`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Candiadte_Qualification`
--

LOCK TABLES `Candiadte_Qualification` WRITE;
/*!40000 ALTER TABLE `Candiadte_Qualification` DISABLE KEYS */;
INSERT INTO `Candiadte_Qualification` VALUES (1,2,0,'B.tech',1,'good attitude',1,2018,1,86,80,1,'jspiders',1,5,1,NULL,0,'2019-12-12 10:42:10',2),(2,1,0,'B.tech',1,'good',1,2018,1,65,73,1,'jspiders',1,5,1,NULL,0,'2019-12-12 10:54:00',3),(3,4,0,'B.tech',1,'not regular',1,2019,1,81,76,1,'jspiders',1,4,1,'python',0,'2019-12-12 10:54:00',4),(4,3,0,'B.tech',1,'good',1,2018,1,76,69,1,'jspiders',1,6,1,'web development',1,'2019-12-12 10:54:00',1),(5,10,0,'MCA',1,'good working',1,2019,1,70,81,1,NULL,0,5,1,NULL,0,'2019-12-12 10:54:00',2),(6,5,0,'B.tech',1,'good',1,2018,1,70,69,1,'jspiders',1,2,1,NULL,0,'2019-12-12 10:54:00',5),(7,6,0,'B.tech',1,'good',1,2017,1,77,71,1,NULL,0,5,1,NULL,0,'2019-12-12 10:54:00',3),(8,9,1,'M.tech',1,'good',1,2011,1,61,70,1,'ABC',1,5,1,'node js',1,'2019-12-12 10:54:00',3),(9,7,0,'B.tech',1,'good',1,2017,1,65,66,1,'ABC',1,5,1,NULL,0,'2019-12-12 10:54:00',1),(10,8,0,'B.tech',1,'good',1,2018,1,66,71,1,'jspiders',1,3,1,NULL,0,'2019-12-12 10:54:00',5);
/*!40000 ALTER TABLE `Candiadte_Qualification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Candidate_Bank_Details`
--

DROP TABLE IF EXISTS `Candidate_Bank_Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Candidate_Bank_Details` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Candidate_Id` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Account_Number` varchar(20) NOT NULL,
  `Is_Account_Num_Verified` tinyint(1) DEFAULT NULL,
  `Ifsc_Code` varchar(20) NOT NULL,
  `Is_Ifsc_Code_Verified` tinyint(1) DEFAULT NULL,
  `Pan_Number` varchar(20) NOT NULL,
  `Is_Pan_Number_Verified` tinyint(1) DEFAULT NULL,
  `Adhar_Number` varchar(30) NOT NULL,
  `Is_Adhar_Number_Verified` tinyint(1) DEFAULT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Creator_User` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Creator_User` (`Creator_User`),
  CONSTRAINT `Candidate_Bank_Details_ibfk_1` FOREIGN KEY (`Creator_User`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Candidate_Bank_Details`
--

LOCK TABLES `Candidate_Bank_Details` WRITE;
/*!40000 ALTER TABLE `Candidate_Bank_Details` DISABLE KEYS */;
INSERT INTO `Candidate_Bank_Details` VALUES (1,1,'shivani kumari','09921880917Kt',1,'KT00920',1,'AHGTU909K',1,'90918309183',1,'2019-12-12 10:10:02',2),(2,3,'tamil selvon','8876287623817K',1,'KR98972',1,'BHTY090U',1,'12091830918',1,'2019-12-12 10:26:14',3),(3,4,'anand dandi','0098048979889AB',1,'ANDB09671',1,'UHTGY234L',1,'099812739871',1,'2019-12-12 10:26:14',2),(4,2,'kavya varma','098290378978AN',1,'ANDB098231',1,'HKUPK919P',1,'120948791798',1,'2019-12-12 10:26:14',5),(5,5,'naveen kumar','123871298798SB',1,'SBI567537',1,'ZSDER123C',1,'678637868778',1,'2019-12-12 10:26:14',4),(6,6,'sudeep katiar','R42873468764780',1,'RTY097981',1,'SERTTY09T',1,'272657635761',1,'2019-12-12 10:26:14',3),(7,7,'amit kumar','KU67826814617846',1,'KYI098389',1,'NHYUY245Q',1,'167498798468',1,'2019-12-12 10:26:14',1),(8,9,'rahul sharma','HD37856876587627',1,'HDFC89012',1,'XDASD230J',1,'418779765446',1,'2019-12-12 10:26:14',4),(9,8,'shabnam seema','0190381209789871',1,'ANDb91038',1,'MKIOP678O',1,'437135168544',1,'2019-12-12 10:26:14',5),(10,10,'madhuri kumari','90128397389678SB',1,'SBI87635',1,'CFRTY567S',1,'778778457874',1,'2019-12-12 10:26:14',3);
/*!40000 ALTER TABLE `Candidate_Bank_Details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Candidate_Documents`
--

DROP TABLE IF EXISTS `Candidate_Documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Candidate_Documents` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Candidate_Id` int(11) NOT NULL,
  `Doc_Type` varchar(20) NOT NULL,
  `Doc_Path` varchar(100) NOT NULL,
  `Status` varchar(20) DEFAULT 'pending',
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Creator_User` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Creator_User` (`Creator_User`),
  CONSTRAINT `Candidate_Documents_ibfk_1` FOREIGN KEY (`Creator_User`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Candidate_Documents`
--

LOCK TABLES `Candidate_Documents` WRITE;
/*!40000 ALTER TABLE `Candidate_Documents` DISABLE KEYS */;
INSERT INTO `Candidate_Documents` VALUES (1,1,'pdf','ssc.pdf,12th.pdf,pc.pdf,8thsem.pdf','verified','2019-12-14 08:59:27',2),(2,2,'pdf','ssc.pdf,12th.pdf,cmm.pdf,pc.pdf','not verified','2019-12-14 08:59:27',5),(3,3,'pdf','ssc.pdf,12th.pdf,cmm.pdf,pc.pdf,8thsem.pdf','verified','2019-12-14 08:59:27',4),(4,4,'pdf','ssc.pdf,DlpmFinalSem.pdf,pc.pdf,b.tech8thsem.pdf,MtechLastSem.pdf','pending','2019-12-14 08:59:27',3),(5,5,'pdf','ssc.pdf,12th.pdf,cmm.pdf,pc.pdf,8thsem.pdf','verified','2019-12-14 08:59:27',1),(6,6,'pdf','ssc.pdf,12th.pdf,8thsem.pdf','not verified','2019-12-14 08:59:27',5),(7,7,'pdf','ssc.pdf,12th.pdf,cmm.pdf,pc.pdf,8thsem.pdf','verified','2019-12-14 08:59:27',2),(8,8,'pdf','ssc.pdf,12th.pdf,cmm.pdf,pc.pdf','not verified','2019-12-14 08:59:27',3),(9,9,'pdf','ssc.pdf,12th.pdf,pc.pdf,mcaFinalSem.pdf','verified','2019-12-14 08:59:27',1),(10,10,'pdf','ssc.pdf,12th.pdf,cmm.pdf,pc.pdf,8thsem.pdf','pending','2019-12-14 08:59:27',4);
/*!40000 ALTER TABLE `Candidate_Documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Candidate_Education_Detailed_Check`
--

DROP TABLE IF EXISTS `Candidate_Education_Detailed_Check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Candidate_Education_Detailed_Check` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Candidate_Id` int(11) NOT NULL,
  `Field_Name` varchar(20) NOT NULL,
  `Is_Verified` tinyint(1) DEFAULT NULL,
  `Lastupd_Stamp` varchar(30) NOT NULL,
  `Lastupd_User` varchar(20) NOT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Creator_User` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Creator_User` (`Creator_User`),
  CONSTRAINT `Candidate_Education_Detailed_Check_ibfk_1` FOREIGN KEY (`Creator_User`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Candidate_Education_Detailed_Check`
--

LOCK TABLES `Candidate_Education_Detailed_Check` WRITE;
/*!40000 ALTER TABLE `Candidate_Education_Detailed_Check` DISABLE KEYS */;
/*!40000 ALTER TABLE `Candidate_Education_Detailed_Check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Candidate_Personal_details_check`
--

DROP TABLE IF EXISTS `Candidate_Personal_details_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Candidate_Personal_details_check` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Candidate_Id` int(11) NOT NULL,
  `Field_Name` varchar(20) NOT NULL,
  `Is_Verified_Lastupd_stamp` tinyint(1) DEFAULT NULL,
  `Lastupd_User` varchar(20) NOT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Creator_User` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Creator_User` (`Creator_User`),
  CONSTRAINT `Candidate_Personal_details_check_ibfk_1` FOREIGN KEY (`Creator_User`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Candidate_Personal_details_check`
--

LOCK TABLES `Candidate_Personal_details_check` WRITE;
/*!40000 ALTER TABLE `Candidate_Personal_details_check` DISABLE KEYS */;
/*!40000 ALTER TABLE `Candidate_Personal_details_check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Candidate_Tech_Stack_Assignment`
--

DROP TABLE IF EXISTS `Candidate_Tech_Stack_Assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Candidate_Tech_Stack_Assignment` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Requirement_Id` int(11) NOT NULL,
  `Candidate_Id` int(11) NOT NULL,
  `Assign_Date` date NOT NULL,
  `Status` varchar(30) NOT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Creator_User` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Creator_User` (`Creator_User`),
  KEY `Candidate_Id` (`Candidate_Id`),
  CONSTRAINT `Candidate_Tech_Stack_Assignment_ibfk_1` FOREIGN KEY (`Creator_User`) REFERENCES `User_Details` (`Id`),
  CONSTRAINT `Candidate_Tech_Stack_Assignment_ibfk_2` FOREIGN KEY (`Candidate_Id`) REFERENCES `Fellowship_Candidate` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Candidate_Tech_Stack_Assignment`
--

LOCK TABLES `Candidate_Tech_Stack_Assignment` WRITE;
/*!40000 ALTER TABLE `Candidate_Tech_Stack_Assignment` DISABLE KEYS */;
INSERT INTO `Candidate_Tech_Stack_Assignment` VALUES (1,2,2,'2019-09-23','1','2019-12-14 09:17:21',2),(2,10,10,'2019-11-19','1','2019-12-14 09:17:21',3),(3,3,3,'2019-12-15','1','2019-12-14 09:17:21',1),(4,9,9,'2020-01-07','1','2019-12-14 09:17:21',5),(5,4,4,'2019-09-23','1','2019-12-14 09:17:21',2),(6,6,6,'2019-11-19','1','2019-12-14 09:17:21',3),(7,5,5,'2019-12-15','1','2019-12-14 09:17:21',1),(8,7,7,'2020-01-07','1','2019-12-14 09:17:21',2),(9,8,8,'2019-12-15','1','2019-12-14 09:17:21',1),(10,1,1,'2020-01-07','1','2019-12-14 09:17:21',5);
/*!40000 ALTER TABLE `Candidate_Tech_Stack_Assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Company`
--

DROP TABLE IF EXISTS `Company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Company` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL,
  `Address` varchar(70) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Creator_User` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Creator_User` (`Creator_User`),
  CONSTRAINT `Company_ibfk_1` FOREIGN KEY (`Creator_User`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Company`
--

LOCK TABLES `Company` WRITE;
/*!40000 ALTER TABLE `Company` DISABLE KEYS */;
INSERT INTO `Company` VALUES (1,'IBM','white field,techno park','bangalore','accepted','2019-12-12 12:59:33',2),(2,'CAPGEMINI','Capgemini Knowledge Park,TTC Industrial Area','Mumbai','not responding','2019-12-12 12:59:33',3),(3,'L&T infotech','Shivaji Gardens,Manapakkam,Chennai,Tamil Nadu','chennai','not accepted','2019-12-12 12:59:33',4),(4,'Creeno Solutions','shamshabad,Hyderabad','Hyderabad','accepted','2019-12-12 12:59:33',1),(5,'Confidential','belandur,beside kfc,bangalore','Bangalore','accepted','2019-12-12 12:59:33',5),(6,'Novaya','madhapur,hyderabad','Hyderabad','accepted','2019-12-12 12:59:33',3),(7,'Linkz Consultantz',' Prestige Court,K H Road,Bengaluru','Bengaluru','not accepted','2019-12-12 12:59:33',2),(8,'Chaitra Soft','Balaji Hills Apartments,KPHB,Hyderabad,Telangana ','Hyderabad','accepted','2019-12-12 12:59:33',1),(9,'synopsis','manyatha tech park,Bengaluru','Bengaluru','accepted','2019-12-12 12:59:33',4),(10,'CGI','old airport road,bengaluru','Bangalore','not accepted','2019-12-12 12:59:33',2),(11,'SynqCloud','kanchipuram,chennai,tamilnadu','chennai','accepted','2019-12-12 12:59:33',5),(12,'Fynd','Ajit Nagar,Kondivita,Andheri East,Mumbai,Maharashtra','Mumbai','accepted','2019-12-12 12:59:33',1),(13,'Mphasis','hosour,behind chocolate factory,pune','Pune','accepted','2019-12-12 12:59:33',3);
/*!40000 ALTER TABLE `Company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Company_Requirement`
--

DROP TABLE IF EXISTS `Company_Requirement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Company_Requirement` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Company_Id` int(11) DEFAULT NULL,
  `Requested_Month` varchar(20) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Is_Doc_Verification` tinyint(1) DEFAULT NULL,
  `Requirement_Doc_Path` varchar(50) NOT NULL,
  `No_Of_Engg` int(11) DEFAULT NULL,
  `Tech_Stack_Id` int(11) DEFAULT NULL,
  `Teck_Type_Id` int(11) DEFAULT NULL,
  `Maker_Program_Id` int(11) DEFAULT NULL,
  `Lead_Id` int(11) DEFAULT NULL,
  `Ideation_Engg_Id` varchar(20) NOT NULL,
  `Buddy_Engg_Id` int(11) DEFAULT NULL,
  `Special_Remark` varchar(50) NOT NULL,
  `Status` tinyint(1) NOT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Creator_User` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Creator_User` (`Creator_User`),
  KEY `Company_Id` (`Company_Id`),
  KEY `Tech_Stack_Id` (`Tech_Stack_Id`),
  KEY `Teck_Type_Id` (`Teck_Type_Id`),
  KEY `Maker_Program_Id` (`Maker_Program_Id`),
  CONSTRAINT `Company_Requirement_ibfk_1` FOREIGN KEY (`Creator_User`) REFERENCES `User_Details` (`Id`),
  CONSTRAINT `Company_Requirement_ibfk_2` FOREIGN KEY (`Company_Id`) REFERENCES `Company` (`Id`),
  CONSTRAINT `Company_Requirement_ibfk_3` FOREIGN KEY (`Tech_Stack_Id`) REFERENCES `Tech_Stack` (`Id`),
  CONSTRAINT `Company_Requirement_ibfk_4` FOREIGN KEY (`Teck_Type_Id`) REFERENCES `Tech_Type` (`Id`),
  CONSTRAINT `Company_Requirement_ibfk_5` FOREIGN KEY (`Maker_Program_Id`) REFERENCES `Maker_Program` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Company_Requirement`
--

LOCK TABLES `Company_Requirement` WRITE;
/*!40000 ALTER TABLE `Company_Requirement` DISABLE KEYS */;
INSERT INTO `Company_Requirement` VALUES (1,2,'april','bangalore',1,'ssc/12th/pc/cmm/passport',2,2,2,1,5,'3',1,'still work going on',1,'2019-12-14 09:14:24',2),(2,1,'january','chennai',1,'ssc/12th/pc/cmm/passport/pan',3,1,1,2,5,'1',2,'all completed with in a time',1,'2019-12-14 09:14:24',1),(3,3,'september','bangalore',1,'ssc/12th/pc/cmm/passport',1,10,10,5,5,'4',3,'still work going on',1,'2019-12-14 09:14:24',3),(4,10,'december','mumbai',1,'ssc/12th/pc/cmm',10,3,3,3,5,'4',4,'all completed with in a time',1,'2019-12-14 09:14:24',4),(5,8,'march','bangalore',1,'ssc/12th/pc/cmm/passport',2,4,4,4,5,'3',1,'still work going on',1,'2019-12-14 09:14:24',2),(6,9,'april','chennai',1,'ssc/12th/pc/cmm/passport/pan',3,6,6,5,5,'1',2,'all completed with in a time',1,'2019-12-14 09:14:24',1),(7,7,'july','bangalore',1,'ssc/12th/pc/cmm/passport',1,5,5,6,5,'4',2,'still work going on',1,'2019-12-14 09:14:24',3),(8,5,'november','mumbai',1,'ssc/12th/pc/cmm',10,7,7,7,5,'4',3,'all completed with in a time',1,'2019-12-14 09:14:24',4),(9,4,'febrauary','bangalore',1,'ssc/12th/pc/cmm/passport',4,9,9,8,5,'4',3,'still work going on',1,'2019-12-14 09:14:24',3),(10,6,'may','mumbai',1,'ssc/12th/pc/cmm',3,8,8,9,5,'4',3,'all completed with in a time',1,'2019-12-14 09:14:24',5);
/*!40000 ALTER TABLE `Company_Requirement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fellowship_Candidate`
--

DROP TABLE IF EXISTS `Fellowship_Candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fellowship_Candidate` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `First_Name` char(25) NOT NULL,
  `Middle_Name` varchar(20) DEFAULT NULL,
  `Last_Name` varchar(20) DEFAULT NULL,
  `Email_id` varchar(20) DEFAULT NULL,
  `Hired_City` varchar(20) NOT NULL,
  `Degree` varchar(20) NOT NULL,
  `Hired_Date` date NOT NULL,
  `Mobile_Number` bigint(10) NOT NULL,
  `Permanent_Pincode` int(11) NOT NULL,
  `Hired_Lab` varchar(50) NOT NULL,
  `Attitude` varchar(50) DEFAULT 'Good',
  `Communication_Remark` varchar(50) NOT NULL,
  `Knowledge_Remark` varchar(60) NOT NULL,
  `Aggregate_Remark` varchar(60) NOT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Creator_User` int(11) NOT NULL,
  `Birth_Date` date NOT NULL,
  `Is_Birth_Date_Verified` tinyint(1) DEFAULT NULL,
  `Parent_Name` varchar(20) NOT NULL,
  `Parent_Occupation` varchar(20) NOT NULL,
  `Parents_Mobile_Number` bigint(10) NOT NULL,
  `Parents_Annual_Salary` double DEFAULT NULL,
  `Local_Address` varchar(60) NOT NULL,
  `Permanant_Address` varchar(60) NOT NULL,
  `Photo_Path` varchar(30) DEFAULT NULL,
  `Joining_Date` date NOT NULL,
  `Candidate_Status` tinyint(1) NOT NULL,
  `Personal_Information` tinyint(1) DEFAULT NULL,
  `Bank_Information` tinyint(1) NOT NULL,
  `Educational_Information` tinyint(1) NOT NULL,
  `Document_Status` varchar(20) NOT NULL,
  `Remark` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Creator_User` (`Creator_User`),
  CONSTRAINT `Fellowship_Candidate_ibfk_1` FOREIGN KEY (`Creator_User`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fellowship_Candidate`
--

LOCK TABLES `Fellowship_Candidate` WRITE;
/*!40000 ALTER TABLE `Fellowship_Candidate` DISABLE KEYS */;
INSERT INTO `Fellowship_Candidate` VALUES (1,'shivani',NULL,'kumari','shivani@gmail.com','noida','b.tech','2019-08-13',9898178978,598789,'Bridgelabz','good','good','excellent','matching criteria','2019-12-13 06:47:08',2,'1997-02-20',1,'ram chandan','tata employee',9827986877,1087698,'btm,bangalore','ranchi,jarkand','/images/shivani.jpg','2019-10-28',1,NULL,1,1,'not submitted','programitically good'),(2,'shabnam',NULL,'seema','seema@gmail.com','bangalore','b.tech','2019-02-12',9781648671,456456,'Bridgelabz','good','good','good','not matching criteria','2019-12-13 06:49:55',3,'1997-06-20',1,'mathan shaik','railway master',9182767361,934567,'maruthi nagar,bangalore','udipi,karnataka','/images/seema.jpg','2019-03-01',1,NULL,1,1,'submitted','programitically should be strong'),(3,'madhuri',NULL,'kumari','madhuri@gmail.com','bangalore','b.tech','2019-08-11',9099840978,667067,'Bridgelabz','good','good','good','matching criteria','2019-12-13 06:49:55',2,'1997-12-12',1,'charan singh','shop',9897289712,567876.9,'hsr,bangalore','panjim,goa','/images/madhuri.jpg','2019-08-20',1,NULL,1,1,'submitted','logically good'),(4,'tamil',NULL,'selvon','selvon@gmail.com','chennai','M.tech','2019-07-15',9717171178,298908,'Bridgelabz','good','good','good','one year gap','2019-12-13 06:49:55',1,'1990-02-12',1,'gavaskar','mla',9873918237,19099999.9,'hsr,bangalore','rt nagar,tamilnadu','/images/selvon.jpg','2019-07-20',1,NULL,1,1,'submitted','logically & programatically good'),(5,'anand',NULL,'dandi','dandi@gmail.com','hyderabad','MCA','2019-10-17',9111111111,556789,'Bridgelabz','good','good','good','matching criteria','2019-12-13 06:49:55',2,'1995-04-01',2,'ramesh','former',9444444444,499999.9,'bellanduru,bangalore','ongole,AP','/images/dandi.jpg','2019-10-19',1,NULL,1,1,'submitted','programatically good'),(6,'kavya','varma','konduru','kavya@gmail.com','bangalore','b.tech','2019-08-13',9544356541,524091,'Bridgelabz','good','good','excellent','matching criteria','2019-12-13 06:55:43',3,'1997-09-23',1,'venkateswara raju','farmer',9440939202,887698,'btm,bangalore','nellore,jarkand','/images/shivani.jpg','2019-10-28',1,NULL,1,1,'submitted','programitically good'),(7,'naveen',NULL,'kumar','naveen@gmail.com','bangalore','b.tech','2019-09-12',9376477812,523413,'Bridgelabz','good','good','good','not matching criteria','2019-12-13 07:02:49',4,'1997-11-22',1,'ram nath','political leader',9363547861,523412,'btm,bangalore','islamabhad,jarkand','/images/naveen.jpg','2019-03-01',1,NULL,1,1,'submitted','logically should be strong'),(8,'sudeep',NULL,'katiar','sudeep@gmail.com','bangalore','b.tech','2019-10-11',9000000000,765643,'Bridgelabz','good','good','good','matching criteria','2019-12-13 07:02:49',1,'1997-07-24',1,'shahid katiar','service',9568656862,667876.9,'marathali,bangalore','hosour,odissa','/images/sudeep.jpg','2019-10-20',1,NULL,1,1,'submitted','logically good'),(9,'amit','kumar','mahato','amit@gmail.com','bangalore','b.tech','2019-01-19',9212121321,523431,'Bridgelabz','good','good','excellent','matching criteria','2019-12-13 07:06:28',3,'1997-11-04',4,'modiji','reliastate',9785456874,787897.98,'bellandur,bangalore','karachi,jarkand','/images/amit.jpg','2019-02-01',1,NULL,1,1,'not submitted','programitically good'),(10,'rahul',NULL,'sharma','rahul@gmail.com','bangalore','b.tech','2019-05-24',9988775566,511111,'Bridgelabz','good','good','good','matching criteria','2019-12-13 07:10:25',1,'1997-02-16',1,'mani sharma','singer',9887654323,576892,'whitefield,bangalore','mangalore,karnataka','/images/rahul.jpg','2019-05-29',1,NULL,1,1,'submitted','logically good');
/*!40000 ALTER TABLE `Fellowship_Candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hired_Candidate`
--

DROP TABLE IF EXISTS `Hired_Candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Hired_Candidate` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(20) NOT NULL,
  `Middle_Name` varchar(20) DEFAULT NULL,
  `Last_Name` varchar(20) DEFAULT NULL,
  `Email_id` varchar(20) DEFAULT NULL,
  `Hired_City` varchar(20) NOT NULL,
  `Degree` varchar(20) NOT NULL,
  `Hired_Date` date NOT NULL,
  `Mobile_Number` bigint(20) NOT NULL,
  `Permanent_Pincode` int(11) NOT NULL,
  `Hired_Lab` varchar(50) NOT NULL,
  `Attitude` varchar(50) DEFAULT 'Good',
  `Communication_Remark` varchar(50) NOT NULL,
  `Knowledge_Remark` varchar(60) NOT NULL,
  `Aggregate_Percentage` decimal(10,0) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Creator_User` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Creator_User` (`Creator_User`),
  CONSTRAINT `Hired_Candidate_ibfk_1` FOREIGN KEY (`Creator_User`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hired_Candidate`
--

LOCK TABLES `Hired_Candidate` WRITE;
/*!40000 ALTER TABLE `Hired_Candidate` DISABLE KEYS */;
INSERT INTO `Hired_Candidate` VALUES (1,'sudeep',NULL,'katiar','sudeep@gmail.com','bangalore','b.tech','2018-11-23',9876627787,523455,'Bridgelabz','very bad','good','good',76,'pending','2019-12-12 06:35:41',2),(2,'naveen','kumar','polisetty','kumar@gmail.com','bangalore','b.tech','2018-10-19',9812345612,524456,'Bridgelabz','good','good','good',70,'accepted','2019-12-12 06:43:04',2),(3,'kavya','varma','konduru','kavya@gmail.com','bangalore','b.tech','2018-10-01',9542511486,524401,'Bridgelabz','good','good','good',70,'accepted','2019-12-12 06:43:04',1),(4,'shivani','kumari','shenoy','shivani@gmail.com','bangalore','b.tech','2019-09-23',9876543210,545412,'Bridgelabz','good','good','excellent',85,'accepted','2019-12-12 06:49:25',2),(5,'rahul','sharma','katiar','rahul@gmail.com','bangalore','b.tech','2019-11-20',9897687667,524491,'Bridgelabz','good','excellent','excellent',80,'not replying','2019-12-12 06:49:25',1),(6,'amit','kumar','mahato','amit@gmail.com','bangalore','b.tech','2019-08-11',9987654780,534251,'Bridgelabz','good','good','excellent',71,'regected','2019-12-12 06:58:43',3),(7,'tamil',NULL,'selvon','tamil@gmail.com','chennai','m.tech','2019-10-11',9000000210,554555,'Bridgelabz','excellent','excellent','excellent',61,'accepted','2019-12-12 06:59:19',1),(8,'anand',NULL,'dandi','dandi@gmail.com','hyderabad','MCA','2019-10-28',9999999990,524448,'Bridgelabz','good','excellent','good',66,'accepted','2019-12-12 06:59:19',4),(9,'madhuri',NULL,'kumari','madhuri@gmail.com','bangalore','b.tech','2019-07-20',9111111101,523451,'Bridgelabz','good','excellent','good',66,'accepted','2019-12-12 07:03:48',4),(10,'shabnam',NULL,'seema','seema@gmail.com','mumbai','b.tech','2019-06-06',9234565761,598476,'Bridgelabz','good','excellent','good',76,'accepted','2019-12-12 07:03:48',5);
/*!40000 ALTER TABLE `Hired_Candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lab`
--

DROP TABLE IF EXISTS `Lab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `Address` varchar(70) NOT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Creator_User` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Creator_User` (`Creator_User`),
  CONSTRAINT `Lab_ibfk_1` FOREIGN KEY (`Creator_User`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lab`
--

LOCK TABLES `Lab` WRITE;
/*!40000 ALTER TABLE `Lab` DISABLE KEYS */;
INSERT INTO `Lab` VALUES (1,'Bridgelabz','Bangalore','HSR Layout ,behind Kumarakom restaurant,\nBengaluru',1,'2019-12-12 13:49:46',2),(2,'Bridgelabz','Mumbai','Malhotra Chambers, First Floor, Govandi East, Mumbai, Maharashtra',1,'2019-12-12 13:49:46',1);
/*!40000 ALTER TABLE `Lab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lab1`
--

DROP TABLE IF EXISTS `Lab1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lab1` (
  `Id` int(11) NOT NULL,
  `name` varchar(10) DEFAULT 'kavya',
  `email` varchar(20) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lab1`
--

LOCK TABLES `Lab1` WRITE;
/*!40000 ALTER TABLE `Lab1` DISABLE KEYS */;
/*!40000 ALTER TABLE `Lab1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lab_Threshold`
--

DROP TABLE IF EXISTS `Lab_Threshold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lab_Threshold` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Lab_Id` int(11) DEFAULT NULL,
  `Lab_Capacity` int(11) NOT NULL,
  `Lead_Threshold` varchar(30) NOT NULL,
  `Ideation_Engg_Threshold` int(11) NOT NULL,
  `Buddy_Engg` int(11) NOT NULL,
  `Threshold_Status` tinyint(1) NOT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Creator_User` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Creator_User` (`Creator_User`),
  KEY `Lab_Id` (`Lab_Id`),
  CONSTRAINT `Lab_Threshold_ibfk_1` FOREIGN KEY (`Creator_User`) REFERENCES `User_Details` (`Id`),
  CONSTRAINT `Lab_Threshold_ibfk_2` FOREIGN KEY (`Lab_Id`) REFERENCES `Lab` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lab_Threshold`
--

LOCK TABLES `Lab_Threshold` WRITE;
/*!40000 ALTER TABLE `Lab_Threshold` DISABLE KEYS */;
INSERT INTO `Lab_Threshold` VALUES (1,1,100,'5',4,15,1,'2019-12-14 04:50:54',1),(2,2,80,'5',5,20,1,'2019-12-14 04:50:54',2);
/*!40000 ALTER TABLE `Lab_Threshold` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Maker_Program`
--

DROP TABLE IF EXISTS `Maker_Program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Maker_Program` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Program_Name` varchar(20) NOT NULL,
  `Program_Type` varchar(20) NOT NULL,
  `Program_Link` varchar(30) NOT NULL,
  `Tech_Stack_Id` int(11) NOT NULL,
  `Tech_Type_Id` int(11) NOT NULL,
  `Is_Program_Approved` tinyint(1) DEFAULT NULL,
  `Description` varchar(50) NOT NULL,
  `Status` tinyint(1) NOT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Creator_User` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Creator_User` (`Creator_User`),
  KEY `Teck_Stack_Id` (`Tech_Stack_Id`),
  KEY `Teck_Type_Id` (`Tech_Type_Id`),
  CONSTRAINT `Maker_Program_ibfk_1` FOREIGN KEY (`Creator_User`) REFERENCES `User_Details` (`Id`),
  CONSTRAINT `Maker_Program_ibfk_2` FOREIGN KEY (`Tech_Stack_Id`) REFERENCES `Tech_Stack` (`Id`),
  CONSTRAINT `Maker_Program_ibfk_3` FOREIGN KEY (`Tech_Type_Id`) REFERENCES `Tech_Type` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Maker_Program`
--

LOCK TABLES `Maker_Program` WRITE;
/*!40000 ALTER TABLE `Maker_Program` DISABLE KEYS */;
INSERT INTO `Maker_Program` VALUES (1,'java','javabackend+db','/backend/Db.pdf',10,10,1,'oops,jdbc,springCore,mysql',1,'2019-12-14 09:11:02',2),(2,'Python','python+django','/python/fullstack.pdf',4,4,1,'generators,slicing,django',1,'2019-12-14 09:11:02',1),(3,'java','java+react','/java/react.pdf',1,7,1,'oops,jdbc,springCore,javascript',1,'2019-12-14 09:11:02',5),(4,'NodeJs','NodeJs+Db','/node/db.pdf',6,2,1,'javascript,mysql',1,'2019-12-14 09:11:02',2),(5,'python','python+mangoDb','/python/db.pdf',8,8,1,'generators,slicing,mangodb',1,'2019-12-14 09:11:02',3),(6,'reactjs','reactJs+scala','/react/scala.pdf',7,3,1,'react,mysql,javascript',1,'2019-12-14 09:11:02',1),(7,'java','javabackend+db','/backend/Db1.pdf',6,9,1,'oops,jdbc,springCore,mysql',1,'2019-12-14 09:11:02',4),(8,'Python','python+django','/python/fullstac.pdf',5,5,1,'generators,slicing,django',1,'2019-12-14 09:11:02',2),(9,'java','java+react','/java/react1.pdf',2,6,1,'oops,jdbc,springCore,javascript',1,'2019-12-14 09:11:02',5),(10,'reactjs','reactJs+scala','/react1/scala.pdf',3,7,1,'react,mysql,javascript',1,'2019-12-14 09:11:02',1);
/*!40000 ALTER TABLE `Maker_Program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mentor`
--

DROP TABLE IF EXISTS `Mentor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mentor` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL,
  `Mentor_Type` varchar(40) NOT NULL,
  `Lab_Id` int(11) DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Creator_User` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Creator_User` (`Creator_User`),
  KEY `Lab_Id` (`Lab_Id`),
  CONSTRAINT `Mentor_ibfk_1` FOREIGN KEY (`Creator_User`) REFERENCES `User_Details` (`Id`),
  CONSTRAINT `Mentor_ibfk_2` FOREIGN KEY (`Lab_Id`) REFERENCES `Lab` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mentor`
--

LOCK TABLES `Mentor` WRITE;
/*!40000 ALTER TABLE `Mentor` DISABLE KEYS */;
INSERT INTO `Mentor` VALUES (1,'Amrutha sagar','buddy',1,1,'2019-12-12 13:56:21',5),(2,'Kalpesh mali','buddy',1,1,'2019-12-12 13:56:21',1),(3,'venkat reddy','buddy',1,1,'2019-12-12 13:56:21',2),(4,'varsha mam','buddy',1,1,'2019-12-12 13:56:21',4);
/*!40000 ALTER TABLE `Mentor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mentor_Identification_Ideation_Map`
--

DROP TABLE IF EXISTS `Mentor_Identification_Ideation_Map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mentor_Identification_Ideation_Map` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Mentor_Id` int(11) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Creator_User` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Creator_User` (`Creator_User`),
  KEY `Mentor_Id` (`Mentor_Id`),
  CONSTRAINT `Mentor_Identification_Ideation_Map_ibfk_1` FOREIGN KEY (`Creator_User`) REFERENCES `User_Details` (`Id`),
  CONSTRAINT `Mentor_Identification_Ideation_Map_ibfk_2` FOREIGN KEY (`Mentor_Id`) REFERENCES `Mentor` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mentor_Identification_Ideation_Map`
--

LOCK TABLES `Mentor_Identification_Ideation_Map` WRITE;
/*!40000 ALTER TABLE `Mentor_Identification_Ideation_Map` DISABLE KEYS */;
INSERT INTO `Mentor_Identification_Ideation_Map` VALUES (1,1,1,'2019-12-13 07:18:21',2),(2,2,1,'2019-12-13 07:18:21',3),(3,4,1,'2019-12-13 07:18:21',1),(4,3,1,'2019-12-13 07:18:21',4);
/*!40000 ALTER TABLE `Mentor_Identification_Ideation_Map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mentor_Tech_Stack`
--

DROP TABLE IF EXISTS `Mentor_Tech_Stack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mentor_Tech_Stack` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Mentor_Id` int(11) DEFAULT NULL,
  `Tech_Stack_Id` int(11) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Creator_User` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Creator_User` (`Creator_User`),
  KEY `Mentor_Id` (`Mentor_Id`),
  KEY `Tech_Stack_Id` (`Tech_Stack_Id`),
  CONSTRAINT `Mentor_Tech_Stack_ibfk_1` FOREIGN KEY (`Creator_User`) REFERENCES `User_Details` (`Id`),
  CONSTRAINT `Mentor_Tech_Stack_ibfk_2` FOREIGN KEY (`Mentor_Id`) REFERENCES `Mentor` (`Id`),
  CONSTRAINT `Mentor_Tech_Stack_ibfk_3` FOREIGN KEY (`Tech_Stack_Id`) REFERENCES `Tech_Stack` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mentor_Tech_Stack`
--

LOCK TABLES `Mentor_Tech_Stack` WRITE;
/*!40000 ALTER TABLE `Mentor_Tech_Stack` DISABLE KEYS */;
INSERT INTO `Mentor_Tech_Stack` VALUES (11,3,2,1,'2019-12-13 14:02:32',2),(12,2,4,1,'2019-12-13 14:02:32',1),(13,1,5,1,'2019-12-13 14:02:32',5),(14,2,1,1,'2019-12-13 14:02:32',3),(15,4,10,1,'2019-12-13 14:02:32',2),(16,2,9,1,'2019-12-13 14:02:32',1),(17,1,8,1,'2019-12-13 14:02:32',5),(18,3,6,1,'2019-12-13 14:02:32',3),(19,4,3,1,'2019-12-13 14:02:32',5),(20,1,7,1,'2019-12-13 14:02:32',2);
/*!40000 ALTER TABLE `Mentor_Tech_Stack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tech_Stack`
--

DROP TABLE IF EXISTS `Tech_Stack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tech_Stack` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Tech_Name` varchar(40) NOT NULL,
  `Image_Path` varchar(20) DEFAULT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Creator_User` int(11) NOT NULL,
  `Framework` varchar(40) NOT NULL,
  `Current_Status` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Creator_User` (`Creator_User`),
  CONSTRAINT `Tech_Stack_ibfk_1` FOREIGN KEY (`Creator_User`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tech_Stack`
--

LOCK TABLES `Tech_Stack` WRITE;
/*!40000 ALTER TABLE `Tech_Stack` DISABLE KEYS */;
INSERT INTO `Tech_Stack` VALUES (1,'java backend','/home/image1.pdf','2019-12-13 13:34:39',2,'javaBackend+DB',1),(2,'java Full Stack','/home/image2.pdf','2019-12-13 13:34:39',3,'javaFullStack+React',1),(3,'java backend','/home/image3.pdf','2019-12-13 13:34:39',1,'javaBackend+DB',1),(4,'Python Full Stack','/home/image4.pdf','2019-12-13 13:34:39',5,'PythonFullStack+Django',1),(5,'Angular Js','/home/image5.pdf','2019-12-13 13:34:39',5,'AngularJs+DB',1),(6,'java Full Stack','/home/image6.pdf','2019-12-13 13:34:39',1,'javaFullStack+React',1),(7,'java Backend','/home/image7.pdf','2019-12-13 13:34:39',3,'javaBackend+DB',1),(8,'Node Js','/home/image8.pdf','2019-12-13 13:34:39',5,'NodeJs+DB',1),(9,'java Full Stack','/home/image9.pdf','2019-12-13 13:34:39',3,'javaFullStack+React',1),(10,'Angular Js','/home/image10.pdf','2019-12-13 13:34:39',2,'AngularJs+DB',1);
/*!40000 ALTER TABLE `Tech_Stack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tech_Type`
--

DROP TABLE IF EXISTS `Tech_Type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tech_Type` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Type_Name` varchar(20) NOT NULL,
  `Current_Status` tinyint(1) NOT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Creator_User` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Creator_User` (`Creator_User`),
  CONSTRAINT `Tech_Type_ibfk_1` FOREIGN KEY (`Creator_User`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tech_Type`
--

LOCK TABLES `Tech_Type` WRITE;
/*!40000 ALTER TABLE `Tech_Type` DISABLE KEYS */;
INSERT INTO `Tech_Type` VALUES (1,'java backend',1,'2019-12-13 13:43:27',2),(2,'java Full Stack',1,'2019-12-13 13:43:27',3),(3,'java backend',1,'2019-12-13 13:43:27',1),(4,'Python Full Stack',1,'2019-12-13 13:43:27',5),(5,'Angular Js',1,'2019-12-13 13:43:27',5),(6,'java Full Stack',1,'2019-12-13 13:43:27',1),(7,'java Backend',1,'2019-12-13 13:43:27',3),(8,'Node Js',1,'2019-12-13 13:43:27',5),(9,'java Full Stack',1,'2019-12-13 13:43:27',3),(10,'Angular Js',1,'2019-12-13 13:43:27',2);
/*!40000 ALTER TABLE `Tech_Type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_Details`
--

DROP TABLE IF EXISTS `User_Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User_Details` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Email_id` varchar(20) NOT NULL,
  `First_Name` char(25) NOT NULL,
  `Last_Name` char(25) DEFAULT NULL,
  `Password` varchar(20) NOT NULL,
  `Contact_Number` bigint(10) NOT NULL,
  `Verified` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_Details`
--

LOCK TABLES `User_Details` WRITE;
/*!40000 ALTER TABLE `User_Details` DISABLE KEYS */;
INSERT INTO `User_Details` VALUES (1,'amrutha@gmail.com','amrutha','sagar','amrutha@12',9876543210,1),(2,'venkat@gmail.com','venkat','reddy','venkat@123',9876512345,1),(3,'varsha@gmail.com','varsha','mam','varsha@12',9123456789,1),(4,'kavya@gmail.com','kavya','varma','kavya@12',9988776655,1),(5,'kalpesh@gmail.com','kalpesh','mali','mali@12',9876546252,1);
/*!40000 ALTER TABLE `User_Details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_Roles`
--

DROP TABLE IF EXISTS `User_Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User_Roles` (
  `User_Id` int(11) NOT NULL,
  `Role_Name` varchar(20) NOT NULL,
  PRIMARY KEY (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_Roles`
--

LOCK TABLES `User_Roles` WRITE;
/*!40000 ALTER TABLE `User_Roles` DISABLE KEYS */;
INSERT INTO `User_Roles` VALUES (1,'ceo'),(2,'mentor'),(3,'mentor'),(4,'fellowship'),(5,'technical lead');
/*!40000 ALTER TABLE `User_Roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-27  9:54:10
