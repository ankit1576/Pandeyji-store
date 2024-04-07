-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: mycart
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `categoryId` int NOT NULL AUTO_INCREMENT,
  `categoryDescription` varchar(255) DEFAULT NULL,
  `categoryTitle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (13,'Gajak is a traditional Indian sweet made from sesame seeds or peanuts and jaggery. It is rich in flavor and texture, often enjoyed during festivals like Makar Sankranti and Lohri.','Gajak'),(14,'Chikki is a popular Indian sweet snack made from jaggery and peanuts. It\'s crunchy, sweet, and often flavored with cardamom or other spices.','Chikki'),(15,'Lattha is a traditional Indian sweet made from wheat flour, ghee, sugar, and optionally flavored with cardamom. It is often shaped into small, round balls and is popular during festivals and celebrations.\r\n\r\n\r\n\r\n\r\n\r\n\r\n','Lattha'),(16,'Soan Papdi is a popular Indian sweet known for its flaky texture and sweet taste. It is made from gram flour, sugar, ghee, and cardamom powder, giving it a unique flavor.','SoanPapdi'),(17,'Ladoo is a popular Indian sweet made from ingredients like flour, sugar, and ghee, often flavored with cardamom or other spices. It is usually round in shape and can vary in texture from soft to firm.','Ladoo'),(18,'Petha is a translucent soft candy from North India, made from winter melon or ash gourd, sugar, and flavored with rose water.','Petha');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `pId` int NOT NULL AUTO_INCREMENT,
  `pDesc` varchar(3000) DEFAULT NULL,
  `pDiscount` int NOT NULL,
  `pName` varchar(255) DEFAULT NULL,
  `pPhoto` varchar(255) DEFAULT NULL,
  `pPrice` int NOT NULL,
  `pQuantity` int NOT NULL,
  `category_categoryId` int DEFAULT NULL,
  PRIMARY KEY (`pId`),
  KEY `FK825v7lftk50hyta3jlxerywcb` (`category_categoryId`),
  CONSTRAINT `FK825v7lftk50hyta3jlxerywcb` FOREIGN KEY (`category_categoryId`) REFERENCES `category` (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (11,'Alsi gajak is a traditional Indian sweet made primarily from flaxseeds (alsi), jaggery (gur), and ghee. Flaxseeds are rich in omega-3 fatty acids, fiber, and antioxidants, making alsi gajak a nutritious treat. Jaggery provides natural sweetness and is packed with minerals like iron and magnesium. Ghee adds richness and flavor to the gajak. This sweet is not only delicious but also provides several health benefits due to its nutritious ingredients.',17,'Alsi Gajak','AlsiGajak.jpg',249,1000,13),(12,'Bombay chikki, also known as peanut brittle, is a popular Indian sweet made from peanuts, jaggery (or sugar), and sometimes flavored with cardamom. It\'s a crunchy and sweet treat, often enjoyed during festivals like Diwali. The peanuts are roasted and then mixed with the melted jaggery to form a hard, brittle texture once cooled. It\'s a delicious snack that combines the natural sweetness of jaggery with the nutty flavor of peanuts.',12,'Bombay Chikki','bombay-chikki.png',299,998,14),(13,'Cherry petha is a delicious and popular Indian sweet made from ash gourd (also known as winter melon or white pumpkin), sugar, and cherry essence. It is shaped into cubes and often garnished with candied cherries, giving it a vibrant and attractive appearance. Cherry petha has a soft and chewy texture with a sweet flavor, making it a delightful treat for any occasion.',7,'Cherry Petha','cherri-petha-2.png',199,1000,18),(14,'Chocolate cream gajak is a delightful twist on the traditional gajak, combining the richness of chocolate with the crunch of gajak. It typically contains ingredients like chocolate, cream, sugar, and nuts. This indulgent treat offers a perfect blend of sweet chocolate flavor and the unique texture of gajak, making it a favorite among chocolate lovers.',16,'Chocolate Cream Gajak','chocolate-cream-gazak-3.png',279,999,13),(15,'Double Chocolate Latha is a decadent dessert that combines the richness of chocolate with the softness of latha, creating a delightful treat for chocolate lovers. It is made with flour, sugar, cocoa powder, butter, eggs, milk, and chocolate chips. The latha is infused with chocolate flavor and studded with chocolate chips, making it a double delight for your taste buds. This dessert is perfect for satisfying your chocolate cravings and indulging in a sweet and comforting treat',10,'Double Chocolate Lattha','double-chocolate-lattha.png',219,1000,15),(16,'Elaichi (Cardamom) roll is a traditional Indian sweet delicacy made with a blend of cardamom-infused khoya (thickened milk), sugar, and nuts. It is then rolled into a cylindrical shape and garnished with pistachios or almonds. This sweet has a rich, creamy texture with a distinct flavor of cardamom, making it a favorite during festive occasions and celebrations.',10,'Elachi Roll','elaichi-roll-3.png',199,999,13),(17,'Gud Kaju Pista Desi Ghee Laddu is a traditional Indian sweet made from wholesome ingredients. It typically includes cashews (kaju) and pistachios (pista) mixed with clarified butter (desi ghee) and sweetened with jaggery (gud). These laddus are not only delicious but also nutritious, as they are rich in healthy fats, protein, and minerals. They are often enjoyed during festivals and special occasions as a delightful treat.',27,'Gud-Kaju Pista Desi ghee Lattha','gud-kaju-pista-desi-ghee-lattha-3.png',499,1000,15),(18,'Gud Lattha is a traditional Indian sweet made from jaggery (gud), which is a concentrated product of date, cane juice, or palm sap without separation of the molasses and crystals, usually prepared in a solid or semi-solid form. The ingredients typically include jaggery, ghee (clarified butter), and sometimes nuts or seeds for added texture and flavor. The jaggery is melted and mixed with ghee, then shaped into a block or bar-like form. It\'s enjoyed as a sweet treat and is often consumed during festivals and special occasions.',45,'Gud Lattha','gud-lattha.png',189,999,15),(19,'Gud Moongfali Gajak is a traditional Indian sweet made from jaggery (gud), peanuts (moongfali), and spices. It is a delicious and nutritious treat enjoyed during festivals like Makar Sankranti. The gajak is prepared by roasting peanuts and then mixing them with melted jaggery. This mixture is then spread on a flat surface and cut into square or rectangular shapes once cooled. Gud Moongfali Gajak is not only tasty but also provides a good amount of protein, healthy fats, and essential minerals.',18,'Gud Moogfali Gajak','gud-moongfali-gazak.png',289,998,13),(20,'Gud Moongfali Laddu is a traditional Indian sweet made from roasted peanuts, jaggery (gud), and ghee. It\'s a delicious and nutritious treat, rich in protein, fiber, and essential nutrients. The roasted peanuts give it a crunchy texture, while the jaggery adds sweetness and a rich flavor. It\'s often enjoyed during festivals and as a healthy snack.',9,'Gud Moogfali Lattha','gud-moongfali-lattha-3.png',269,1000,15),(21,'Gud Nakul is a traditional Indian sweet made from jaggery (gud) and puffed rice (murmura or laiya). It\'s a popular snack during festivals like Makar Sankranti. Jaggery adds sweetness and a rich caramel flavor, while puffed rice gives it a light and crunchy texture. The combination of these ingredients creates a delicious treat that is both sweet and savory.',10,'Gud Nakul','gud-nakul.png',210,1000,17),(22,'Gud Nakul Patti, also known as Gur Nakul Patti or Gud Papdi, is a traditional Indian sweet made from jaggery (gur), peanuts, and sesame seeds. It is flavored with cardamom and sometimes includes other nuts like almonds. The mixture is cooked until it thickens and then spread out to cool and set before cutting into small, square-shaped pieces. It is a delicious and nutritious snack, often enjoyed during festivals like Makar Sankranti and Lohri.',19,'Gud Nakul Patti','gud-nakul-patti.png',218,998,14),(23,'Gud Patli Gajak is a traditional Indian sweet made with just a few simple ingredients. It typically consists of jaggery (gud), sesame seeds, and sometimes peanuts. The jaggery is melted and mixed with roasted sesame seeds and peanuts, then spread thinly and allowed to cool and harden into a delicious and crunchy treat.',25,'Gud Patli Gajak','GudPatliGajak.jpg',199,997,13),(24,'Kaju Pista Desi Ghee Ladoo is a traditional Indian sweet made with cashews, pistachios, desi ghee (clarified butter), sugar, and flavored with cardamom. This delightful sweet is rich, nutty, and full of flavor, making it a popular choice for festivals and celebrations.',21,'Pure Cashew Pista Desi Ghee Lattha ','kaju-pista-desi-ghee-lattha.png',399,1000,15),(25,'Kala til chikki is a traditional Indian sweet made from black sesame seeds, jaggery, and a hint of cardamom. It\'s a crunchy and nutritious treat, rich in iron, calcium, and antioxidants. The combination of nutty sesame seeds and sweet jaggery makes it a delightful snack.',36,'Kala til Chikki','kala-til-chikki.png',199,1000,14),(26,'Kala til ladoo is a traditional Indian sweet made from black sesame seeds, jaggery, and ghee. It\'s a nutritious treat rich in calcium, iron, and antioxidants. The combination of roasted sesame seeds and jaggery gives it a unique flavor and crunchy texture. It\'s often enjoyed during festivals like Makar Sankranti for its warmth and energy-giving properties.',49,'Kala Til Ladoo','kala-til-laddu.png',189,998,17),(27,'Kala Til Gajak, also known as black sesame seed brittle, is a traditional Indian sweet made from black sesame seeds, jaggery (or sugar), and ghee. The sesame seeds are roasted and mixed with melted jaggery and ghee to form a sticky mixture, which is then spread out and allowed to cool and harden. This sweet treat is rich in calcium, iron, and other nutrients, making it not only delicious but also nutritious',37,'Kala Til Gajak','KaleTilKiGajak.jpg',215,1000,13),(28,'Khoya mava gajak is a traditional Indian sweet made from khoya (milk solids), mava (reduced milk), sugar, ghee, and various nuts and spices. It\'s a rich and indulgent treat, perfect for celebrating special occasions.',51,'Khoya Mawa Gajak','khoya-gazak.png',399,999,13),(29,'Masale dar gajak is a flavorful Indian sweet made with a blend of spices and traditional gajak ingredients. It typically contains jaggery, sesame seeds, peanuts, ghee, and a mix of spices like cardamom, ginger, and black pepper. The spices add a unique and aromatic flavor to the gajak, making it a delightful and festive treat.',14,'Masaledar Gajak','masaledar-gajak-3.png',299,1000,13),(30,'Moongfali (peanut) gud (jaggery) chikki is a traditional Indian sweet made from roasted peanuts and jaggery. It\'s a crunchy and sweet snack that\'s popular during festivals like Makar Sankranti. The peanuts provide a nutty flavor and are a good source of protein, while the jaggery adds sweetness and is rich in iron and other minerals.',12,'Moongfali Gol Chikki','moongfali-goal-chikki.png',200,997,14),(31,'Punjabi chikki is a traditional Indian sweet made primarily from jaggery and peanuts. It\'s known for its crunchy texture and sweet flavor, making it a popular snack. The key ingredients include roasted peanuts, jaggery (or sugar), and sometimes sesame seeds or coconut. It\'s often flavored with cardamom or other spices to enhance its taste.',15,'Punjabi Chikki','Panjabi-Chikki.png',215,1000,14),(32,'Plain peanut chikki is a traditional Indian sweet made from roasted peanuts and jaggery. It\'s a crunchy and sweet delicacy enjoyed during festivals and as a snack. The simple recipe involves caramelizing jaggery, mixing in roasted peanuts, and then flattening the mixture to cool and harden into chikki bars.',54,'Plain Peanut Chikki','peanut-chikki-3.png',201,1000,14),(33,'White til ladoo is a traditional Indian sweet made from white sesame seeds (til), jaggery (gur), and ghee. It\'s a nutritious treat packed with the goodness of sesame seeds, which are rich in calcium, iron, and magnesium. Jaggery adds sweetness and is a healthier alternative to refined sugar. Ghee enhances the flavor and gives the ladoos a rich, buttery taste. Overall, white til ladoo is a delicious and wholesome sweet enjoyed during festivals and special occasions.',12,'White Til Ladoo','safed-til-laddu.png',219,997,17),(34,'Shakkar gajak is a traditional Indian sweet made from sesame seeds (til) and jaggery (gur). The sesame seeds are roasted and mixed with melted jaggery to form a thick mixture, which is then flattened and cut into pieces once it cools down. Sometimes, ghee is also added to enhance the flavor. It\'s a delicious and nutritious treat, rich in iron, calcium, and other essential nutrients',45,'Shakkar Gajak','shakkar-gazak-.png',199,998,13),(35,'Shakkar gajak roll is a traditional Indian sweet made from jaggery (shakkar), sesame seeds, and ghee. It is a rich and flavorful sweet treat that is popular during festivals and special occasions. The combination of jaggery and sesame seeds gives it a unique taste and texture, making it a favorite among sweet lovers.',52,'Shakkar Gajak Roll','shakkar-gazak-roll.png',216,1000,13),(36,'Shakkar kaju desi ghee lattha is a traditional Indian sweet made from cashew nuts, clarified butter (ghee), and sugar. It\'s a rich and indulgent dessert known for its melt-in-your-mouth texture and sweet, nutty flavor.',39,'Shakar Kaju Desi Ghee Lattha','shakkar-kaju-desi-ghee-lattha.png',239,998,15),(37,'Shakkar lattha is a traditional Indian sweet made from sugar and ghee. It\'s often flavored with cardamom and garnished with nuts like almonds and pistachios. This sweet delicacy has a rich, caramel-like taste and a melt-in-your-mouth texture, making it a popular choice for festive occasions and celebrations.',19,'Shakkar Lattha','shakkar-lattha.png',222,1000,15),(38,'Malai Rewadi is a traditional Indian sweet made from condensed milk (malai), sugar, and ghee. It\'s often flavored with cardamom and topped with nuts like almonds and pistachios. The condensed milk gives it a rich and creamy texture, making it a delightful treat for special occasions',46,'Malai Rewdi','shakkar-revdi.png',278,999,18),(39,'White til chikki, also known as sesame brittle, is a traditional Indian sweet made from white sesame seeds, jaggery, and ghee. It\'s a crunchy and nutritious snack that\'s rich in calcium, iron, and magnesium. The sesame seeds are toasted to enhance their flavor, then mixed with melted jaggery and ghee. The mixture is spread thinly and allowed to cool and harden before being cut into pieces. It\'s a popular treat during festivals like Makar Sankranti and is enjoyed for its sweet and nutty flavor.',39,'White Til Chikki','til-chikki.png',190,998,17),(40,'White til chikki, also known as sesame brittle, is a traditional Indian sweet made from white sesame seeds, jaggery, and ghee. It\'s a crunchy and nutritious snack that\'s rich in calcium, iron, and magnesium. The sesame seeds are toasted to enhance their flavor, then mixed with melted jaggery and ghee. The mixture is spread thinly and allowed to cool and harden before being cut into pieces. It\'s a popular treat during festivals like Makar Sankranti and is enjoyed for its sweet and nutty flavor.',57,'Till Bahar','till-bahar-gazak.png',276,1000,16);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_Address` varchar(1500) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_password` varchar(100) DEFAULT NULL,
  `user_phone` varchar(12) DEFAULT NULL,
  `userPic` varchar(255) DEFAULT NULL,
  `user_Type` varchar(1500) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (42,'65/102 Moti mohal kanpur','rajanpandey1576@gmail.com','Ankit Pandey','12345','7007237511','default.jpg','normal'),(43,'Hyderabad newcity A block nead shanti kala ','prashanth123@gmail.com','Prashanth Shukla','12345','6758493217','default.jpg','normal'),(44,'65/102 MOTI MOHAL','ankitapandey1576@gmail.com','Ankita Pandey','12345','8239842983','default.jpg','normal'),(45,'Hyderabad newcity A block nead shanti kala','1576@gmail.com','Test User','12345','1234567890','default.jpg','admin');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-07 22:07:47
