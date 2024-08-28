CREATE DATABASE  IF NOT EXISTS `schemaforinx10` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `schemaforinx10`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: schemaforinx10
-- ------------------------------------------------------
-- Server version	8.0.38

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
-- Table structure for table `announcement`
--

DROP TABLE IF EXISTS `announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcement` (
  `announce_ID` int NOT NULL AUTO_INCREMENT,
  `employee_ID` int NOT NULL,
  `announce_subject` varchar(100) NOT NULL,
  `announce_body` text,
  `date` datetime NOT NULL,
  PRIMARY KEY (`announce_ID`),
  UNIQUE KEY `announce_ID_UNIQUE` (`announce_ID`),
  KEY `employee_ID(announcement)_idx` (`employee_ID`),
  CONSTRAINT `employee_ID(announcement)` FOREIGN KEY (`employee_ID`) REFERENCES `employee_information` (`employee_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcement`
--

LOCK TABLES `announcement` WRITE;
/*!40000 ALTER TABLE `announcement` DISABLE KEYS */;
INSERT INTO `announcement` VALUES (1,4,'New Employee Announcement','I am delighted to announce that Robin Palparan is joining MCR Industries as Junior Programmer beginning August 13, 2024. Please extend a warm welcome to our new colleague and do whatever you can to make Robin feel at home.','2024-08-17 00:00:00'),(2,3,'New Transferred Employee','Dear all, I’m pleased to announce that Joyce Abraham will join ABC Company in the newly created policy analyst position. She comes to us from XYZ Company, where she led Policy and Partnership and drove much impactful cultural diversity and digital inclusion projects. As an employee of (company name) company, we want you to know that your career aspirations and development are super important to us. We are not just being “nice.” We truly understand that your job satisfaction contributes to ABC’s increased productivity and the level of job quality that the department expects. During this week, Joyce will be seeking input from each of you to gain clarity as to our culture. Aside from that, she has her packaged plan; with your help, she’s likely to get into the game faster. Please join me in welcoming Joyce to the ABC Company.','2024-08-18 19:42:12'),(3,4,'New Accounting Specialist','Hello team! I’d like to welcome our newest member of the team, Amy McDonald! Amy joins us next Monday as an accounting specialist and will join the finance team.  She’ll be based in the Chicago office and will be working with Judy Johnstone, who will be her manager. Her first day will be 18 October. Amy is a CPA and has an MBA from Yale University. She’s worked in similar roles with major corporations including ABC, XYZ and EFG. We’re excited to have Amy come on board. Please reach out to her if you need assistance with reconciling your accounts. Her details are amy.mcdonald@thiscompany.com or you can call her on extension 1234.','2024-07-30 10:12:34'),(4,4,'New Marketing Coordinator','Dear team, I’m pleased to announce that Michelle Spencer will be joining us at ABC Company as our new marketing coordinator, replacing Samantha Green who is going on maternity leave for 12 months. Michelle’s first day will be on 1 May, and she will have some handover with Samantha before she begins her leave on 5 May Michelle is a recent graduate of HIJ University and has interned at several not-for-profit organizations including EFG and LMNOP.  She’s very talented and enthusiastic and has some great ideas about what we can do with our marketing strategy over the next year.  Please make Michelle feel welcome. She’ll be sitting at Samantha’s old desk in the marketing department. Samantha will be introducing her to everyone when she begins next week.','2024-08-10 13:30:54'),(5,3,'New Systems Analyst','Hello everyone, I’m glad to be able to announce that we will be joined by Ivan Grubic who takes over the role of systems analyst on  31 October. Ivan comes to us from BGF company where he has spent the last three years ensuring continuity of business processes. He graduated from Cityname University in 2015 with a degree in information technology, and his special interest area is determining redundancies in system processes to improve efficiencies. Ivan will be a great addition to our team as we hope to streamline our services and drive digital transformation. Please make him feel welcome!','2024-06-12 08:44:23');
/*!40000 ALTER TABLE `announcement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_attendance`
--

DROP TABLE IF EXISTS `employee_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_attendance` (
  `attendance_ID` bigint NOT NULL AUTO_INCREMENT,
  `employee_ID` int NOT NULL,
  `date` date NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL,
  `hours_required` decimal(4,2) NOT NULL,
  `hours_worked` decimal(4,2) NOT NULL,
  `hours_overtime` decimal(4,2) DEFAULT NULL,
  `hours_undertime` decimal(4,2) DEFAULT NULL,
  `if_resign` date DEFAULT NULL,
  PRIMARY KEY (`attendance_ID`),
  UNIQUE KEY `attendance_ID_UNIQUE` (`attendance_ID`),
  KEY `employee_ID(employee_attendance)_idx` (`employee_ID`),
  CONSTRAINT `employee_ID(employee_attendance)` FOREIGN KEY (`employee_ID`) REFERENCES `employee_information` (`employee_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_attendance`
--

LOCK TABLES `employee_attendance` WRITE;
/*!40000 ALTER TABLE `employee_attendance` DISABLE KEYS */;
INSERT INTO `employee_attendance` VALUES (1,3,'2024-08-22','06:58:20','16:02:19',9.00,9.00,NULL,NULL,NULL),(2,1,'2024-08-22','06:45:06','16:01:52',9.00,9.00,0.27,NULL,NULL);
/*!40000 ALTER TABLE `employee_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_contactinfo`
--

DROP TABLE IF EXISTS `employee_contactinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_contactinfo` (
  `employee_ID` int NOT NULL,
  `email` varchar(45) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `telephone_no` varchar(15) DEFAULT NULL,
  `permanent_address` varchar(100) NOT NULL,
  `current_address` varchar(100) NOT NULL,
  UNIQUE KEY `employee_ID_UNIQUE` (`employee_ID`),
  CONSTRAINT `employee_ID(employee_contactinfo)` FOREIGN KEY (`employee_ID`) REFERENCES `employee_information` (`employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_contactinfo`
--

LOCK TABLES `employee_contactinfo` WRITE;
/*!40000 ALTER TABLE `employee_contactinfo` DISABLE KEYS */;
INSERT INTO `employee_contactinfo` VALUES (1,'robinpalparan89@gmail.com','09452036105',NULL,'Block X Lot Y Homes Subdivision, Brgy. ','Block X Lot Y Homes Subdivision, Brgy. '),(2,'leomarmontoya02@gmail.com','09454152696 ',NULL,'Block A Lot B Zone Housing Brgy.','Block A Lot B Zone Housing Brgy.'),(3,'luisryanmark.informatics@gmail.com','09352617615',NULL,'Block C Lot D Hills Brgy.','Block C Lot D Hills Brgy.'),(4,'rnemartin.calpo@gmail.com','09270876143',NULL,'Block X Lot O Villa Brgy.','Block X Lot O Villa Brgy.');
/*!40000 ALTER TABLE `employee_contactinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_department`
--

DROP TABLE IF EXISTS `employee_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_department` (
  `department_ID` int NOT NULL AUTO_INCREMENT,
  `department_name` varchar(45) NOT NULL,
  `department_description` varchar(100) NOT NULL,
  PRIMARY KEY (`department_ID`),
  UNIQUE KEY `department_ID_UNIQUE` (`department_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_department`
--

LOCK TABLES `employee_department` WRITE;
/*!40000 ALTER TABLE `employee_department` DISABLE KEYS */;
INSERT INTO `employee_department` VALUES (1,'Human Resource','Training / Workforce Development'),(2,'IT','Computer Systems / Data Processing');
/*!40000 ALTER TABLE `employee_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_documents`
--

DROP TABLE IF EXISTS `employee_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_documents` (
  `employee_ID` int NOT NULL,
  `filename` varchar(45) NOT NULL,
  `document_file` varchar(70) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  KEY `employee_ID(employee_documents)_idx` (`employee_ID`),
  CONSTRAINT `employee_ID(employee_documents)` FOREIGN KEY (`employee_ID`) REFERENCES `employee_information` (`employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_documents`
--

LOCK TABLES `employee_documents` WRITE;
/*!40000 ALTER TABLE `employee_documents` DISABLE KEYS */;
INSERT INTO `employee_documents` VALUES (3,'File 201','@inx10docu/luis201.png');
/*!40000 ALTER TABLE `employee_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_education`
--

DROP TABLE IF EXISTS `employee_education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_education` (
  `employee_ID` int NOT NULL,
  `highschool` varchar(100) NOT NULL,
  `college` varchar(100) NOT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  UNIQUE KEY `employee_ID_UNIQUE` (`employee_ID`),
  CONSTRAINT `employee_ID(employee_education)` FOREIGN KEY (`employee_ID`) REFERENCES `employee_information` (`employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_education`
--

LOCK TABLES `employee_education` WRITE;
/*!40000 ALTER TABLE `employee_education` DISABLE KEYS */;
INSERT INTO `employee_education` VALUES (1,'University of Perpetual Help System Laguna - DALTA','STI College Carmona','BS Information Technology - 2025'),(2,'Bulihan Integrated National Highschool','STI College Carmona','BS Information Technology - 2025'),(3,'University of Perpetual Help System Laguna - DALTA','STI College Carmona','BS Information Technology - 2025'),(4,'University of Perpetual Help System Laguna - JONELTA','STI College Carmona','BS Information Technology - 2025');
/*!40000 ALTER TABLE `employee_education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_evaluation`
--

DROP TABLE IF EXISTS `employee_evaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_evaluation` (
  `evaluation_ID` int NOT NULL AUTO_INCREMENT,
  `employee_ID` int NOT NULL,
  `rater_ID` int NOT NULL,
  `evaluation_start` date NOT NULL,
  `evaluation_end` date NOT NULL,
  `performance_rating` decimal(5,2) NOT NULL,
  `remark_offense` varchar(100) DEFAULT NULL,
  `remark_accomplish` varchar(100) DEFAULT NULL,
  `remark_forimprove` varchar(100) DEFAULT NULL,
  `comment_rater` varchar(150) DEFAULT NULL,
  `comment_ratee` varchar(150) DEFAULT NULL,
  `recommended_action` int NOT NULL,
  `recommended_action_other` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`evaluation_ID`),
  UNIQUE KEY `evaluation_ID_UNIQUE` (`evaluation_ID`),
  KEY `employee_ID(employee_evaluation)_idx` (`employee_ID`),
  KEY `rater_ID(employee_evaluation)_idx` (`rater_ID`),
  KEY `reco_act(employee_evaluation)_idx` (`recommended_action`),
  CONSTRAINT `employee_ID(employee_evaluation)` FOREIGN KEY (`employee_ID`) REFERENCES `employee_information` (`employee_ID`),
  CONSTRAINT `rater_ID(employee_evaluation)` FOREIGN KEY (`rater_ID`) REFERENCES `employee_information` (`employee_ID`),
  CONSTRAINT `reco_act(employee_evaluation)` FOREIGN KEY (`recommended_action`) REFERENCES `recommend_action` (`recommended_action`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_evaluation`
--

LOCK TABLES `employee_evaluation` WRITE;
/*!40000 ALTER TABLE `employee_evaluation` DISABLE KEYS */;
INSERT INTO `employee_evaluation` VALUES (1,1,2,'2024-08-15','2024-08-20',4.07,'offense sample','accomplishment sample','for improvement sample','raters comment sample','ratee comment sample',1,NULL);
/*!40000 ALTER TABLE `employee_evaluation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_governmentid`
--

DROP TABLE IF EXISTS `employee_governmentid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_governmentid` (
  `employee_ID` int NOT NULL,
  `sss` varchar(10) DEFAULT NULL,
  `philhealth` varchar(12) DEFAULT NULL,
  `pagibig` varchar(12) DEFAULT NULL,
  `tin` varchar(12) DEFAULT NULL,
  UNIQUE KEY `employee_ID_UNIQUE` (`employee_ID`),
  UNIQUE KEY `sss_UNIQUE` (`sss`),
  UNIQUE KEY `philhealth_UNIQUE` (`philhealth`),
  UNIQUE KEY `pagibig_UNIQUE` (`pagibig`),
  UNIQUE KEY `tin_UNIQUE` (`tin`),
  CONSTRAINT `employee_ID(employee_governmentid)` FOREIGN KEY (`employee_ID`) REFERENCES `employee_information` (`employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_governmentid`
--

LOCK TABLES `employee_governmentid` WRITE;
/*!40000 ALTER TABLE `employee_governmentid` DISABLE KEYS */;
INSERT INTO `employee_governmentid` VALUES (1,'sss1111111','philhealth11','pagibig11111','tin111111111'),(2,'sss2222222','philhealth22','pagibig22222','tin222222222'),(3,'sss3333333','philhealth33','pagibig33333','tin333333333'),(4,'sss4444444','philhealth44','pagibig44444','tin444444444');
/*!40000 ALTER TABLE `employee_governmentid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_history`
--

DROP TABLE IF EXISTS `employee_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_history` (
  `employee_ID` int NOT NULL,
  `job_ID` int NOT NULL,
  `department_ID` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `status` bit(1) NOT NULL,
  KEY `employee_ID_idx` (`employee_ID`),
  KEY `job_ID_idx` (`job_ID`),
  KEY `department_ID(employee_history)_idx` (`department_ID`),
  CONSTRAINT `department_ID(employee_history)` FOREIGN KEY (`department_ID`) REFERENCES `employee_department` (`department_ID`),
  CONSTRAINT `employee_ID(employee_history)` FOREIGN KEY (`employee_ID`) REFERENCES `employee_information` (`employee_ID`),
  CONSTRAINT `job_ID(employee_history)` FOREIGN KEY (`job_ID`) REFERENCES `employee_job` (`job_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_history`
--

LOCK TABLES `employee_history` WRITE;
/*!40000 ALTER TABLE `employee_history` DISABLE KEYS */;
INSERT INTO `employee_history` VALUES (1,1,2,'2024-08-13',NULL,_binary ''),(2,2,2,'2024-08-15',NULL,_binary ''),(3,3,2,'2024-08-17',NULL,_binary ''),(4,4,1,'2024-08-17','2024-09-01',_binary '\0');
/*!40000 ALTER TABLE `employee_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_information`
--

DROP TABLE IF EXISTS `employee_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_information` (
  `employee_ID` int NOT NULL AUTO_INCREMENT,
  `user_ID` varchar(20) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `middle_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  PRIMARY KEY (`employee_ID`),
  UNIQUE KEY `employee_ID_UNIQUE` (`employee_ID`),
  KEY `user_ID(employee_information)_idx` (`user_ID`),
  CONSTRAINT `user_ID(employee_information)` FOREIGN KEY (`user_ID`) REFERENCES `user_login` (`user_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_information`
--

LOCK TABLES `employee_information` WRITE;
/*!40000 ALTER TABLE `employee_information` DISABLE KEYS */;
INSERT INTO `employee_information` VALUES (1,'1024-0001-emp','Lee Robin','Quinsona','Palparan'),(2,'1024-0002-mana','Leomar','Ramos','Montoya'),(3,'1024-0003-admin','Ryan Mark','Macalalo','Luis'),(4,'admin','Rene Martin','Salvador','Calpo');
/*!40000 ALTER TABLE `employee_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_job`
--

DROP TABLE IF EXISTS `employee_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_job` (
  `job_ID` int NOT NULL AUTO_INCREMENT,
  `job_title` varchar(45) NOT NULL,
  PRIMARY KEY (`job_ID`),
  UNIQUE KEY `job_ID_UNIQUE` (`job_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_job`
--

LOCK TABLES `employee_job` WRITE;
/*!40000 ALTER TABLE `employee_job` DISABLE KEYS */;
INSERT INTO `employee_job` VALUES (1,'Junior Programmer'),(2,'Information Security Analyst'),(3,'Web Designer'),(4,'Database Administrator');
/*!40000 ALTER TABLE `employee_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_leave`
--

DROP TABLE IF EXISTS `employee_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_leave` (
  `leave_ID` int NOT NULL AUTO_INCREMENT,
  `employee_ID` int NOT NULL,
  `date_applied` date NOT NULL,
  `leave_from` date NOT NULL,
  `leave_to` date NOT NULL,
  `hours_no` decimal(7,2) NOT NULL,
  `leave_type` int NOT NULL,
  `leave_type_other` varchar(45) DEFAULT NULL,
  `reason` varchar(45) DEFAULT NULL,
  `manager_approval` bit(1) NOT NULL,
  `manager_ID` int DEFAULT NULL,
  `manager_date_approved` date DEFAULT NULL,
  `hr_approval` bit(1) NOT NULL,
  `hr_ID` int DEFAULT NULL,
  `hr_date_approved` date DEFAULT NULL,
  PRIMARY KEY (`leave_ID`),
  UNIQUE KEY `leave_ID_UNIQUE` (`leave_ID`),
  KEY `employee_ID(employee_leave)_idx` (`employee_ID`),
  KEY `leave_type_other(employee_leave)_idx` (`leave_type`),
  CONSTRAINT `employee_ID(employee_leave)` FOREIGN KEY (`employee_ID`) REFERENCES `employee_information` (`employee_ID`),
  CONSTRAINT `leave_type_other(employee_leave)` FOREIGN KEY (`leave_type`) REFERENCES `leave_type` (`leave_type`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_leave`
--

LOCK TABLES `employee_leave` WRITE;
/*!40000 ALTER TABLE `employee_leave` DISABLE KEYS */;
INSERT INTO `employee_leave` VALUES (1,2,'2024-08-16','2024-08-19','2024-08-21',24.00,1,NULL,'Fever',_binary '',3,'2024-08-18',_binary '',4,'2024-08-19'),(2,3,'2024-08-12','2024-08-22','2024-08-22',8.00,2,NULL,'Vacation',_binary '',3,'2024-08-12',_binary '\0',NULL,NULL),(4,4,'2024-08-18','2024-08-27','2024-08-28',16.00,5,'Personal Leave','Family Matter',_binary '\0',NULL,NULL,_binary '',4,'2024-08-18');
/*!40000 ALTER TABLE `employee_leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_otherinfo`
--

DROP TABLE IF EXISTS `employee_otherinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_otherinfo` (
  `employee_ID` int NOT NULL,
  `birth_date` date NOT NULL,
  `birth_place` varchar(100) NOT NULL,
  `civil_status` varchar(45) NOT NULL,
  UNIQUE KEY `employee_ID_UNIQUE` (`employee_ID`),
  CONSTRAINT `employee_ID(employee_otherinfo)` FOREIGN KEY (`employee_ID`) REFERENCES `employee_information` (`employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_otherinfo`
--

LOCK TABLES `employee_otherinfo` WRITE;
/*!40000 ALTER TABLE `employee_otherinfo` DISABLE KEYS */;
INSERT INTO `employee_otherinfo` VALUES (1,'2001-11-22','San Pedro, Laguna','Single'),(2,'2001-10-02','Silang, Cavite','Single'),(3,'1997-01-09','Carmona, Cavite','Single'),(4,'2001-07-30','Binan, Laguna','Single');
/*!40000 ALTER TABLE `employee_otherinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_workhistory`
--

DROP TABLE IF EXISTS `employee_workhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_workhistory` (
  `employee_ID` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `company` varchar(50) NOT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  KEY `employee_ID(employee_workhistory)_idx` (`employee_ID`),
  CONSTRAINT `employee_ID(employee_workhistory)` FOREIGN KEY (`employee_ID`) REFERENCES `employee_information` (`employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_workhistory`
--

LOCK TABLES `employee_workhistory` WRITE;
/*!40000 ALTER TABLE `employee_workhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_workhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluation_scale`
--

DROP TABLE IF EXISTS `evaluation_scale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evaluation_scale` (
  `evaluation_ID` int NOT NULL,
  `sectionA_1` decimal(3,2) unsigned zerofill NOT NULL,
  `sectionA_2` decimal(3,2) unsigned zerofill NOT NULL,
  `sectionA_3` decimal(3,2) unsigned zerofill NOT NULL,
  `sectionA_4` decimal(3,2) unsigned zerofill NOT NULL,
  `sectionB_1` decimal(3,2) unsigned zerofill NOT NULL,
  `sectionB_2` decimal(3,2) unsigned zerofill NOT NULL,
  `sectionC_1` decimal(3,2) unsigned zerofill NOT NULL,
  `sectionC_2` decimal(3,2) unsigned zerofill NOT NULL,
  `sectionC_3` decimal(3,2) unsigned zerofill NOT NULL,
  KEY `evaluation_ID(evaluation_scale)_idx` (`evaluation_ID`),
  CONSTRAINT `evaluation_ID(evaluation_scale)` FOREIGN KEY (`evaluation_ID`) REFERENCES `employee_evaluation` (`evaluation_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluation_scale`
--

LOCK TABLES `evaluation_scale` WRITE;
/*!40000 ALTER TABLE `evaluation_scale` DISABLE KEYS */;
INSERT INTO `evaluation_scale` VALUES (1,0.84,0.40,0.43,0.40,0.35,0.84,0.20,0.21,0.40);
/*!40000 ALTER TABLE `evaluation_scale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_balance`
--

DROP TABLE IF EXISTS `leave_balance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leave_balance` (
  `employee_ID` int NOT NULL,
  `balance_vacation` tinyint(2) unsigned zerofill NOT NULL,
  `balance_sick` tinyint(2) unsigned zerofill NOT NULL,
  `leave_credit` decimal(4,2) unsigned zerofill NOT NULL,
  UNIQUE KEY `employee_ID_UNIQUE` (`employee_ID`),
  CONSTRAINT `employee_ID(leave_balance)` FOREIGN KEY (`employee_ID`) REFERENCES `employee_leave` (`employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_balance`
--

LOCK TABLES `leave_balance` WRITE;
/*!40000 ALTER TABLE `leave_balance` DISABLE KEYS */;
INSERT INTO `leave_balance` VALUES (2,15,15,01.66),(3,11,15,00.00),(4,15,15,03.32);
/*!40000 ALTER TABLE `leave_balance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_type`
--

DROP TABLE IF EXISTS `leave_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leave_type` (
  `leave_type` int NOT NULL,
  `value` varchar(45) NOT NULL,
  PRIMARY KEY (`leave_type`),
  UNIQUE KEY `leave_type_UNIQUE` (`leave_type`),
  UNIQUE KEY `value_UNIQUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_type`
--

LOCK TABLES `leave_type` WRITE;
/*!40000 ALTER TABLE `leave_type` DISABLE KEYS */;
INSERT INTO `leave_type` VALUES (3,'EMERGENCY LEAVE'),(4,'MATERNITY LEAVE'),(5,'OTHERS'),(1,'SICK LEAVE'),(2,'VACATION LEAVE');
/*!40000 ALTER TABLE `leave_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommend_action`
--

DROP TABLE IF EXISTS `recommend_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recommend_action` (
  `recommended_action` int NOT NULL,
  `value` varchar(45) NOT NULL,
  PRIMARY KEY (`recommended_action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommend_action`
--

LOCK TABLES `recommend_action` WRITE;
/*!40000 ALTER TABLE `recommend_action` DISABLE KEYS */;
INSERT INTO `recommend_action` VALUES (1,'RETENTION'),(2,'COUNSELING'),(3,'PAY ADJUSTMENT'),(4,'TRAINING'),(5,'TRANSFER'),(6,'OTHERS');
/*!40000 ALTER TABLE `recommend_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_login`
--

DROP TABLE IF EXISTS `user_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_login` (
  `user_ID` varchar(20) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_type` int NOT NULL,
  PRIMARY KEY (`user_ID`),
  UNIQUE KEY `user_ID_UNIQUE` (`user_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_login`
--

LOCK TABLES `user_login` WRITE;
/*!40000 ALTER TABLE `user_login` DISABLE KEYS */;
INSERT INTO `user_login` VALUES ('1024-0001-emp','employee',1),('1024-0002-mana','manager',2),('1024-0003-admin','admin',3),('admin','123',3);
/*!40000 ALTER TABLE `user_login` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-28 16:45:56
