-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: code_blog
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `blog1`
--

DROP TABLE IF EXISTS `blog1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog1` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog1`
--

LOCK TABLES `blog1` WRITE;
/*!40000 ALTER TABLE `blog1` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_likes`
--

DROP TABLE IF EXISTS `blog_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_likes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `blog_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_id` (`blog_id`,`user_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `blog_likes_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`),
  CONSTRAINT `blog_likes_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_likes`
--

LOCK TABLES `blog_likes` WRITE;
/*!40000 ALTER TABLE `blog_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `username` varchar(255) NOT NULL,
  `like_count` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (25,'I am Kavyan ','I am beta tester . I do skating as sport. I\'m not good at it tho 🥲🥲🥲🥲🥲','2024-04-16 16:53:18','Kavyan.',0),(26,'Announcement:','Kavyan is the first beta tester.\r\nThank you for your support','2024-04-16 16:57:40','AMAN',0),(27,'Clash Royale Mastery: Unleash Your Strategic Prowess','Introduction:\r\nWelcome to Clash Royale Mastery, where we delve deep into the world of strategic gameplay, fierce competition, and exhilarating battles. As an avid Clash Royale player, I\'m here to share insights, tips, and tricks to help you dominate the Arena and rise through the ranks. Whether you\'re a seasoned veteran or just starting your journey, join me as we explore the intricate strategies and tactics that make Clash Royale one of the most captivating mobile games of all time.\r\n\r\nChapter 1: Understanding the Cards\r\nIn Clash Royale, success hinges on mastering the diverse array of cards at your disposal. From powerful offensive units to defensive structures and game-changing spells, each card serves a unique purpose on the battlefield. In this chapter, we\'ll dissect the strengths and weaknesses of different card types, discuss effective card synergies, and explore how to build decks that suit your playstyle.\r\n\r\nChapter 2: Navigating the Arenas\r\nAs you progress through the Arenas, you\'ll encounter increasingly skilled opponents and challenging game modes. From the quaint confines of Spell Valley to the daunting heights of Legendary Arena, each Arena presents its own set of obstacles and opportunities. In this chapter, we\'ll discuss strategies for navigating each Arena, adapting to different playstyles, and overcoming the toughest opponents.\r\n\r\nChapter 3: Mastering the Fundamentals\r\nAt the heart of Clash Royale lies a set of fundamental skills that separate the best players from the rest. From effective elixir management to precise troop placement and timely spell usage, mastering these fundamentals is essential for success on the battlefield. In this chapter, we\'ll dive deep into the nuances of gameplay mechanics, providing tips and drills to help you hone your skills and outmaneuver your opponents.\r\n\r\nChapter 4: Developing Advanced Strategies\r\nOnce you\'ve mastered the basics, it\'s time to elevate your game with advanced strategies and tactics. Whether you\'re executing devastating pushes, defending against relentless assaults, or orchestrating intricate counterplays, mastering these advanced techniques will give you a decisive edge in battle. In this chapter, we\'ll explore some of the most potent strategies employed by top players and discuss how you can incorporate them into your own gameplay.\r\n\r\nChapter 5: Nurturing a Winning Mindset\r\nIn Clash Royale, success isn\'t just about skill—it\'s also about mindset. Maintaining a positive attitude, staying focused under pressure, and learning from your mistakes are all essential aspects of cultivating a winning mindset. In this chapter, we\'ll discuss strategies for staying mentally resilient, bouncing back from defeats, and embracing the journey of improvement and growth.\r\n\r\nConclusion:\r\nClash Royale is more than just a game—it\'s a test of strategy, skill, and resilience. By mastering the intricacies of card mechanics, honing your gameplay fundamentals, and adopting a winning mindset, you can rise above the competition and achieve greatness in the Arena. I hope this blog has provided you with valuable insights and inspiration on your journey to Clash Royale mastery. Until next time, clash on','2024-04-16 16:59:45','Kavyan.',0),(28,'Kavyan\'s Account Hacked','Help Help Call Ambulance','2024-04-16 17:06:36','Kavyan.',0),(32,'Exploring the Evolution of MechArena: Where Science Fiction Meets Reality','Introduction:\r\nMechArena, the epitome of human ingenuity and technological advancement, stands as a testament to the fusion of science fiction with reality. In this essay, we delve into the origins, evolution, and impact of MechArena on society, exploring its significance in both entertainment and technological innovation.\r\n\r\nOrigins of MechArena:\r\nThe concept of mechanized combat has fascinated humanity for centuries, depicted in literature, film, and games. MechArena traces its roots back to these early imaginings, where towering machines clashed in epic battles. However, it was not until recent decades that technological advancements made MechArena a tangible reality.\r\n\r\nEvolution of MechArena:\r\nThe evolution of MechArena can be traced through significant milestones in robotics, artificial intelligence, and virtual reality. Early iterations relied on basic mechanical designs, but with the advent of advanced materials and engineering techniques, mechs became sleeker, faster, and more agile.\r\n\r\nFurthermore, the integration of AI systems revolutionized MechArena, enabling mechs to autonomously adapt to changing battlefield conditions and outmaneuver human opponents. Virtual reality technology transported pilots into the cockpit of these behemoths, immersing them in the adrenaline-pumping experience of mech combat like never before.\r\n\r\nImpact of MechArena:\r\nBeyond its entertainment value, MechArena has had a profound impact on various aspects of society. It serves as a platform for scientific research and innovation, driving advancements in robotics, AI, and human-computer interaction.\r\n\r\nMoreover, MechArena has emerged as a competitive sport, captivating audiences worldwide with its intense battles and strategic gameplay. Professional MechArena leagues have formed, attracting top talent and offering lucrative opportunities for skilled pilots.\r\n\r\nFurthermore, MechArena serves as a source of inspiration for future generations, igniting interest in STEM fields and encouraging the pursuit of technological excellence. It fosters a culture of innovation and collaboration, as engineers, designers, and gamers come together to push the boundaries of what is possible.\r\n\r\nConclusion:\r\nIn conclusion, MechArena represents the culmination of human imagination and technological prowess. From its humble origins in science fiction to its current status as a cutting-edge technological marvel, MechArena continues to captivate and inspire. As we look to the future, MechArena will undoubtedly remain at the forefront of innovation, pushing the boundaries of what is possible and reaffirming the indomitable spirit of human creativity.','2024-04-16 17:21:38','Kavyan.',0),(33,'MEANING  OF  BHAVYA  ','\"Bhavya\" is a Sanskrit word that means \"grand,\" \"splendid,\" or \"glorious.\" It is often used in Indian languages such as Hindi, Kannada, Telugu, and others to describe something majestic, impressive, or worthy of admiration. It can be used to describe physical objects, events, or even abstract concepts that evoke a sense of grandeur or greatness. Synonyms for \"Bhavya\"\r\n\r\n1. Magnificent\r\n2. Majestic\r\n3. Splendid\r\n4. Grandiose\r\n5. Regal\r\n6. Exalted\r\n7. Noble\r\n8. Stately\r\n9. Dignified\r\n10. Impressive\r\n\r\n','2024-04-16 17:46:49','STARLIGHT  CUPCAKE 🌟🧁',0),(35,'Sanjeev ','My favourite fruit is banana ','2024-04-16 17:55:21','Sanjeev ',0),(36,'Hellooooooooo !!!!!!!!!','THE SITE PUBLIC AND A STATIC DOMAIN NAME','2024-06-29 07:54:44','AMAN',0),(38,'hi','hello\r\nhello','2024-07-31 15:29:26','AMAN',0),(39,'hi','hi\r\nhi','2024-07-31 15:39:12','AMAN',0);
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'AMAN','@M@N2007'),(2,'Kavyan.','Kavyan.'),(3,'TEST','test'),(4,'STARLIGHT  CUPCAKE 🌟🧁','305'),(5,'Sanjeev ','Sanjeev@1975'),(6,'AMAN123','EGSHRYHREU'),(7,'admin','admin'),(8,'admin1','admin1'),(9,'admin2','admin2');
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

-- Dump completed on 2024-07-31 23:28:27
