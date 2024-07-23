CREATE DATABASE  IF NOT EXISTS `unifo_app_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `unifo_app_db`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: unifo_app_db
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `branches`
--

DROP TABLE IF EXISTS `branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branches` (
  `branchid` int NOT NULL,
  `branchname` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`branchid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branches`
--

LOCK TABLES `branches` WRITE;
/*!40000 ALTER TABLE `branches` DISABLE KEYS */;
INSERT INTO `branches` VALUES (1,'Computer'),(2,'IT'),(3,'Electronics'),(4,'Electrical'),(5,'Civil');
/*!40000 ALTER TABLE `branches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `college_admission_cutoff`
--

DROP TABLE IF EXISTS `college_admission_cutoff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `college_admission_cutoff` (
  `cid` int NOT NULL,
  `collegeid` varchar(200) DEFAULT NULL,
  `hsc` double DEFAULT NULL,
  `pcm` double DEFAULT NULL,
  `cet` double DEFAULT NULL,
  `cet_percentile` double DEFAULT NULL,
  `acdyear` varchar(200) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL,
  `merit_rank` int DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `college_admission_cutoff`
--

LOCK TABLES `college_admission_cutoff` WRITE;
/*!40000 ALTER TABLE `college_admission_cutoff` DISABLE KEYS */;
INSERT INTO `college_admission_cutoff` VALUES (1001,'ram_meghe',80,89,90,87,'2022-2023','Computer',9),(1002,'sipna',80,76,80,85,'2022-2023','Computer',7),(1003,'raisoni',67,69,70,66,'2022-2023','Computer',23),(1004,'pote',75,78,87,70,'2022-2023','Computer',20);
/*!40000 ALTER TABLE `college_admission_cutoff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `college_details`
--

DROP TABLE IF EXISTS `college_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `college_details` (
  `cid` int NOT NULL,
  `collegeid` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `details` varchar(900) DEFAULT NULL,
  `docpath` varchar(200) DEFAULT NULL,
  `dt` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `college_details`
--

LOCK TABLES `college_details` WRITE;
/*!40000 ALTER TABLE `college_details` DISABLE KEYS */;
INSERT INTO `college_details` VALUES (1001,'ram_meghe','asdf','asdf','1001.jpg','5/3/2024'),(1002,'raisoni','Brochure','Raisoni Engg college','1002.jpg','10/4/2024'),(1003,'pote','Brochure','Pote college brochure','1003.pdf','10/4/2024');
/*!40000 ALTER TABLE `college_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colleges`
--

DROP TABLE IF EXISTS `colleges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colleges` (
  `userid` varchar(30) NOT NULL,
  `usernm` varchar(40) DEFAULT NULL,
  `usertype` varchar(30) DEFAULT NULL,
  `collegeName` varchar(200) DEFAULT NULL,
  `mobileno` varchar(10) DEFAULT NULL,
  `emailid` varchar(30) DEFAULT NULL,
  `dob` varchar(30) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `userstatus` varchar(30) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `collegeId` varchar(200) DEFAULT NULL,
  `addr` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colleges`
--

LOCK TABLES `colleges` WRITE;
/*!40000 ALTER TABLE `colleges` DISABLE KEYS */;
INSERT INTO `colleges` VALUES ('pote','pote','college','pote engg college','9898787656','spiderprojects1@gmail.com','1990-12-12','Male','active','pote.jpg','pote',NULL),('raisoni','Sachin','college','Raisoni','9898787656','spiderprojects1@gmail.com','1990-12-12','Male','active','raisoni.pptx','raisoni','amt'),('ram_meghe','Ram Meghe','college','Ram Meghe','9898787656','spiderprojects1@gmail.com','1990-12-12','Male','active','ram_meghe.pptx','ram_meghe','amt'),('sipna','sipna','college','Sipna Colge of Engg','9898787656','spiderprojects1@gmail.com','1990-12-12','Male','active','sipna.jpg','sipna','amt');
/*!40000 ALTER TABLE `colleges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `geteudist`
--

DROP TABLE IF EXISTS `geteudist`;
/*!50001 DROP VIEW IF EXISTS `geteudist`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `geteudist` AS SELECT 
 1 AS `collegeid`,
 1 AS `euclidian`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `getsqvalues`
--

DROP TABLE IF EXISTS `getsqvalues`;
/*!50001 DROP VIEW IF EXISTS `getsqvalues`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `getsqvalues` AS SELECT 
 1 AS `collegeid`,
 1 AS `sqval`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `loggedinusers`
--

DROP TABLE IF EXISTS `loggedinusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loggedinusers` (
  `id` int NOT NULL,
  `userid` varchar(200) DEFAULT NULL,
  `utype` varchar(200) DEFAULT NULL,
  `dt` varchar(200) DEFAULT NULL,
  `tm` varchar(200) DEFAULT NULL,
  `sts` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loggedinusers`
--

LOCK TABLES `loggedinusers` WRITE;
/*!40000 ALTER TABLE `loggedinusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `loggedinusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `notes_id` int NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `userid` varchar(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL,
  `sem` varchar(200) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `topic` varchar(200) DEFAULT NULL,
  `details` varchar(900) DEFAULT NULL,
  `notes_path` varchar(200) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`notes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1001,'CPP notes','sudesh','sudesh','Computer',NULL,'CPP',NULL,'CPP practical','1001.pdf',100),(1002,'CPP pratical notes','sudesh','sudesh','Computer','1','CPP','Array','CPP practical programs','1002.pdf',100),(1003,'CPP pratical notes','sudesh','sudesh','Computer','1','CPP','Array','CPP practical programs','1003.pdf',100),(1004,'CPP pratical notes','sudesh','sudesh','Computer','1','CPP','Array','CPP practical programs','1004.pdf',100),(1005,'C language Notes','sudesh','sudesh','Computer','1','C language','Arrays','C Notes','1005.pdf',50),(1006,'C language Notes','sudesh','sudesh','Computer','1','C language','Arrays','C Notes','1006.pdf',50),(1007,'Test','sudesh','sudesh','Computer','1','C','Programming','Test','1007.pptx',100),(1008,'My java notes123','jasmin','Jasmin','Computer','1','Java','Jsp','Java notes','1008.pdf',0);
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentmarks`
--

DROP TABLE IF EXISTS `studentmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentmarks` (
  `cid` int NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `hsc` double DEFAULT NULL,
  `pcm` double DEFAULT NULL,
  `cet` double DEFAULT NULL,
  `cet_percentile` double DEFAULT NULL,
  `acdyear` varchar(200) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL,
  `merit_rank` int DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentmarks`
--

LOCK TABLES `studentmarks` WRITE;
/*!40000 ALTER TABLE `studentmarks` DISABLE KEYS */;
INSERT INTO `studentmarks` VALUES (1001,'Mmm',81,75,85,86,'2022-2023','Computer',5);
/*!40000 ALTER TABLE `studentmarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentpersonal`
--

DROP TABLE IF EXISTS `studentpersonal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentpersonal` (
  `userid` varchar(30) NOT NULL,
  `usernm` varchar(40) DEFAULT NULL,
  `usertype` varchar(30) DEFAULT NULL,
  `branch` varchar(30) DEFAULT NULL,
  `semester` varchar(30) DEFAULT NULL,
  `mobileno` varchar(10) DEFAULT NULL,
  `emailid` varchar(30) DEFAULT NULL,
  `dob` varchar(30) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `userstatus` varchar(30) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `course` varchar(200) DEFAULT NULL,
  `collegeId` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentpersonal`
--

LOCK TABLES `studentpersonal` WRITE;
/*!40000 ALTER TABLE `studentpersonal` DISABLE KEYS */;
INSERT INTO `studentpersonal` VALUES ('jasmin','Jasmin','student','Computer','1','9898787656','spiderprojects1@gmail.com','1990-12-12','Male','active','jasmin.jpg','BE','ram_meghe'),('mahesh','mahesh','student','Computer','1','9898787656','spiderprojects1@gmail.com','1990-12-12','Male','deactive','mahesh.jpg','BE','sipna'),('sss','sdfad','student','Computer','1','9898787656','spiderprojects1@gmail.com','2000-12-12','Male','active','sss.jpg','BE','ram_meghe'),('sudesh','sudesh','student','Computer','1','9898787656','spiderprojects1@gmail.com','1990-12-12','Male','active','sudesh.jfif','BE','ram_meghe');
/*!40000 ALTER TABLE `studentpersonal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userid` varchar(30) NOT NULL,
  `usernm` varchar(40) DEFAULT NULL,
  `pswd` varchar(30) DEFAULT NULL,
  `usertype` varchar(30) DEFAULT NULL,
  `userstatus` varchar(30) DEFAULT NULL,
  `branch` varchar(30) DEFAULT NULL,
  `collegeId` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admin','admin','admin@123','admin','active','NA','NA'),('jasmin','Jasmin','test','student','active','Computer','ram_meghe'),('mahesh','mahesh','test','student','deactive','Computer','sipna'),('pote','pote','test','college','active','NA','NA'),('raisoni','Sachin','test','college','active','NA','NA'),('ram_meghe','Ram Meghe','test','college','active','NA','NA'),('sipna','sipna','test','college','active','NA','NA'),('sss','sdfad','asdfsdf','student','active','Computer','ram_meghe'),('sudesh','sudesh','test','student','active','Computer','ram_meghe');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'unifo_app_db'
--

--
-- Dumping routines for database 'unifo_app_db'
--
/*!50003 DROP PROCEDURE IF EXISTS `changePassword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `changePassword`(in userid1 varchar(200),in pass1 varchar(200))
BEGIN
update users set pswd=pass1 where userid=userid1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `chkPass` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `chkPass`(in userid1 varchar(200),in pass1 varchar(200))
BEGIN
select * from users where userid=userid1 and pswd=pass1 and userstatus='active';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getBranches` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getBranches`()
begin
 select * from branches;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getlastSeen` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getlastSeen`(in userid1 varchar(200))
begin
select dt,tm from loggedInUsers where userid=userid1 order by id desc limit 1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getMaxIdColgCutoff` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getMaxIdColgCutoff`()
begin
select ifnull(max(cid),1000) as mxid from college_admission_cutoff ;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getMaxIdColgDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getMaxIdColgDetails`()
begin
select ifnull(max(cid),1000) as mxid from college_details ;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getMaxIdNotes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getMaxIdNotes`()
begin
select ifnull(max(notes_id),1000) as mxid from notes ;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getMaxIdstudentmarks` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getMaxIdstudentmarks`()
begin
select ifnull(max(cid),1000) as mxid from studentmarks ;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `geteudist`
--

/*!50001 DROP VIEW IF EXISTS `geteudist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `geteudist` AS select `getsqvalues`.`collegeid` AS `collegeid`,sqrt(`getsqvalues`.`sqval`) AS `euclidian` from `getsqvalues` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `getsqvalues`
--

/*!50001 DROP VIEW IF EXISTS `getsqvalues`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `getsqvalues` AS select `c`.`collegeid` AS `collegeid`,((((((`c`.`hsc` - `s`.`hsc`) * (`c`.`hsc` - `s`.`hsc`)) + ((`c`.`pcm` - `s`.`pcm`) * (`c`.`pcm` - `s`.`pcm`))) + ((`c`.`cet` - `s`.`cet`) * (`c`.`cet` - `s`.`cet`))) + ((`c`.`cet_percentile` - `s`.`cet_percentile`) * (`c`.`cet_percentile` - `s`.`cet_percentile`))) + ((`c`.`merit_rank` - `s`.`merit_rank`) * (`c`.`merit_rank` - `s`.`merit_rank`))) AS `sqval` from (`studentmarks` `s` join `college_admission_cutoff` `c` on(((`s`.`acdyear` = `c`.`acdyear`) and (`s`.`branch` = `c`.`branch`)))) */;
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

-- Dump completed on 2024-04-10 12:26:50
