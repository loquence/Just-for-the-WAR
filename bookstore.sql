-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: bookstore
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `isbn` varchar(45) NOT NULL,
  `title` varchar(90) NOT NULL,
  `category` varchar(45) NOT NULL,
  `author` varchar(45) NOT NULL,
  `edition` int(11) NOT NULL,
  `publisher` varchar(45) NOT NULL,
  `pub_year` int(11) NOT NULL,
  `min_thresh` int(11) NOT NULL,
  `buying_price` double(11,2) NOT NULL,
  `selling_price` double(11,2) NOT NULL,
  `cover` varchar(45) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rating` int(11) DEFAULT '1',
  PRIMARY KEY (`book_id`),
  UNIQUE KEY `book_id_UNIQUE` (`book_id`),
  UNIQUE KEY `ISBN_UNIQUE` (`isbn`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'9781501139154','Leonardo da Vinci','biography','Walter Isaacson',1,'Simon & Schuster',2017,5,2.50,5.99,'images/da_vinci.jpg',16,1),(2,'9781250057266','Einstein and the Rabbi: Searching for the Soul','biography','Naomi Levy',1,'Flatiron Books',2017,5,5.08,27.99,'images/einstein_rabbi.jpg',20,2),(3,'9781250044662','Renegades','fantasy','Marissa Meyer',1,'Feiwel & Friends',2017,5,2.16,19.99,'images/renegades.jpg',15,3),(4,'9780525555360','Turtles All the Way Down','fiction','John Green',1,'Penguin Young Readers Group',2017,5,1.67,19.99,'images/turtles_down.jpg',14,4),(5,'9781616207823','What Unites Us: Reflections on Patriotism','nonfiction','Dan Rather',1,'Algonquin Books of Chapel Hill',2017,5,1.94,42.95,'images/reflections_patriotism.jpg',12,5),(6,'9780385490818','The Handmaid\'s Tale','fiction','Margaret Atwood',1,'Knopf Doubleday Publishing Group',1998,5,1.16,15.95,'images/handmaid_tale.jpg',11,5),(7,'9781449474256','Milk and Honey','poetry','Rupi Kaur',1,'Andrews McMeel Publishing',2015,5,1.06,14.99,'images/milk_honey.jpg',15,3),(8,'9780735224292','Little Fires Everywhere','fiction','Celeste Ng',1,'Penguin Publishing Group',2017,5,4.32,27.00,'images/little_fires.jpg',15,2),(9,'9781442242289','War and Genocide: A Concise History of the Holocaust','history','Doris Bergen',3,'Rowman & Littlefield Publishers, Inc.',2012,5,6.81,36.59,'images/war_genocide.jpg',15,4),(10,'9781101971062','Homegoing','historical fiction','Yaa Gyasi',1,'Knopf Doubleday Publishing Group',2016,5,2.84,10.99,'images/homegoing.jpg',15,4),(11,'9780451157447','Carrie','horror','Stephen King',1,'Penguin Publishing Group',1974,5,1.05,6.99,'images/carrie.jpg',15,3),(12,'9781488022722','The Lady Travelers Guide to Larceny with a Dashing Stranger','romance','Victoria Alexander',1,'Harlequin',2017,5,0.75,5.99,'images/lady_traveler.jpg',15,1),(13,'9781250122520','The Language of Thorns: Midnight Tales and Dangerous Magic','fantasy','Leigh Bardugo',1,'Imprint',2017,5,3.84,13.29,'images/language_thorns.jpg',15,2),(14,'9781496708885','Death by Eggnog','mystery','Alex Erickson',1,'Kensington',2017,5,0.24,3.89,'images/eggnog.jpg',15,5),(15,'9781566199155','Les Misérables','historical fiction','Victor Hugo',1,'Barnes & Noble Books',1996,5,5.85,14.99,'images/les_mis.jpg',15,2);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books_in_cart`
--

DROP TABLE IF EXISTS `books_in_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books_in_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_id` int(11) DEFAULT NULL,
  `book_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `cart_quantity` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `book_idx` (`book_id`),
  CONSTRAINT `book` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_in_cart`
--

LOCK TABLES `books_in_cart` WRITE;
/*!40000 ALTER TABLE `books_in_cart` DISABLE KEYS */;
INSERT INTO `books_in_cart` VALUES (23,0,6,16,1),(24,0,4,16,1),(25,0,6,18,1),(26,0,5,18,1),(27,0,5,20,1),(28,0,4,22,1),(29,0,6,24,1),(30,0,4,25,1),(31,0,6,26,1),(32,0,6,27,1),(33,0,6,28,1),(34,0,5,29,1),(35,0,4,29,1),(36,0,5,30,1),(37,0,5,31,1),(38,0,6,32,2),(40,0,1,33,1),(41,0,6,34,1),(42,0,6,35,1);
/*!40000 ALTER TABLE `books_in_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  `totalPrice` double DEFAULT '0',
  `number` int(11) DEFAULT '0',
  PRIMARY KEY (`cart_id`),
  KEY `promotion_idx` (`promotion_id`),
  CONSTRAINT `id` FOREIGN KEY (`cart_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `promotion` FOREIGN KEY (`promotion_id`) REFERENCES `promotion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (95,NULL,0,0),(98,NULL,15.95,1),(101,NULL,0,0);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_status` enum('PROCESSING','SHIPPING','DELIVERED') NOT NULL,
  `order_price` varchar(45) NOT NULL,
  `lastbookId` int(11) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_id_idx` (`customer_id`),
  CONSTRAINT `customer_id` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (31,95,'PROCESSING','42.95',37),(32,95,'PROCESSING','31.9',38),(35,95,'PROCESSING','15.95',42);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) NOT NULL,
  `percentage` double NOT NULL,
  `expiration` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
INSERT INTO `promotion` VALUES (3,'Test',0.05,'2019-12-12'),(4,'Test',0.2,'1990-12-12');
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `totalPrice` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` VALUES (1,5,1,'2017-12-05 10:22:40',42.95),(2,6,2,'2017-12-05 11:37:49',31.9),(3,1,1,'2017-12-05 12:23:58',5.99),(4,6,1,'2017-12-05 12:26:40',15.95),(5,6,1,'2017-12-08 10:18:42',15.95);
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipment_agency`
--

DROP TABLE IF EXISTS `shipment_agency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipment_agency` (
  `shipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  `contact_id` int(11) NOT NULL,
  PRIMARY KEY (`shipment_id`),
  KEY `contact_idx` (`contact_id`),
  CONSTRAINT `contact` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`contact_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment_agency`
--

LOCK TABLES `shipment_agency` WRITE;
/*!40000 ALTER TABLE `shipment_agency` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipment_agency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_info` (
  `phone_number` varchar(45) NOT NULL,
  `card_type` varchar(45) NOT NULL,
  `card_number` varchar(45) NOT NULL,
  `card_exp_date` datetime NOT NULL,
  `user_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `address` varchar(45) NOT NULL,
  `promos` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_info_id`),
  KEY `user_info_linked_id_idx` (`user_info_id`),
  KEY `user_info_linked_id_idx1` (`user_id`),
  CONSTRAINT `user_info_linked_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES ('1234123412','Visa','12345567678','2020-01-01 00:00:00',3,98,'a, as, asd, asdf, asdf',0),('Meep moop, morp, morp, mopr, 12345','Visa','175849752098','2020-02-02 00:00:00',4,95,'1239981232',0);
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_verification_code`
--

DROP TABLE IF EXISTS `user_verification_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_verification_code` (
  `email` varchar(45) NOT NULL,
  `code` varchar(45) NOT NULL,
  PRIMARY KEY (`email`),
  CONSTRAINT `email` FOREIGN KEY (`email`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_verification_code`
--

LOCK TABLES `user_verification_code` WRITE;
/*!40000 ALTER TABLE `user_verification_code` DISABLE KEYS */;
INSERT INTO `user_verification_code` VALUES ('eman.salah@uga.edu','8V2JHE3L1H'),('loqalt2@gmail.com','W36ZM5DJMK');
/*!40000 ALTER TABLE `user_verification_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `type` enum('CUSTOMER','MANAGER','ADMIN','SHIP') NOT NULL,
  `status` enum('UNVERIFIED','VERIFIED','SUSPENDED') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (45,'ryan','kennedy','ryandryv@gmail.com','test','ADMIN','VERIFIED'),(84,'Noot','Noot','smith.kaitlynelizabeth@gmail.com','test','ADMIN','VERIFIED'),(95,'Ryan','Kennedy','rpk72167@uga.edu','test1234','CUSTOMER','VERIFIED'),(98,'aasdf','fdssa','loqalt1@gmail.com','test1234','CUSTOMER','VERIFIED'),(99,'test','test','eman.salah@uga.edu','goodluck','CUSTOMER','SUSPENDED'),(101,'Ryan','Kennedy','loqalt3@gmail.com','test1234','CUSTOMER','VERIFIED'),(102,'test','t','loqalt2@gmail.com','test1234','CUSTOMER','UNVERIFIED');
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

-- Dump completed on 2017-12-08 10:56:02
