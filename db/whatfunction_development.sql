-- MySQL dump 10.11
--
-- Host: localhost    Database: whatfunction_development
-- ------------------------------------------------------
-- Server version	5.0.67

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
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `notes` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `programming_language_id` int(11) default NULL,
  `what_function_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1,'just like it','slice in ruby works almost just like this one',2,1,'2008-11-06 18:51:14','2008-11-06 18:51:14');
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programming_languages`
--

DROP TABLE IF EXISTS `programming_languages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `programming_languages` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `programming_languages`
--

LOCK TABLES `programming_languages` WRITE;
/*!40000 ALTER TABLE `programming_languages` DISABLE KEYS */;
INSERT INTO `programming_languages` VALUES (1,'Ruby','2008-10-19 17:46:01','2008-10-19 17:46:01'),(2,'PHP','2008-10-19 17:46:08','2008-10-19 17:46:08'),(4,'Javascript','2008-10-19 17:46:25','2008-10-19 17:46:25');
/*!40000 ALTER TABLE `programming_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `revisions` (
  `id` int(11) NOT NULL auto_increment,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `revised_at` datetime NOT NULL,
  `content` text NOT NULL,
  `author` varchar(60) default NULL,
  `ip` varchar(60) default NULL,
  `obj_type` varchar(255) default NULL,
  `obj_id` int(11) NOT NULL,
  `field_name` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
INSERT INTO `revisions` VALUES (1,'2008-11-12 17:34:52','2008-11-12 17:34:52','2008-11-12 17:34:52','the note so far2','unknown',NULL,'Twin',1,'note'),(2,'2008-11-12 17:41:46','2008-11-12 17:41:46','2008-11-12 17:41:46','the note so far23','unknown',NULL,'Twin',1,'note'),(3,'2008-11-12 17:43:24','2008-11-12 17:43:24','2008-11-12 17:43:24','the note so far2','Unknown',NULL,'Twin',1,'note'),(4,'2008-11-12 17:43:34','2008-11-12 17:43:34','2008-11-12 17:43:34','the note so far24','unknown',NULL,'Twin',1,'note'),(5,'2008-11-12 17:45:31','2008-11-12 17:45:31','2008-11-12 17:45:31','the note so far245','unknown',NULL,'Twin',1,'note'),(6,'2008-11-12 18:00:53','2008-11-12 18:00:53','2008-11-12 18:00:53','the note so far2454','unknown',NULL,'Twin',1,'note'),(7,'2008-11-12 18:01:19','2008-11-12 18:01:19','2008-11-12 18:01:19','the note so far24542','unknown',NULL,'Twin',1,'note'),(8,'2008-11-12 18:01:46','2008-11-12 18:01:46','2008-11-12 18:01:46','the note so far24542a','unknown',NULL,'Twin',1,'note'),(9,'2008-11-12 18:02:39','2008-11-12 18:02:39','2008-11-12 18:02:39','the note so far24542a','unknown',NULL,'Twin',1,'note'),(10,'2008-11-12 18:02:43','2008-11-12 18:02:43','2008-11-12 18:02:43','the note so far24542a','unknown',NULL,'Twin',1,'note'),(11,'2008-11-12 18:04:10','2008-11-12 18:04:10','2008-11-12 18:04:10','the note so far24542a','unknown',NULL,'Twin',1,'note'),(12,'2008-11-12 18:04:55','2008-11-12 18:04:55','2008-11-12 18:04:55','the note so far24542a','unknown',NULL,'Twin',1,'note'),(13,'2008-11-12 18:06:38','2008-11-12 18:06:38','2008-11-12 18:06:38','the note so far24542a','unknown',NULL,'Twin',1,'note'),(14,'2008-11-12 18:06:47','2008-11-12 18:06:47','2008-11-12 18:06:47','the note so far24542a','unknown',NULL,'Twin',1,'note'),(15,'2008-11-12 18:29:35','2008-11-12 18:29:35','2008-11-12 18:29:35','the note so far24542ab','unknown',NULL,'Twin',1,'note'),(16,'2008-11-12 18:29:46','2008-11-12 18:29:46','2008-11-12 18:29:46','the note so far24542abc','unknown',NULL,'Twin',1,'note'),(17,'2008-12-02 07:15:28','2008-12-02 07:15:28','2008-12-02 07:15:28','slice is really a bit more flexible than substr, but if you are coming from php and looking for a ruby method to use, then this String method is it!','unknown',NULL,'Twin',1,'note'),(18,'2008-12-02 08:31:24','2008-12-02 08:31:24','2008-12-02 08:31:24','str.slice(fixnum) => fixnum or nil\r\nstr.slice(fixnum, fixnum) => new_str or nil\r\nstr.slice(range) => new_str or nil\r\nstr.slice(regexp) => new_str or nil\r\nstr.slice(regexp, fixnum) => new_str or nil\r\nstr.slice(other_str) => new_str or nil\r\n\r\nyou can also do this instead of using slice, but its not necessarily safe for international characters\r\n\r\nstr[fixnum] => fixnum or nil\r\nstr[fixnum, fixnum] => new_str or nil\r\nstr[range] => new_str or nil\r\nstr[regexp] => new_str or nil\r\nstr[regexp, fixnum] => new_str or nil\r\nstr[other_str] => new_str or nil','unknown',NULL,'WhatFunction',2,'description'),(19,'2008-12-02 08:34:21','2008-12-02 08:34:21','2008-12-02 08:34:21','str.slice(fixnum) => fixnum or nil\r\nstr.slice(fixnum, fixnum) => new_str or nil\r\nstr.slice(range) => new_str or nil\r\nstr.slice(regexp) => new_str or nil\r\nstr.slice(regexp, fixnum) => new_str or nil\r\nstr.slice(other_str) => new_str or nil\r\n\r\nyou can also do this instead of using slice, but its not necessarily safe for international characters\r\n\r\nstr[fixnum] => fixnum or nil\r\nstr[fixnum, fixnum] => new_str or nil\r\nstr[range] => new_str or nil\r\nstr[regexp] => new_str or nil\r\nstr[regexp, fixnum] => new_str or nil\r\nstr[other_str] => new_str or nil\r\n\r\nword, history','unknown',NULL,'WhatFunction',2,'description'),(20,'2008-12-02 08:34:29','2008-12-02 08:34:29','2008-12-02 08:34:29','str.slice(fixnum) => fixnum or nil\r\nstr.slice(fixnum, fixnum) => new_str or nil\r\nstr.slice(range) => new_str or nil\r\nstr.slice(regexp) => new_str or nil\r\nstr.slice(regexp, fixnum) => new_str or nil\r\nstr.slice(other_str) => new_str or nil\r\n\r\nyou can also do this instead of using slice, but its not necessarily safe for international characters\r\n\r\nstr[fixnum] => fixnum or nil\r\nstr[fixnum, fixnum] => new_str or nil\r\nstr[range] => new_str or nil\r\nstr[regexp] => new_str or nil\r\nstr[regexp, fixnum] => new_str or nil\r\nstr[other_str] => new_str or nil\r\n\r\nand out','unknown',NULL,'WhatFunction',2,'description'),(21,'2008-12-02 08:34:36','2008-12-02 08:34:36','2008-12-02 08:34:36','str.slice(fixnum) => fixnum or nil\r\nstr.slice(fixnum, fixnum) => new_str or nil\r\nstr.slice(range) => new_str or nil\r\nstr.slice(regexp) => new_str or nil\r\nstr.slice(regexp, fixnum) => new_str or nil\r\nstr.slice(other_str) => new_str or nil\r\n\r\nyou can also do this instead of using slice, but its not necessarily safe for international characters\r\n\r\nstr[fixnum] => fixnum or nil\r\nstr[fixnum, fixnum] => new_str or nil\r\nstr[range] => new_str or nil\r\nstr[regexp] => new_str or nil\r\nstr[regexp, fixnum] => new_str or nil\r\nstr[other_str] => new_str or nil','unknown',NULL,'WhatFunction',2,'description'),(22,'2008-12-02 08:37:27','2008-12-02 08:37:27','2008-12-02 08:37:27','tim sucks\r\nstr.slice(fixnum) => fixnum or nil\r\nstr.slice(fixnum, fixnum) => new_str or nil\r\nstr.slice(range) => new_str or nil\r\nstr.slice(regexp) => new_str or nil\r\nstr.slice(regexp, fixnum) => new_str or nil\r\nstr.slice(other_str) => new_str or nil\r\n\r\nyou can also do this instead of using slice, but its not necessarily safe for international characters\r\n\r\nstr[fixnum] => fixnum or nil\r\nstr[fixnum, fixnum] => new_str or nil\r\nstr[range] => new_str or nil\r\nstr[regexp] => new_str or nil\r\nstr[regexp, fixnum] => new_str or nil\r\nstr[other_str] => new_str or nil','unknown',NULL,'WhatFunction',2,'description'),(23,'2008-12-02 08:37:36','2008-12-02 08:37:36','2008-12-02 08:37:36','str.slice(fixnum) => fixnum or nil\r\nstr.slice(fixnum, fixnum) => new_str or nil\r\nstr.slice(range) => new_str or nil\r\nstr.slice(regexp) => new_str or nil\r\nstr.slice(regexp, fixnum) => new_str or nil\r\nstr.slice(other_str) => new_str or nil\r\n\r\nyou can also do this instead of using slice, but its not necessarily safe for international characters\r\n\r\nstr[fixnum] => fixnum or nil\r\nstr[fixnum, fixnum] => new_str or nil\r\nstr[range] => new_str or nil\r\nstr[regexp] => new_str or nil\r\nstr[regexp, fixnum] => new_str or nil\r\nstr[other_str] => new_str or nil','unknown',NULL,'WhatFunction',2,'description'),(24,'2008-12-02 09:06:33','2008-12-02 09:06:33','2008-12-02 09:06:33','these are pretty much exactly the same, just you know JS works on an object, so you have one less parameter and all but yeah, equivalent functions','unknown',NULL,'Twin',4,'note'),(25,'2008-12-02 09:09:43','2008-12-02 09:09:43','2008-12-02 09:09:43','ruby slice is a bit more flexible than js substring but they are generally equivalent','unknown',NULL,'Twin',3,'note'),(26,'2008-12-02 09:11:03','2008-12-02 09:11:03','2008-12-02 09:11:03',' string substr  ( string $string  , int $start  [, int $length  ] )\r\n\r\nReturns the portion of string specified by the start and length parameters. \r\n\r\n If start  is non-negative, the returned string will start at the start \'th position in string , counting from zero. For instance, in the string \'abcdef\', the character at position 0 is \'a\', the character at position 2 is \'c\', and so forth.\r\n\r\nIf start is negative, the returned string will start at the start \'th character from the end of string .\r\n\r\nIf string is less than or equal to start characters long, FALSE will be returned. \r\n\r\n If length  is given and is positive, the string returned will contain at most length  characters beginning from start  (depending on the length of string ).\r\n\r\nIf length is given and is negative, then that many characters will be omitted from the end of string (after the start position has been calculated when a start is negative). If start denotes a position beyond this truncation, an empty string will be returned. ','unknown',NULL,'WhatFunction',1,'description'),(27,'2008-12-02 09:12:30','2008-12-02 09:12:30','2008-12-02 09:12:30','php version is a little more flexible with the negative number tricks','unknown',NULL,'Twin',2,'note'),(28,'2008-12-02 09:13:52','2008-12-02 09:13:52','2008-12-02 09:13:52',' array explode  ( string $delimiter  , string $string  [, int $limit  ] )\r\n\r\nReturns an array of strings, each of which is a substring of string formed by splitting it on boundaries formed by the string delimiter . \r\n\r\n\r\ndelimiter\r\n\r\n    The boundary string.\r\nstring\r\n\r\n    The input string.\r\nlimit\r\n\r\n    If limit is set, the returned array will contain a maximum of limit elements with the last element containing the rest of string .\r\n\r\n    If the limit parameter is negative, all components except the last -limit are returned.\r\n\r\nIf delimiter  is an empty string (\"\"), explode() will return FALSE. If delimiter  contains a value that is not contained in string , then explode() will return an array containing string . \r\n\r\nChangelog\r\n5.1.0  	 Support for negative limit s was added\r\n4.0.1 	The limit parameter was added ','unknown',NULL,'WhatFunction',3,'description');
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20081019174131'),('20081019174421'),('20081106183348'),('20081106183835'),('20081106184039'),('20081106205623'),('20081112155144'),('20081112172147'),('20081202063433');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twins`
--

DROP TABLE IF EXISTS `twins`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `twins` (
  `id` int(11) NOT NULL auto_increment,
  `left_function_id` int(11) default NULL,
  `right_function_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `note` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `twins`
--

LOCK TABLES `twins` WRITE;
/*!40000 ALTER TABLE `twins` DISABLE KEYS */;
INSERT INTO `twins` VALUES (1,1,2,'2008-11-06 21:13:52','2008-12-02 07:15:28','slice is really a bit more flexible than substr, but if you are coming from php and looking for a ruby method to use, then this String method is it!'),(2,12,1,'2008-12-02 09:01:20','2008-12-02 09:12:30','php version is a little more flexible with the negative number tricks'),(3,12,2,'2008-12-02 09:01:25','2008-12-02 09:09:43','ruby slice is a bit more flexible than js substring but they are generally equivalent'),(4,4,3,'2008-12-02 09:04:48','2008-12-02 09:06:33','these are pretty much exactly the same, just you know JS works on an object, so you have one less parameter and all but yeah, equivalent functions');
/*!40000 ALTER TABLE `twins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `what_functions`
--

DROP TABLE IF EXISTS `what_functions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `what_functions` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `description` text,
  `programming_language_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `what_functions`
--

LOCK TABLES `what_functions` WRITE;
/*!40000 ALTER TABLE `what_functions` DISABLE KEYS */;
INSERT INTO `what_functions` VALUES (1,'substr',' string substr  ( string $string  , int $start  [, int $length  ] )\r\n\r\nReturns the portion of string specified by the start and length parameters. \r\n\r\n If start  is non-negative, the returned string will start at the start \'th position in string , counting from zero. For instance, in the string \'abcdef\', the character at position 0 is \'a\', the character at position 2 is \'c\', and so forth.\r\n\r\nIf start is negative, the returned string will start at the start \'th character from the end of string .\r\n\r\nIf string is less than or equal to start characters long, FALSE will be returned. \r\n\r\n If length  is given and is positive, the string returned will contain at most length  characters beginning from start  (depending on the length of string ).\r\n\r\nIf length is given and is negative, then that many characters will be omitted from the end of string (after the start position has been calculated when a start is negative). If start denotes a position beyond this truncation, an empty string will be returned. ',2,'2008-10-19 17:48:39','2008-12-02 09:11:03'),(2,'slice','str.slice(fixnum) => fixnum or nil\r\nstr.slice(fixnum, fixnum) => new_str or nil\r\nstr.slice(range) => new_str or nil\r\nstr.slice(regexp) => new_str or nil\r\nstr.slice(regexp, fixnum) => new_str or nil\r\nstr.slice(other_str) => new_str or nil\r\n\r\nyou can also do this instead of using slice, but its not necessarily safe for international characters\r\n\r\nstr[fixnum] => fixnum or nil\r\nstr[fixnum, fixnum] => new_str or nil\r\nstr[range] => new_str or nil\r\nstr[regexp] => new_str or nil\r\nstr[regexp, fixnum] => new_str or nil\r\nstr[other_str] => new_str or nil',1,'2008-10-19 17:49:35','2008-12-02 08:37:36'),(3,'explode',' array explode  ( string $delimiter  , string $string  [, int $limit  ] )\r\n\r\nReturns an array of strings, each of which is a substring of string formed by splitting it on boundaries formed by the string delimiter . \r\n\r\n\r\ndelimiter\r\n\r\n    The boundary string.\r\nstring\r\n\r\n    The input string.\r\nlimit\r\n\r\n    If limit is set, the returned array will contain a maximum of limit elements with the last element containing the rest of string .\r\n\r\n    If the limit parameter is negative, all components except the last -limit are returned.\r\n\r\nIf delimiter  is an empty string (\"\"), explode() will return FALSE. If delimiter  contains a value that is not contained in string , then explode() will return an array containing string . \r\n\r\nChangelog\r\n5.1.0  	 Support for negative limit s was added\r\n4.0.1 	The limit parameter was added ',2,'2008-11-06 21:50:57','2008-12-02 09:13:52'),(4,'split','The split() method is used to split a string into an array of strings.\r\n\r\nSyntax\r\n--------------------\r\nstringObject.split(separator, howmany)\r\n\r\n\r\nParameters\r\n--------------------\r\nseparator - Required. Specifies the character, regular expression, or substring that is used to determine where to split the string\r\n\r\nhowmany - Optional. Specify how many times split should occur. Must be a numeric value\r\n\r\nNotes\r\n--------------------\r\nIf an empty string (\"\") is used as the separator, the string is split between each character.',4,'2008-11-06 21:51:24','2008-12-02 08:06:24'),(12,'substring','Syntax\r\n------------------\r\nstringObject.substring(start,stop)\r\n\r\n\r\nParameters 	\r\n------------------\r\nstart -	Required. Where to start the extraction. Must be a numeric value\r\n\r\nstop - Optional. Where to stop the extraction. Must be a numeric value\r\n\r\nNote: The start index starts at 0.\r\n\r\nNote: If the stop parameter is omitted, this method extracts to the end of the string.',4,'2008-12-02 06:22:07','2008-12-02 06:37:52');
/*!40000 ALTER TABLE `what_functions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2008-12-02  9:17:56
