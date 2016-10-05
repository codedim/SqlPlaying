-- MySQL dump 10.13  Distrib 5.6.32, for Win64 (x86_64)
--
-- Host: localhost    Database: test1
-- ------------------------------------------------------
-- Server version	5.6.32

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
-- Current Database: `test1`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `test1` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `test1`;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answers` (
  `id` int(3) NOT NULL,
  `answer` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,'DELETE DATABASE test1; CREATE DATABASE test1;'),(2,'USE test1; CREATE TABLE computers (cpu INT(8), memory INT(8), hdd INT(8)); SHOW TABLES;'),(3,'SHOW COLUMNS FROM computers;'),(4,' INSERT INTO computers VALUES (1600, 2000, 500); INSERT INTO computers VALUES (2400, 3000, 800); INSERT INTO computers VALUES (3200, 3000, 1200); INSERT INTO computers VALUES (2400, 2000, 5000);'),(5,'UPDATE computers SET hdd = 500 WHERE cpu = 2400 AND memory = 2000;'),(6,'RENAME TABLE test1.computers TO test2.pc; SHOW TABLES;');
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `test2`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `test2` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `test2`;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answers` (
  `id` int(3) NOT NULL,
  `answer` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,'SELECT cpu, hdd FROM pc WHERE memory = 3000;'),(2,'SELECT MIN(hdd) AS min_hdd FROM pc;'),(31,'SELECT COUNT(*) AS count, hdd FROM pc WHERE hdd=(SELECT MIN(hdd) FROM pc);'),(32,'SELECT COUNT(*) AS count, hdd FROM pc GROUP BY hdd LIMIT 1;');
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `task` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,'Output CPU and HDD values of PCs which memory value is equal to 3000 (MB).'),(2,'Output minimal HDD value named as MIN_HDD.'),(3,'Output COUNT and HDD of amount of PCs which have minimal HDD value');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `test3`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `test3` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `test3`;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answers` (
  `id` int(3) NOT NULL,
  `answer` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,'SELECT 3 + 2 * 4 FROM DUAL;'),(2,'CREATE TABLE logon (SELECT USER() AS user, SYSDATE() AS sysdate FROM DUAL);'),(4,'SHOW COLUMNS FROM logon;'),(5,'INSERT INTO logon (user, sysdate) VALUES (USER(), SYSDATE());');
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` int(3) NOT NULL,
  `task` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,'Calculate the value of the following expression: ( 3 + 2 * 4 ).'),(2,'Make a new table LOGON by using SELECT query only. The table must consist of two columns (USER and SYSDATE) and have only one row with current user and date-time information.'),(3,'Add to the LOGON table a column named ID which must have not-null, auto-incremented and primary key values.'),(4,'Print the information about the table LOGON column data types.'),(5,'Add to the LOGON table a new row with the current user and date-time values.');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `test4`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `test4` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `test4`;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answers` (
  `id` int(3) NOT NULL,
  `answer` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,'SELECT user_id, price * quantity AS sale, date FROM orders ORDER BY sale DESC, date DESC;'),(2,'CREATE VIEW sales AS SELECT user_id, price * quantity AS sale, date FROM orders ORDER BY sale DESC, date DESC;'),(3,'SELECT CONCAT(firstname, , lastname) AS customer, SUM(sale) AS total FROM users, sales WHERE user_id = users.id GROUP BY user_id ORDER BY total DESC;'),(4,'DROP VIEW sales; SELECT CONCAT(firstname, , lastname) AS customer, SUM(price * quantity) AS total FROM users, orders WHERE user_id = users.id GROUP BY user_id ORDER BY total DESC;');
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `price` int(11) DEFAULT '0',
  `quantity` int(11) DEFAULT '0',
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2005-08-22',160,2,1),(2,'2005-10-08',190,2,2),(3,'2005-07-13',500,5,4),(4,'2005-07-15',420,2,1),(5,'2005-12-22',1000,4,3),(6,'2005-02-10',820,4,1),(7,'2005-03-11',2000,2,4),(8,'2006-01-28',3000,1,2);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` int(3) NOT NULL,
  `task` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,'Output USER_ID, SALE and DATE from ORDERS table ordered by SALE and DATE (from max to min values), where SALE is a product of multiplication PRICE on QUANTITY.'),(2,'Create a view SALES based on the previous query.'),(3,'From the USERS table and SALES view, output BEST_CUSTOMER and TOTAL sorted by TOTAL (from max to min values), where TOTAL is a sum of all sales that belong to a certain customer. Print the BEST_CUSTOMER values in a natural manner, e.g. \'John Smith\'.'),(4,'Delete the SALES view. Change the previous query to get the same results without the removed view.');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'John','Smith'),(2,'Eric','Johnson'),(3,'Alain','Wood'),(4,'Ken','Baldwin');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `test5`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `test5` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `test5`;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answers` (
  `id` int(3) NOT NULL,
  `answer` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,'SELECT dep.name, SUM(salary) FROM dep, emp WHERE dep_id = dep.id GROUP BY dep_id ORDER BY SUM(salary) DESC;'),(2,'SELECT dep_id FROM emp GROUP BY dep_id HAVING COUNT(*) < 4;'),(3,'SELECT emp.name FROM emp, emp AS a WHERE emp.chief_id = a.id AND emp.salary > a.salary;'),(4,'SELECT dep_id, name, salary FROM emp WHERE salary = (SELECT MAX(a.salary) FROM emp AS a WHERE a.dep_id = emp.dep_id);'),(5,'SELECT emp.name FROM emp JOIN emp AS a ON emp.chief_id = a.id AND a.dep_id != emp.dep_id;');
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dep`
--

DROP TABLE IF EXISTS `dep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dep` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dep`
--

LOCK TABLES `dep` WRITE;
/*!40000 ALTER TABLE `dep` DISABLE KEYS */;
INSERT INTO `dep` VALUES (1,'Direction'),(2,'Secretariat'),(3,'IT'),(4,'Maintenance');
/*!40000 ALTER TABLE `dep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `dep_id` int(3) DEFAULT NULL,
  `chief_id` int(3) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp`
--

LOCK TABLES `emp` WRITE;
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` VALUES (1,1,NULL,'John Smith',100000),(2,1,1,'Donald Duck',90000),(3,1,1,'Jack Collinz',95000),(4,2,1,'Ann Johnson',20000),(5,3,2,'Larry Oldson',80000),(6,3,5,'Garry Poter',100000),(7,3,5,'Bob Martin',100000),(8,3,7,'Stive Patrick',20000),(9,4,3,'Sonya Monya',10000);
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` int(3) NOT NULL,
  `task` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,'Output list of department names with total salaries of all its employees.'),(2,'Output list of department\'s IDs which amount of employees is not more then three.'),(3,'Output list of employees which salary is more then its chief.'),(4,'Output list of employees with maximal salary for its department.'),(5,'Output list of employees which do not have a chief that works in the same department.');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `test6`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `test6` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `test6`;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answers` (
  `id` int(3) DEFAULT NULL,
  `answer` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,'GRANT ALL PRIVILEGES ON test_.* TO tester@localhost IDENTIFIED BY \'\'; SELECT host, user FROM mysql.user;'),(2,'SHOW DATABASES;'),(3,'mysqldump -u root test6 > test6.sql  |  DROP TABLE temp; SHOW TABLES;'),(4,'mysql -u root test6 < test6.sql  |  SELECT * FROM test6.temp;'),(5,'REVOKE ALL PRIVILEGES, GRANT OPTION FROM tester@localhost; DROP USER tester@localhost;');
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp`
--

DROP TABLE IF EXISTS `temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp` (
  `temp` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp`
--

LOCK TABLES `temp` WRITE;
/*!40000 ALTER TABLE `temp` DISABLE KEYS */;
INSERT INTO `temp` VALUES ('THIS IS A TEMPORARY TABLE FOR YOUR SQL PRACTICE.');
/*!40000 ALTER TABLE `temp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-05 14:51:31
