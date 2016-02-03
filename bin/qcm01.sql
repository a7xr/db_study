-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: qcm01
-- ------------------------------------------------------
-- Server version	5.5.16

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
-- Table structure for table `about`
--

DROP TABLE IF EXISTS `about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `about` (
  `id_about` int(11) NOT NULL AUTO_INCREMENT,
  `about` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_about`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about`
--

LOCK TABLES `about` WRITE;
/*!40000 ALTER TABLE `about` DISABLE KEYS */;
INSERT INTO `about` VALUES (1,'basics'),(2,'exceptions'),(3,'loop'),(4,'drive test');
/*!40000 ALTER TABLE `about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answers` (
  `id_answer` int(11) NOT NULL AUTO_INCREMENT,
  `a` text,
  `id_question` int(11) DEFAULT '0',
  PRIMARY KEY (`id_answer`),
  KEY `id_question` (`id_question`),
  CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`id_question`) REFERENCES `questions` (`id_question`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=435 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (5,'toliara',3),(6,'diego',3),(7,'tana',3),(8,'fortDauphin',3),(9,'maajanga',3),(44,'15',11),(45,'20',11),(46,'10',11),(47,'30',11),(48,'endif',12),(49,'end',12),(50,'ifend',12),(51,'end if',12),(52,'if end',12),(53,'fi',12),(54,'SELECT COUNT(*) IN v_nb',13),(55,'SELECT COUNT(*) INTO v_nb',13),(56,'SELECT COUNT(*) v_nb',13),(57,'declare var_local00 date default now()',14),(58,'declare var_local00 default date now()',14),(59,'var var_local00 default date now()',14),(60,'declare var_local00 date default',14),(61,'reduire les  allers retours  entre le client et le serveur MySQL',15),(62,'gain en performance',15),(63,'securiser une base de donnees .',15),(64,'restreindre l_access a la base',15),(65,'out',16),(66,'in',16),(67,'outin',16),(68,'inout',16),(69,'show procedures',17),(70,'show procedure status',17),(71,'show procedure',17),(72,'select procedures from information_schema',17),(73,'delete procedure called procedure00',18),(74,'drop procedure00',18),(75,'delete procedure procedure00',18),(76,'drop procedure procedure00',18),(77,'curves map',19),(78,'height map',19),(79,'clutter map',19),(80,'vector map',19),(81,'15',20),(82,'20',20),(83,'10',20),(84,'30',20),(85,'15',21),(86,'20',21),(87,'10',21),(88,'30',21),(89,'estimate the required site density ',22),(90,'estimate site con?gurations',22),(91,'estimate of the amount of BS ',22),(98,'to define the right azimuth',23),(99,'coverage calculation',23),(100,'for better opex',23),(101,'for maintenance',23),(102,'in the suburban region',24),(103,'when there are a lot of traffic',24),(104,'when the antenna is higher than the roofs',24),(105,'when the budget is low',24),(106,'ressource access node',25),(107,'routing area network',25),(108,'radio access network',25),(109,'real access network',25),(110,'mobility management sub-system;',26),(111,'. automatic de?nition of neighbouring cells;',26),(112,'. automatic adjacency synchronisation between vendors;',26),(113,'sms server and billing system',26),(114,'. automated optimisation of soft handover parameters using cost function;',26),(115,'. Location Area (LA) considerations;',26),(116,'Congestion relief using handovers.',26),(117,'radio link budget ',27),(118,'coverage analysis',27),(119,'capacity evaluation ',27),(120,'estimation of the amount of BS hardware ',27),(121,'estimate the power of the BS',27),(122,'estimation of the amount of BS sites',27),(141,'Base station maximum transmit power  ',30),(142,'Mobile station maximum transmit power ',30),(143,'Mobile station dynamic range ',30),(144,'Shadow fading correlation between BSs ',30),(145,'Indoor loss ',30),(146,'Standard deviation for the shadow fading ',30),(147,'Channel pro?le  ',30),(148,'Mobile station speed MS/BS noise ?gures ',30),(149,'Soft handover window P-CPICH power ',30),(150,'Combined power for other common channels ',30),(151,'Orthogonality BS antennas  ',30),(152,'cost of the bs',30),(153,'MS antennas Cable losses Uplink loading limit ',30),(235,'Transmitter power  ',34),(236,'Transmitter antenna gain ',34),(237,'Cable/body loss ',34),(238,'Transmitter EIRP (including losses) ',34),(239,'Thermal noise density  ',34),(240,'Receiver noise ?gure ',34),(241,'Receiver noise density ',34),(242,'Receiver noise power  ',34),(243,'Interference margin Required Ec over Io ',34),(244,'Required signal power S ',34),(245,'Receiver antenna gain ',34),(246,'Cable/body loss ',34),(247,'Coverage probability outdoor (requirement) ',34),(248,'Coverage probability indoor (requirement) ',34),(249,'Outdoor location probability (calculated) ',34),(250,'Indoor location probability(calculated) ',34),(251,'Limiting environment ',34),(252,'Slow fading constant outdoor ',34),(253,'Slow fading constant indoor ',34),(254,'Propagation model exponent ',34),(255,'Slow fading margin ',34),(256,'Height of the antenna',34),(257,'Handover gain (including any macro-diversity combining gain at the cell edge ',34),(258,'Slow fading margin + Handover gain ',34),(259,'Indoor loss ',34),(260,'Power control headroom (fast fading margin) ',34),(261,'Allowed propagation loss ',34),(262,'capacity',35),(263,'security',35),(264,'access',35),(265,'success',35),(266,'handover',35),(267,'capacity',36),(268,'better opex',36),(269,'focus',36),(270,'success',36),(271,'better network',36),(272,'measurement',37),(273,'preparation',37),(274,'optimisation',37),(275,'planning',37),(276,'capacity',38),(277,'coverage',38),(278,'quality',38),(279,'optimisation',38),(280,'modeling the traffic',39),(281,'drive test',39),(282,'collect the information',39),(283,'optimisation',39),(284,'statistics and field measurement',40),(285,'optimisation',40),(298,'	--monteCarlo simulation\n	calculation of prediction\n	making report',44),(299,'	--new project\n	import map\n	coordinate system',44),(300,'	--best server prediction\n	traffic modelling\n	monteCarlo simulation',44),(301,'	--coordinate system\n	calibration\n	best server and signal level prediction\n	network datas',44),(302,'. resources and their availability',45),(303,'. list of KPIs to be followed; ',45),(304,'. measurement schedules (start and stop time); ',45),(305,'. summarisation level; ',45),(306,'. tracing the mobile',45),(307,'. scope (the objects to be followed); ',45),(308,'. reporting.',45),(309,'economic returns',46),(310,'operating costs of the network ',46),(311,'cost of the mobile',46),(312,'installation_s BS cost',46),(317,'(complying|dealing) with future requirements in the sense of an acceptable development path',48),(318,'There is much uncertainty about future tra?c growth and di?erent data rates.',48),(319,'high bit rate services require knowledge',48),(320,'Operator has to deal with the other operators in order to extend their network',48),(321,'Operators with existing networks may have to co-locate future sites for either economic',48),(322,'<em/>',49),(323,'<italic/>',49),(324,'<em>...</em>',49),(325,'<it>..</it>',49),(326,'<strong>...</strong>',50),(327,'<bold/>',50),(328,'<strong/>',50),(329,'<bold>..</bold>',50),(330,'installation du reseau telephonique d_Ambolobozokely',51),(331,'installation du reseau de fibre optique',51),(332,'etude de la mise en place d_un reseau fibre optique',51),(333,'optimisation d_un reseau 3G',51),(334,'planification',51),(335,'etude d_une optimisation d_un reseau 3G',51),(336,'theme',52),(337,'problematique',52),(338,'entreprise',52),(339,'candidat/filiere',52),(340,'objectifs',52),(341,'directeur de l_entreprise',52),(342,'travail demandee',52),(343,'contexte',52),(344,'encadreur pedagogique',52),(345,'encadreur professionnel',52),(346,'telephonie fixe et publiphone',53),(347,'son cout est tres bas',53),(348,'avoir 4g',53),(349,'precurseur des technologies de telecommunication',54),(350,'pour avoir 4g',54),(351,'privatisation d_une entreprise',54),(352,'desenclavement des regions',54),(353,'2000',55),(354,'2004',55),(355,'1995',55),(356,'2002',55),(357,'a eu plus de chance au cotes des clients',56),(358,'beaucoup plus de marchee lui est ouvert',56),(359,'peut recruter des personnes venant de l_exterieur',56),(360,'ses choix strategiques sont beaucoup plus restreints',56),(361,'beneficie d_un apport de capital venant de l_exterieur',56),(362,'a eu plus de chance au cotes des clients',57),(363,'beaucoup plus de marchee lui est ouvert',57),(364,'peut recruter des personnes venant de l_exterieur',57),(365,'ses choix strategiques sont beaucoup plus autonomes',57),(366,'l_apport de capital venant des benevoles s_est ameliorees',57),(367,'2002',59),(368,'2005',59),(369,'2007',59),(370,'2008',59),(371,'2002',60),(372,'2005',60),(373,'2007',60),(374,'2008',60),(375,'ameliore les traffics',61),(376,'facilite l_acces au reseau 3g',61),(377,'desenclave les regions',61),(378,'commercialise l_internet haut debit',61),(379,'wimax',62),(380,'cdma',62),(381,'wcdma',62),(382,'lte',62),(383,'gsm',62),(384,'premier',63),(385,'second',63),(386,'troisieme',63),(387,'quatrieme',63),(388,'dernier',63),(389,'c_est un cable sous marin',64),(390,'une famille de technologie dans 3g',64),(391,'acces au satellite',64),(392,'un nom de channel',64),(393,'nom d_entreprise',64),(394,'1998',65),(395,'2002',65),(396,'2005',65),(397,'2007',65),(398,'2010',65),(399,'Tamatave',66),(400,'Fort-Dauphin',66),(401,'Majunga',66),(402,'Toliara',66),(403,'Diego',66),(404,'fonctionnement du reseau fixe filaire',67),(405,'bon fonctionnement de tous ceux qui sont rattachés aux équipements sans fil',67),(406,'Maintenance et exploitation des équipements sans fil ',67),(407,'Il est le premier responsable du departement technique regional',67),(408,'transmission par satellite',67),(409,'fonctionnement du reseau fixe filaire',68),(410,'bon fonctionnement de tous ceux qui sont rattachés aux équipements sans fil',68),(411,'Maintenance et exploitation des équipements sans fil ',68),(412,'Il est le premier responsable du departement technique regional',68),(413,'transmission par satellite',68),(414,'fonctionnement du reseau fixe filaire',69),(415,'bon fonctionnement de tous ceux qui sont rattachés aux équipements sans fil',69),(416,'transmission par satellite',69),(417,'Il est le premier responsable du departement technique regional',69),(418,'transmission par satellite',69),(419,'maintenance et exploitation de (commutateur ocb | equipment fmx)',70),(420,'envoie les donnees aux clients',70),(421,'transmission satellitaire',70),(422,'transmission des donnes par satellite',70),(423,'etude de la region sur son plan developpement',71),(424,'etudier l_habitude des gens qui y vivent',71),(425,'qu_est ce qui y rapporte le plus d_argent dans le village',71),(426,'etude en details des vies des gens',71),(427,'savoir globalement le principe de vie des villageois',71),(428,'Situation géographique du lieu ',72),(429,'Activités économiques du village',72),(430,'histoire du village',72),(431,'etude démographique',72),(432,'tourisme dans la zone',72),(433,'électrification ',72),(434,'Infrastructures du village',72);
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `join_subj_about`
--

DROP TABLE IF EXISTS `join_subj_about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `join_subj_about` (
  `id_about` int(11) NOT NULL,
  `id_subj` int(11) NOT NULL,
  `id_subj_about` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_subj_about`),
  UNIQUE KEY `unique00` (`id_about`,`id_subj`),
  KEY `id_subj` (`id_subj`),
  CONSTRAINT `join_subj_about_ibfk_1` FOREIGN KEY (`id_about`) REFERENCES `about` (`id_about`),
  CONSTRAINT `join_subj_about_ibfk_2` FOREIGN KEY (`id_subj`) REFERENCES `subjs` (`id_subj`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `join_subj_about`
--

LOCK TABLES `join_subj_about` WRITE;
/*!40000 ALTER TABLE `join_subj_about` DISABLE KEYS */;
/*!40000 ALTER TABLE `join_subj_about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `join_subj_about_q`
--

DROP TABLE IF EXISTS `join_subj_about_q`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `join_subj_about_q` (
  `id_subj_about` int(11) DEFAULT NULL,
  `id_question` int(11) DEFAULT NULL,
  KEY `id_subj_about` (`id_subj_about`),
  KEY `id_question` (`id_question`),
  CONSTRAINT `join_subj_about_q_ibfk_1` FOREIGN KEY (`id_subj_about`) REFERENCES `join_subj_about` (`id_subj_about`),
  CONSTRAINT `join_subj_about_q_ibfk_2` FOREIGN KEY (`id_question`) REFERENCES `questions` (`id_question`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `join_subj_about_q`
--

LOCK TABLES `join_subj_about_q` WRITE;
/*!40000 ALTER TABLE `join_subj_about_q` DISABLE KEYS */;
/*!40000 ALTER TABLE `join_subj_about_q` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `join_subj_q`
--

DROP TABLE IF EXISTS `join_subj_q`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `join_subj_q` (
  `id_subj` int(11) DEFAULT NULL,
  `id_question` int(11) DEFAULT NULL,
  KEY `id_subj` (`id_subj`),
  KEY `id_question` (`id_question`),
  CONSTRAINT `join_subj_q_ibfk_1` FOREIGN KEY (`id_subj`) REFERENCES `subjs` (`id_subj`),
  CONSTRAINT `join_subj_q_ibfk_2` FOREIGN KEY (`id_question`) REFERENCES `questions` (`id_question`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `join_subj_q`
--

LOCK TABLES `join_subj_q` WRITE;
/*!40000 ALTER TABLE `join_subj_q` DISABLE KEYS */;
INSERT INTO `join_subj_q` VALUES (1,11),(6,20),(5,20),(6,11),(7,12),(5,12),(7,13),(5,13),(7,14),(5,14),(7,15),(5,15),(7,16),(5,16),(7,17),(5,17),(7,18),(5,18),(8,19),(2,19),(6,20),(6,21),(9,21),(9,22),(9,22),(9,23),(9,24),(9,25),(9,26),(9,27),(2,30),(9,30),(2,30),(9,30),(2,34),(9,34),(2,35),(9,35),(2,36),(9,36),(2,37),(9,37),(2,38),(9,38),(2,39),(9,39),(2,40),(8,40),(2,44),(8,44),(2,45),(9,45),(2,46),(9,46),(10,48),(5,48),(10,49),(5,49),(8,50),(9,50),(11,50),(8,51),(9,51),(11,51),(9,52),(11,52),(9,53),(11,53),(9,54),(11,54),(9,55),(11,55),(9,56),(11,56),(9,57),(11,57),(9,59),(11,59),(12,59),(9,60),(11,60),(12,60),(9,61),(11,61),(12,61),(9,62),(11,62),(12,62),(9,63),(11,63),(12,63),(9,64),(11,64),(12,64),(9,65),(11,65),(12,65),(9,66),(11,66),(12,66),(9,67),(11,67),(12,67),(9,68),(11,68),(12,68),(9,69),(11,69),(12,69),(9,70),(11,70),(12,70),(9,71),(11,71),(12,71);
/*!40000 ALTER TABLE `join_subj_q` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_paper`
--

DROP TABLE IF EXISTS `player_paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_paper` (
  `id_player` int(11) DEFAULT NULL,
  `id_question` int(11) DEFAULT NULL,
  `player_answer` tinyint(1) DEFAULT NULL,
  `_datet` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `id_player` (`id_player`),
  KEY `id_question` (`id_question`),
  CONSTRAINT `player_paper_ibfk_1` FOREIGN KEY (`id_player`) REFERENCES `players` (`id_player`),
  CONSTRAINT `player_paper_ibfk_2` FOREIGN KEY (`id_question`) REFERENCES `questions` (`id_question`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_paper`
--

LOCK TABLES `player_paper` WRITE;
/*!40000 ALTER TABLE `player_paper` DISABLE KEYS */;
INSERT INTO `player_paper` VALUES (2,12,1,'2016-01-15 06:26:45'),(2,13,0,'2016-01-16 09:39:11'),(2,14,0,'2016-01-16 09:39:11'),(2,15,0,'2016-01-15 06:26:45'),(2,16,0,'2016-01-15 06:26:45'),(2,17,1,'2016-01-15 06:26:45'),(2,18,0,'2016-01-15 06:26:45'),(2,19,1,'2016-01-15 06:28:38'),(2,19,0,'2016-01-15 06:29:26'),(1,12,1,'2016-01-16 10:01:47'),(1,13,1,'2016-01-16 10:01:47'),(1,14,1,'2016-01-16 10:01:47');
/*!40000 ALTER TABLE `player_paper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `players` (
  `id_player` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  PRIMARY KEY (`id_player`),
  UNIQUE KEY `pseudo` (`pseudo`,`pass`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,'pseudo01','pass01'),(2,'pseudo02','pass02');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `id_question` int(11) NOT NULL AUTO_INCREMENT,
  `q` text NOT NULL,
  `id_rep_t` int(11) DEFAULT '0',
  `doc` text,
  PRIMARY KEY (`id_question`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (3,'iz no capitalnMadagascar?',7,NULL),(11,'5 + 5',46,NULL),(12,'qL est la fermeture du testIf',51,NULL),(13,'comment faire resultat d_unique select dans varLocal',55,NULL),(14,'comment declarer une variable locale',57,NULL),(15,'leqL de ceci n_est pas l_avantage de procedure',64,NULL),(16,'lequel des sens des parametres suivant n_est pas une sens de parametre',67,NULL),(17,'comment pour afficher tout les procedures',70,NULL),(18,'cmd pour supprimer une procedure',74,NULL),(19,'which is the one u don_t need to import 3dMap?',77,NULL),(20,'5 + 5',83,NULL),(21,'5 + 5',87,NULL),(22,'which one is NOT the target of initial planning $b5130',91,NULL),(23,'why u need Okumura-Hata model $b5p38',93,NULL),(24,'when Wal?sch–Ikegam model has to be used carefully $b5p38',104,NULL),(25,'what RAN stand for',108,NULL),(26,'which of these one is not a subSys of RAN $b5p574',113,NULL),(27,'what u DON_T need for initial planning $b5p130',121,NULL),(30,'which one of these ones is NOT a parameter in static simulation $b5p180',152,NULL),(34,'which one of these ones is NOT included in the radio link budget',256,NULL),(35,'which one of these ones is NOT an object of kpi $b5p469',263,NULL),(36,'wcdma_optimisation is up to what $b5p470',269,NULL),(37,'wcdma_optimisation division, which one is not in, $b5p470',275,NULL),(38,'which one is NOT a target of kpi$b5p471',279,NULL),(39,'u just decided the objects and target of kpi\nwhat to do next   $b5p471',282,NULL),(40,'u just decided the objects and target of kpi, u have to collect information\n	what are the types to collect information   $b5p471\n	 in another words, what are the technics for measurements',284,NULL),(44,'in the sequence of operation of atoll; which one is not in the right order   $b4p9',298,NULL),(45,'which one is NOT in the focuses in statistics measurement   $b5p471',306,NULL),(46,'what to maximise when maximising the capex   $b5p43',309,NULL),(48,'which challenge, the Operators DON_T face in the planning of 3G networks:   $b5p44',320,NULL),(49,'comment pour faire (un|des) (mots|phrases) en italique   $b9p37',324,NULL),(50,'comment pour faire (un|des) (mots|phrases) en gras   $b9p37',326,NULL),(51,'c_est quoi le theme du rapport de stage jurin-ibrahim   $b10p02',332,NULL),(52,'qL est l_intrus pour realiser un livre de rapport de stage   $b10p02',341,NULL),(53,'qu_est ce qui differencie TELMA des autres operateurs   $b10p10',346,NULL),(54,'qu_est ce que le VSAT peut-il faire   $b10p10',352,NULL),(55,'quand est ce que telma s_est privatisee   $b10p10',354,NULL),(56,'telma s_est privatisee, qu_est ce qu_il peut faire   $b10p10',361,NULL),(57,'telma s_est privatisee, qu_est ce qu_il peut faire   $b10p10',365,NULL),(59,'quand est ce que telma a lancee l_adsl   $b10p11',368,NULL),(60,'quand est ce que telma a lancee le sdsl   $b10p11',373,NULL),(61,'qu_est ce que l_adsl et le sdsl peut faire   $b10p11',378,NULL),(62,'quelle technologie utilisee par les telephnies fixes   $b10p11',380,NULL),(63,'place du telma dans le fait de donnee le reseau mobile au client   $b10p11',388,NULL),(64,'c_est quoi EASSy    $b10p12',389,NULL),(65,'qd est-ce que EASSy est arrivee a Madagascar   $b10p12',398,NULL),(66,'ouu est-ce que EASSy arrive a Madagascar   $b10p12',402,NULL),(67,'qL est la principale fonction de rtr   $b10p14',407,NULL),(68,'qL est la PRINCIPALE fonction de dsf   $b10p14',410,NULL),(69,'en plus du role du dsf, que fait la tdsf   $b10p14',416,NULL),(70,'roles de commutation data   $b10p14',419,NULL),(71,'quand tu veux installer une pylonnes sur une region, une de ces trucs ne sont pas a faire   $b10p14',426,NULL),(72,'on doit faire l_etude de vie des villageois quand on veut installer une pylonne sur une village\nqu_est ce qu_il ne faut pas etudier   $b10p14',430,NULL);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reading_doc`
--

DROP TABLE IF EXISTS `reading_doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reading_doc` (
  `id_doc` int(11) NOT NULL AUTO_INCREMENT,
  `tiitle` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_doc`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reading_doc`
--

LOCK TABLES `reading_doc` WRITE;
/*!40000 ALTER TABLE `reading_doc` DISABLE KEYS */;
INSERT INTO `reading_doc` VALUES (1,'464494-administrez-vos-bases-de-donnees-avec-mysql'),(2,'UMTS Radio Network Planning, Optimization and QoS Management (+1)'),(3,'JavaFX For Dummies (+10) reading adobe'),(4,'95960910-atoll-getting-started-umts-310-en-reading'),(5,'Radio Network Planning and Optimisation for UMTS, 2nd Edition (+35) - reading'),(6,'java8_tutorial (+5) reading '),(7,'reseaux 3g(pierre lescuyer)'),(8,'lte et les reseaux 4g(xavier-wolff)'),(9,'13666-apprenez-a-creer-votre-site-web-avec-html5-et-css3 reading'),(10,'rapport jurin-ibrahim');
/*!40000 ALTER TABLE `reading_doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjs`
--

DROP TABLE IF EXISTS `subjs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subjs` (
  `id_subj` int(11) NOT NULL AUTO_INCREMENT,
  `subj` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_subj`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjs`
--

LOCK TABLES `subjs` WRITE;
/*!40000 ALTER TABLE `subjs` DISABLE KEYS */;
INSERT INTO `subjs` VALUES (1,'java'),(2,'telecom'),(4,'network'),(5,'programming'),(6,'math'),(7,'mysql'),(8,'atoll'),(9,'academic'),(10,'html5'),(11,'stage'),(12,'telma');
/*!40000 ALTER TABLE `subjs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-18 16:08:11
