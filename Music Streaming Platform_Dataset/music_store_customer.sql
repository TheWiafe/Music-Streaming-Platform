-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: music_store
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int DEFAULT NULL,
  `first_name` text,
  `last_name` text,
  `company` text,
  `address` text,
  `city` text,
  `state` text,
  `country` text,
  `postal_code` text,
  `phone` text,
  `fax` text,
  `email` text,
  `support_rep_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'LuÃ­s','GonÃ§alves','Embraer - Empresa Brasileira de AeronÃ¡utica S.A.','Av. Brigadeiro Faria Lima, 2170','SÃ£o JosÃ© dos Campos','SP','Brazil','12227-000','+55 (12) 3923-5555','+55 (12) 3923-5566','luisg@embraer.com.br',3),(2,'Leonie','KÃ¶hler','','Theodor-Heuss-StraÃŸe 34','Stuttgart','','Germany','70174','+49 0711 2842222','','leonekohler@surfeu.de',5),(3,'FranÃ§ois','Tremblay','','1498 rue BÃ©langer','MontrÃ©al','QC','Canada','H2G 1A7','+1 (514) 721-4711','','ftremblay@gmail.com',3),(4,'BjÃ¸rn','Hansen','','UllevÃ¥lsveien 14','Oslo','','Norway','171','+47 22 44 22 22','','bjorn.hansen@yahoo.no',4),(5,'FrantiÅ¡ek','WichterlovÃ¡','JetBrains s.r.o.','Klanova 9/506','Prague','','Czech Republic','14700','+420 2 4172 5555','+420 2 4172 5555','frantisekw@jetbrains.com',4),(6,'Helena','HolÃ½','','RilskÃ¡ 3174/6','Prague','','Czech Republic','14300','+420 2 4177 0449','','hholy@gmail.com',5),(7,'Astrid','Gruber','','RotenturmstraÃŸe 4, 1010 Innere Stadt','Vienne','','Austria','1010','+43 01 5134505','','astrid.gruber@apple.at',5),(8,'Daan','Peeters','','GrÃ©trystraat 63','Brussels','','Belgium','1000','+32 02 219 03 03','','daan_peeters@apple.be',4),(9,'Kara','Nielsen','','SÃ¸nder Boulevard 51','Copenhagen','','Denmark','1720','+453 3331 9991','','kara.nielsen@jubii.dk',4),(10,'Eduardo','Martins','Woodstock Discos','Rua Dr. FalcÃ£o Filho, 155','SÃ£o Paulo','SP','Brazil','01007-010','+55 (11) 3033-5446','+55 (11) 3033-4564','eduardo@woodstock.com.br',4),(11,'Alexandre','Rocha','Banco do Brasil S.A.','Av. Paulista, 2022','SÃ£o Paulo','SP','Brazil','01310-200','+55 (11) 3055-3278','+55 (11) 3055-8131','alero@uol.com.br',5),(12,'Roberto','Almeida','Riotur','PraÃ§a Pio X, 119','Rio de Janeiro','RJ','Brazil','20040-020','+55 (21) 2271-7000','+55 (21) 2271-7070','roberto.almeida@riotur.gov.br',3),(13,'Fernanda','Ramos','','Qe 7 Bloco G','BrasÃ­lia','DF','Brazil','71020-677','+55 (61) 3363-5547','+55 (61) 3363-7855','fernadaramos4@uol.com.br',4),(14,'Mark','Philips','Telus','8210 111 ST NW','Edmonton','AB','Canada','T6G 2C7','+1 (780) 434-4554','+1 (780) 434-5565','mphilips12@shaw.ca',5),(15,'Jennifer','Peterson','Rogers Canada','700 W Pender Street','Vancouver','BC','Canada','V6C 1G8','+1 (604) 688-2255','+1 (604) 688-8756','jenniferp@rogers.ca',3),(16,'Frank','Harris','Google Inc.','1600 Amphitheatre Parkway','Mountain View','CA','USA','94043-1351','+1 (650) 253-0000','+1 (650) 253-0000','fharris@google.com',4),(17,'Jack','Smith','Microsoft Corporation','1 Microsoft Way','Redmond','WA','USA','98052-8300','+1 (425) 882-8080','+1 (425) 882-8081','jacksmith@microsoft.com',5),(18,'Michelle','Brooks','','627 Broadway','New York','NY','USA','10012-2612','+1 (212) 221-3546','+1 (212) 221-4679','michelleb@aol.com',3),(19,'Tim','Goyer','Apple Inc.','1 Infinite Loop','Cupertino','CA','USA','95014','+1 (408) 996-1010','+1 (408) 996-1011','tgoyer@apple.com',3),(20,'Dan','Miller','','541 Del Medio Avenue','Mountain View','CA','USA','94040-111','+1 (650) 644-3358','','dmiller@comcast.com',4),(21,'Kathy','Chase','','801 W 4th Street','Reno','NV','USA','89503','+1 (775) 223-7665','','kachase@hotmail.com',5),(22,'Heather','Leacock','','120 S Orange Ave','Orlando','FL','USA','32801','+1 (407) 999-7788','','hleacock@gmail.com',4),(23,'John','Gordon','','69 Salem Street','Boston','MA','USA','2113','+1 (617) 522-1333','','johngordon22@yahoo.com',4),(24,'Frank','Ralston','','162 E Superior Street','Chicago','IL','USA','60611','+1 (312) 332-3232','','fralston@gmail.com',3),(25,'Victor','Stevens','','319 N. Frances Street','Madison','WI','USA','53703','+1 (608) 257-0597','','vstevens@yahoo.com',5),(26,'Richard','Cunningham','','2211 W Berry Street','Fort Worth','TX','USA','76110','+1 (817) 924-7272','','ricunningham@hotmail.com',4),(27,'Patrick','Gray','','1033 N Park Ave','Tucson','AZ','USA','85719','+1 (520) 622-4200','','patrick.gray@aol.com',4),(28,'Julia','Barnett','','302 S 700 E','Salt Lake City','UT','USA','84102','+1 (801) 531-7272','','jubarnett@gmail.com',5),(29,'Robert','Brown','','796 Dundas Street West','Toronto','ON','Canada','M6J 1V1','+1 (416) 363-8888','','robbrown@shaw.ca',3),(30,'Edward','Francis','','230 Elgin Street','Ottawa','ON','Canada','K2P 1L7','+1 (613) 234-3322','','edfrancis@yachoo.ca',3),(31,'Martha','Silk','','194A Chain Lake Drive','Halifax','NS','Canada','B3S 1C5','+1 (902) 450-0450','','marthasilk@gmail.com',5),(32,'Aaron','Mitchell','','696 Osborne Street','Winnipeg','MB','Canada','R3L 2B9','+1 (204) 452-6452','','aaronmitchell@yahoo.ca',4),(33,'Ellie','Sullivan','','5112 48 Street','Yellowknife','NT','Canada','X1A 1N6','+1 (867) 920-2233','','ellie.sullivan@shaw.ca',3),(34,'JoÃ£o','Fernandes','','Rua da AssunÃ§Ã£o 53','Lisbon','','Portugal','','+351 (213) 466-111','','jfernandes@yahoo.pt',4),(35,'Madalena','Sampaio','','Rua dos CampeÃµes Europeus de Viena, 4350','Porto','','Portugal','','+351 (225) 022-448','','masampaio@sapo.pt',4),(36,'Hannah','Schneider','','TauentzienstraÃŸe 8','Berlin','','Germany','10789','+49 030 26550280','','hannah.schneider@yahoo.de',5),(37,'Fynn','Zimmermann','','Berger StraÃŸe 10','Frankfurt','','Germany','60316','+49 069 40598889','','fzimmermann@yahoo.de',3),(38,'Niklas','SchrÃ¶der','','BarbarossastraÃŸe 19','Berlin','','Germany','10779','+49 030 2141444','','nschroder@surfeu.de',3),(39,'Camille','Bernard','','4, Rue Milton','Paris','','France','75009','+33 01 49 70 65 65','','camille.bernard@yahoo.fr',4),(40,'Dominique','Lefebvre','','8, Rue Hanovre','Paris','','France','75002','+33 01 47 42 71 71','','dominiquelefebvre@gmail.com',4),(41,'Marc','Dubois','','11, Place Bellecour','Lyon','','France','69002','+33 04 78 30 30 30','','marc.dubois@hotmail.com',5),(42,'Wyatt','Girard','','9, Place Louis Barthou','Bordeaux','','France','33000','+33 05 56 96 96 96','','wyatt.girard@yahoo.fr',3),(43,'Isabelle','Mercier','','68, Rue Jouvence','Dijon','','France','21000','+33 03 80 73 66 99','','isabelle_mercier@apple.fr',3),(44,'Terhi','HÃ¤mÃ¤lÃ¤inen','','Porthaninkatu 9','Helsinki','','Finland','530','+358 09 870 2000','','terhi.hamalainen@apple.fi',3),(45,'Ladislav','KovÃ¡cs','','ErzsÃ©bet krt. 58.','Budapest','','Hungary','H-1073','','','ladislav_kovacs@apple.hu',3),(46,'Hugh','O\'Reilly','','3 Chatham Street','Dublin','Dublin','Ireland','','+353 01 6792424','','hughoreilly@apple.ie',3),(47,'Lucas','Mancini','','Via Degli Scipioni, 43','Rome','RM','Italy','192','+39 06 39733434','','lucas.mancini@yahoo.it',5),(48,'Johannes','Van der Berg','','Lijnbaansgracht 120bg','Amsterdam','VV','Netherlands','1016','+31 020 6223130','','johavanderberg@yahoo.nl',5),(49,'StanisÅ‚aw','WÃ³jcik','','Ordynacka 10','Warsaw','','Poland','00-358','+48 22 828 37 39','','stanisÅ‚aw.wÃ³jcik@wp.pl',4),(50,'Enrique','MuÃ±oz','','C/ San Bernardo 85','Madrid','','Spain','28015','+34 914 454 454','','enrique_munoz@yahoo.es',5),(51,'Joakim','Johansson','','Celsiusg. 9','Stockholm','','Sweden','11230','+46 08-651 52 52','','joakim.johansson@yahoo.se',5),(52,'Emma','Jones','','202 Hoxton Street','London','','United Kingdom','N1 5LH','+44 020 7707 0707','','emma_jones@hotmail.com',3),(53,'Phil','Hughes','','113 Lupus St','London','','United Kingdom','SW1V 3EN','+44 020 7976 5722','','phil.hughes@gmail.com',3),(54,'Steve','Murray','','110 Raeburn Pl','Edinburgh ','','United Kingdom','EH4 1HH','+44 0131 315 3300','','steve.murray@yahoo.uk',5),(55,'Mark','Taylor','','421 Bourke Street','Sidney','NSW','Australia','2010','+61 (02) 9332 3633','','mark.taylor@yahoo.au',4),(56,'Diego','GutiÃ©rrez','','307 Macacha GÃ¼emes','Buenos Aires','','Argentina','1106','+54 (0)11 4311 4333','','diego.gutierrez@yahoo.ar',4),(57,'Luis','Rojas','','Calle Lira, 198','Santiago','','Chile','','+56 (0)2 635 4444','','luisrojas@yahoo.cl',5),(58,'Manoj','Pareek','','12,Community Centre','Delhi','','India','110017','+91 0124 39883988','','manoj.pareek@rediff.com',3),(59,'Rishabh','Mishra','','3,Raj Bhavan Road','Bangalore','','India','560001','+91 080 22289999','','rishabh_mishra@yahoo.in',3);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-18 18:12:45
