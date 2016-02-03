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
  PRIMARY KEY (`id_about`),
  UNIQUE KEY `about` (`about`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about`
--

LOCK TABLES `about` WRITE;
/*!40000 ALTER TABLE `about` DISABLE KEYS */;
INSERT INTO `about` VALUES (38,' '),(17,'alter table'),(32,'architectures'),(1,'basics'),(30,'cdma'),(22,'channel'),(19,'create table'),(18,'databases'),(11,'db_connections'),(4,'drive test'),(27,'edge'),(2,'exceptions'),(26,'gprs'),(25,'gsm'),(24,'history'),(6,'indexes'),(13,'insert'),(42,'jlist'),(21,'jointure'),(40,'jtable'),(3,'loop'),(28,'lte'),(33,'mobile'),(16,'optimisation'),(10,'prepared query'),(9,'procedure'),(35,'protocols'),(37,'rab'),(36,'radios'),(39,'rapportJurin'),(7,'select'),(14,'server'),(5,'tables'),(23,'traffic'),(15,'transactions'),(12,'triggers'),(34,'umts'),(29,'utran'),(8,'views'),(31,'wcdma');
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
) ENGINE=InnoDB AUTO_INCREMENT=670 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (5,'toliara',3),(6,'diego',3),(7,'tana',3),(8,'fortDauphin',3),(9,'maajanga',3),(44,'15',11),(45,'20',11),(46,'10',11),(47,'30',11),(48,'endif',12),(49,'end',12),(50,'ifend',12),(51,'end if',12),(52,'if end',12),(53,'fi',12),(54,'SELECT COUNT(*) IN v_nb',13),(55,'SELECT COUNT(*) INTO v_nb',13),(56,'SELECT COUNT(*) v_nb',13),(57,'declare var_local00 date default now()',14),(58,'declare var_local00 default date now()',14),(59,'var var_local00 default date now()',14),(60,'declare var_local00 date default',14),(61,'reduire les  allers retours  entre le client et le serveur MySQL',15),(62,'gain en performance',15),(63,'securiser une base de donnees .',15),(64,'restreindre l_access a la base',15),(65,'out',16),(66,'in',16),(67,'outin',16),(68,'inout',16),(69,'show procedures',17),(70,'show procedure status',17),(71,'show procedure',17),(72,'select procedures from information_schema',17),(73,'delete procedure called procedure00',18),(74,'drop procedure00',18),(75,'delete procedure procedure00',18),(76,'drop procedure procedure00',18),(77,'curves map',19),(78,'height map',19),(79,'clutter map',19),(80,'vector map',19),(81,'15',20),(82,'20',20),(83,'10',20),(84,'30',20),(85,'15',21),(86,'20',21),(87,'10',21),(88,'30',21),(89,'estimate the required site density ',22),(90,'estimate site con?gurations',22),(91,'estimate of the amount of BS ',22),(98,'to define the right azimuth',23),(99,'coverage calculation',23),(100,'for better opex',23),(101,'for maintenance',23),(102,'in the suburban region',24),(103,'when there are a lot of traffic',24),(104,'when the antenna is higher than the roofs',24),(105,'when the budget is low',24),(106,'ressource access node',25),(107,'routing area network',25),(108,'radio access network',25),(109,'real access network',25),(110,'mobility management sub-system;',26),(111,'. automatic de?nition of neighbouring cells;',26),(112,'. automatic adjacency synchronisation between vendors;',26),(113,'sms server and billing system',26),(114,'. automated optimisation of soft handover parameters using cost function;',26),(115,'. Location Area (LA) considerations;',26),(116,'Congestion relief using handovers.',26),(117,'radio link budget ',27),(118,'coverage analysis',27),(119,'capacity evaluation ',27),(120,'estimation of the amount of BS hardware ',27),(121,'estimate the power of the BS',27),(122,'estimation of the amount of BS sites',27),(141,'Base station maximum transmit power  ',30),(142,'Mobile station maximum transmit power ',30),(143,'Mobile station dynamic range ',30),(144,'Shadow fading correlation between BSs ',30),(145,'Indoor loss ',30),(146,'Standard deviation for the shadow fading ',30),(147,'Channel pro?le  ',30),(148,'Mobile station speed MS/BS noise ?gures ',30),(149,'Soft handover window P-CPICH power ',30),(150,'Combined power for other common channels ',30),(151,'Orthogonality BS antennas  ',30),(152,'cost of the bs',30),(153,'MS antennas Cable losses Uplink loading limit ',30),(235,'Transmitter power  ',34),(236,'Transmitter antenna gain ',34),(237,'Cable/body loss ',34),(238,'Transmitter EIRP (including losses) ',34),(239,'Thermal noise density  ',34),(240,'Receiver noise ?gure ',34),(241,'Receiver noise density ',34),(242,'Receiver noise power  ',34),(243,'Interference margin Required Ec over Io ',34),(244,'Required signal power S ',34),(245,'Receiver antenna gain ',34),(246,'Cable/body loss ',34),(247,'Coverage probability outdoor (requirement) ',34),(248,'Coverage probability indoor (requirement) ',34),(249,'Outdoor location probability (calculated) ',34),(250,'Indoor location probability(calculated) ',34),(251,'Limiting environment ',34),(252,'Slow fading constant outdoor ',34),(253,'Slow fading constant indoor ',34),(254,'Propagation model exponent ',34),(255,'Slow fading margin ',34),(256,'Height of the antenna',34),(257,'Handover gain (including any macro-diversity combining gain at the cell edge ',34),(258,'Slow fading margin + Handover gain ',34),(259,'Indoor loss ',34),(260,'Power control headroom (fast fading margin) ',34),(261,'Allowed propagation loss ',34),(262,'capacity',35),(263,'security',35),(264,'access',35),(265,'success',35),(266,'handover',35),(267,'capacity',36),(268,'better opex',36),(269,'focus',36),(270,'success',36),(271,'better network',36),(272,'measurement',37),(273,'preparation',37),(274,'optimisation',37),(275,'planning',37),(276,'capacity',38),(277,'coverage',38),(278,'quality',38),(279,'optimisation',38),(280,'modeling the traffic',39),(281,'drive test',39),(282,'collect the information',39),(283,'optimisation',39),(284,'statistics and field measurement',40),(285,'optimisation',40),(298,'	--monteCarlo simulation\n	calculation of prediction\n	making report',44),(299,'	--new project\n	import map\n	coordinate system',44),(300,'	--best server prediction\n	traffic modelling\n	monteCarlo simulation',44),(301,'	--coordinate system\n	calibration\n	best server and signal level prediction\n	network datas',44),(302,'. resources and their availability',45),(303,'. list of KPIs to be followed; ',45),(304,'. measurement schedules (start and stop time); ',45),(305,'. summarisation level; ',45),(306,'. tracing the mobile',45),(307,'. scope (the objects to be followed); ',45),(308,'. reporting.',45),(309,'economic returns',46),(310,'operating costs of the network ',46),(311,'cost of the mobile',46),(312,'installation_s BS cost',46),(317,'(complying|dealing) with future requirements in the sense of an acceptable development path',48),(318,'There is much uncertainty about future tra?c growth and di?erent data rates.',48),(319,'high bit rate services require knowledge',48),(320,'Operator has to deal with the other operators in order to extend their network',48),(321,'Operators with existing networks may have to co-locate future sites for either economic',48),(322,'<em/>',49),(323,'<italic/>',49),(324,'<em>...</em>',49),(325,'<it>..</it>',49),(326,'<strong>...</strong>',50),(327,'<bold/>',50),(328,'<strong/>',50),(329,'<bold>..</bold>',50),(330,'installation du reseau telephonique d_Ambolobozokely',51),(331,'installation du reseau de fibre optique',51),(332,'etude de la mise en place d_un reseau fibre optique',51),(333,'optimisation d_un reseau 3G',51),(334,'planification',51),(335,'etude d_une optimisation d_un reseau 3G',51),(336,'theme',52),(337,'problematique',52),(338,'entreprise',52),(339,'candidat/filiere',52),(340,'objectifs',52),(341,'directeur de l_entreprise',52),(342,'travail demandee',52),(343,'contexte',52),(344,'encadreur pedagogique',52),(345,'encadreur professionnel',52),(346,'telephonie fixe et publiphone',53),(347,'son cout est tres bas',53),(348,'avoir 4g',53),(349,'precurseur des technologies de telecommunication',54),(350,'pour avoir 4g',54),(351,'privatisation d_une entreprise',54),(352,'desenclavement des regions',54),(353,'2000',55),(354,'2004',55),(355,'1995',55),(356,'2002',55),(357,'a eu plus de chance au cotes des clients',56),(358,'beaucoup plus de marchee lui est ouvert',56),(359,'peut recruter des personnes venant de l_exterieur',56),(360,'ses choix strategiques sont beaucoup plus restreints',56),(361,'beneficie d_un apport de capital venant de l_exterieur',56),(362,'a eu plus de chance au cotes des clients',57),(363,'beaucoup plus de marchee lui est ouvert',57),(364,'peut recruter des personnes venant de l_exterieur',57),(365,'ses choix strategiques sont beaucoup plus autonomes',57),(366,'l_apport de capital venant des benevoles s_est ameliorees',57),(367,'2002',59),(368,'2005',59),(369,'2007',59),(370,'2008',59),(371,'2002',60),(372,'2005',60),(373,'2007',60),(374,'2008',60),(375,'ameliore les traffics',61),(376,'facilite l_acces au reseau 3g',61),(377,'desenclave les regions',61),(378,'commercialise l_internet haut debit',61),(379,'wimax',62),(380,'cdma',62),(381,'wcdma',62),(382,'lte',62),(383,'gsm',62),(384,'premier',63),(385,'second',63),(386,'troisieme',63),(387,'quatrieme',63),(388,'dernier',63),(389,'c_est un cable sous marin',64),(390,'une famille de technologie dans 3g',64),(391,'acces au satellite',64),(392,'un nom de channel',64),(393,'nom d_entreprise',64),(394,'1998',65),(395,'2002',65),(396,'2005',65),(397,'2007',65),(398,'2010',65),(399,'Tamatave',66),(400,'Fort-Dauphin',66),(401,'Majunga',66),(402,'Toliara',66),(403,'Diego',66),(404,'fonctionnement du reseau fixe filaire',67),(405,'bon fonctionnement de tous ceux qui sont rattachés aux équipements sans fil',67),(406,'Maintenance et exploitation des équipements sans fil ',67),(407,'Il est le premier responsable du departement technique regional',67),(408,'transmission par satellite',67),(409,'fonctionnement du reseau fixe filaire',68),(410,'bon fonctionnement de tous ceux qui sont rattachés aux équipements sans fil',68),(411,'Maintenance et exploitation des équipements sans fil ',68),(412,'Il est le premier responsable du departement technique regional',68),(413,'transmission par satellite',68),(414,'fonctionnement du reseau fixe filaire',69),(415,'bon fonctionnement de tous ceux qui sont rattachés aux équipements sans fil',69),(416,'transmission par satellite',69),(417,'Il est le premier responsable du departement technique regional',69),(418,'transmission par satellite',69),(419,'maintenance et exploitation de (commutateur ocb | equipment fmx)',70),(420,'envoie les donnees aux clients',70),(421,'transmission satellitaire',70),(422,'transmission des donnes par satellite',70),(423,'etude de la region sur son plan developpement',71),(424,'etudier l_habitude des gens qui y vivent',71),(425,'qu_est ce qui y rapporte le plus d_argent dans le village',71),(426,'etude en details des vies des gens',71),(427,'savoir globalement le principe de vie des villageois',71),(428,'Situation géographique du lieu ',72),(429,'Activités économiques du village',72),(430,'histoire du village',72),(431,'etude démographique',72),(432,'tourisme dans la zone',72),(433,'électrification ',72),(434,'Infrastructures du village',72),(435,'endSubjAb',75),(436,'ans02',75),(437,'ans01',76),(438,'ans02',76),(439,'3gpp',78),(440,'itu',78),(441,'etsi',78),(447,'NS',80),(448,'SA',80),(449,'CT',80),(450,'RAN',80),(451,'GERAN',80),(452,'sous ensemble du reseau coeur',81),(453,'un canal pour envoier des donnes de signalisation',81),(454,'interface reliant nodeB et rnc',81),(455,'interface radio d_umts',81),(456,'interface reliant auc et gmsc',81),(457,'protocol dans une mobile',81),(458,'type de rab',81),(459,'fast in the propagation',82),(460,'sensitive to interference',82),(461,'has many channels ',82),(462,'is very light',82),(463,'site locations and con?guration (sectorisation)',83),(464,'height, main lobe direction, beamwidth and tilt of the antennas',83),(465,'optimising the coverage of mobile',83),(466,'antenna installations (cable losses);',83),(467,'usage of Mast Head Ampli?ers (MHAs).',83),(468,'studing what is around the site',84),(469,'ideal case',84),(470,'use of digital topography and morphology information in propagation',84),(471,'positions of the bs',85),(472,'distance between the bs',85),(473,'service probability provided',85),(474,'bit rate of the speech of the user',85),(475,'speed of the user',85),(476,'billing of the call',85),(477,'initial number of the ms',85),(478,'the bit rate of speech was not fullfilled',86),(479,'the coverage probability of the speech succeded 95%',86),(480,'all calls were success',86),(481,'datas were ok',86),(482,'the bit rate of speech was not fullfilled',87),(483,'the coverage probability of the speech succeded 95%',87),(484,'all calls were success',87),(485,'datas were ok',87),(486,'Situation géographique du lieu',88),(487,'activités économiques du village ',88),(488,'etude démographique',88),(489,'tourisme dans la zone',88),(490,'l_électrification',88),(491,'infrastructures du village',88),(492,'santé des villageois',88),(493,'AbstractTableModel00',89),(494,'TableModel00',89),(495,'AbstractModelTable00',89),(496,'JTableModel00',89),(497,'AbstractTableModel00',90),(498,'TableModel00',90),(499,'AbstractModelTable00',90),(500,'JTableModel00',90),(501,'AbstractTableModel00',91),(502,'TableModel00',91),(503,'AbstractModelTable00',91),(504,'JTableModel00',91),(505,'jlist00.getSelectedValue()',93),(506,'jlist00.getSelectedObject().toString()',93),(507,'jlist00.getSelectedItem().toString()',93),(508,'jlist00.getText()',93),(509,'jlist00.getSelectedValue()',94),(510,'jlist00.getSelectedObject().toString()',94),(511,'jlist00.getSelectedItem().toString()',94),(512,'jlist00.getText()',94),(513,'Etude de l_architecture du réseau de téléphonie mobile de TELMA dans la région DIANA',95),(514,'Etude théorique CDMA/UMTS (comparaison avec GSM et DCS)',95),(515,'Etude géographique (sociale/démographique), économique de la zone d’études',95),(516,'Enquêtes auprès des cibles',95),(517,'Etude de la couverture',95),(518,'Etude de facturation',95),(519,'Planifications de ressources ( et code)',95),(520,'Rédactions des résultats obtenues',95),(521,'Etude des interférences',95),(522,'Réalisation de la simulation du projet',95),(523,'Etude du cout du projet',95),(524,'Rédactions de la version littérale du livre de mémoire et pré-soutenance ',95),(525,'                   +---------------------------+                  +----------------------------------------+\n                   |caracteristiques des abe   |                  | configuration initiale du reseau       |\n                   |    modele du mobile       |                  |     localisation des station de base   |\n                   |    modele de trafic (     |                  |     categorie des antennes             |\n                   |        type de srvc       |                  |     caracteristique de l_env           |\n                   |        taux d_activitee)  |                  +-----------+----------------------------+\n                   |    distribution des abee  |                              |\n                   |        dans le reseau     |                              |\n                   +-------------------+-------+                              v\n                                       |        +-----------------------------+---+\n                                       |        | simulation                      |\n                                       |        |   bilan de liaison              |\n                                       +------>>|   controle de puissance         +-----------------+\n                                                |   facteur de charger(ul et dl)  |                 |\n                                                +---------------------------------+                 v\n                    +-----------------------------+                           +--------------------------------+\n                    | optimisation                |                           | evaluation des performances    |\n                    |   ajustement des parametres +---------------------------+     couverture par service     |\n                    |   ajout d_equipement        |                           |     capacitee par service      |\n                    |                             |                           +--------------------------------+\n                    +-----------------------------+',96),(526,'noschema',96),(527,'\n                 +---------------------------+                              +-----------------------------+\n                   |caracteristiques des abe   |                              | optimisation                |\n                   |    modele du mobile       |                              |   ajustement des parametres +\n                   |    modele de trafic (     |                              |   ajout d_equipement        |\n                   |        type de srvc       |                              |                             |\n                   |        taux d_activitee)  |                              +-----------------------------+\n                   |    distribution des abee  |                              |\n                   |        dans le reseau     |                              |\n                   +-------------------+-------+                              v\n                                       |        +-----------------------------+---+\n                                       |        | simulation                      |\n                                       |        |   bilan de liaison              |\n                                       +------>>|   controle de puissance         +-----------------+\n                                                |   facteur de charger(ul et dl)  |                 |\n                                                +---------------------------------+                 v\n                                                                          +--------------------------------+\n                                                                          | evaluation des performances    |\n                                               +--------------------------+     couverture par service     |\n                                               |                          |     capacitee par service      |\n                                               |                          +--------------------------------+\n                                               v\n                   +----------------------------------------+\n                   | configuration initiale du reseau       |\n                   |     localisation des station de base   |\n                   |     categorie des antennes             |\n                   |     caracteristique de l_env           |\n                   +-----------+----------------------------+',97),(528,'\n                   +---------------------------+                              +-----------------------------+\n                   |caracteristiques des abe   |                              | optimisation                |\n                   |    modele du mobile       |                              |   ajustement des parametres +\n                   |    modele de trafic (     +----------------------------->+  ajout d_equipement        |\n                   |        type de srvc       |                              |                             |\n                   |        taux d_activitee)  |                              +-----------------------------+\n                   |    distribution des abee  |                               \n                   |        dans le reseau     |                               \n                   +-------------------+-------+                               \n                                       |\n                                       |\n                                       |\n                                       +------>>-----------------+\n                                                                 |\n                                                                 v\n                                                      +--------------------------------+\n                                                      | evaluation des performances    |\n                                                      +     couverture par service     +-----------------------------+\n                                                      |     capacitee par service      |                             |\n                                                      +------------------+-------------+                             |\n                                                                         |                                           |\n                                                                         |                                           v\n                                                                         v                                           v\n                                               +-------------------------+                                     +-----+-----------------------+---+\n                                               |                                                               | simulation                      |\n                                               |                                                               |   bilan de liaison              |\n                                               v                                                               |   controle de puissance         +\n                   +----------------------------------------+                                                  |   facteur de charger(ul et dl)  |\n                   | configuration initiale du reseau       |                                                  +---------------------------------+\n                   |     localisation des station de base   |\n                   |     categorie des antennes             |\n                   |     caracteristique de l_env           |\n                   +-----------+----------------------------+\n\n\n',97),(529,'\n                   +---------------------------+                  +----------------------------------------+\n                   |caracteristiques des abe   |                  | configuration initiale du reseau       |\n                   |    modele du mobile       |                  |     localisation des station de base   |\n                   |    modele de trafic (     |                  |     categorie des antennes             |\n                   |        type de srvc       |                  |     caracteristique de l_env           |\n                   |        taux d_activitee)  |                  +-----------+----------------------------+\n                   |    distribution des abee  |                              |\n                   |        dans le reseau     |                              |\n                   +-------------------+-------+                              v\n                                       |        +-----------------------------+---+\n                                       |        | simulation                      |\n                                       |        |   bilan de liaison              |\n                                       +------>>|   controle de puissance         +-----------------+\n                                                |   facteur de charger(ul et dl)  |                 |\n                                                +---------------------------------+                 v\n                    +-----------------------------+                           +--------------------------------+\n                    | optimisation                |                           | evaluation des performances    |\n                    |   ajustement des parametres +<--------------------------+     couverture par service     |\n                    |   ajout d_equipement        |                           |     capacitee par service      |\n                    |                             |                           +--------------------------------+\n                    +-----------------------------+',97),(530,'installation',98),(531,'l_enquete',98),(532,'les logiciels',98),(533,'tu dois lire $b10p19-20',99),(534,'source de revenu de la famille',99),(535,'qL est votre fruit preferee',99),(536,'l_operateur dont le client est interessee le plus',99),(537,'c_est quoi internet, a votre avis',99),(538,'c_est quoi 3g a votre avis',99),(539,'atoll',100),(540,'global mapper',100),(541,'nemo outdoor',100),(542,'google earth',100),(543,'usgs earth explorer',100),(544,'dimensionnement',101),(545,'planification',101),(546,'drive-tester',101),(547,'dimensionnement',102),(548,'planification',102),(549,'drive-tester',102),(550,'du design',102),(551,'extension',102),(552,'donnee topographique du terrain',103),(553,'modele numerique du terrain',103),(554,'prix du terrain',103),(555,'station de base et terminaux',104),(556,'station de base et rnc et terminaux',104),(557,'terminaux et rnc',104),(558,'couverture par emetteur',105),(559,'zones de recouvrement',105),(560,'prix d_appel',105),(561,'couverture par niveau de champ',105),(562,'couverture par niveau du signal sur bruit',105),(563,'cartographie',106),(564,'calcul la dimension de la couverture',106),(565,'localisation précise des sites ',106),(566,'afficher des images raster',107),(567,'afficher la propagation des antennes',107),(568,'acceder a la base terraServer',107),(569,'editer des donnees gps',107),(570,'server d_images raster',108),(571,'logiciel pour predire la couverture d_un reseau',108),(572,'des donnees d_altitude et vectorielle des terrains',108),(573,'outil capable de prendre en photo des images satellitaire',108),(574,'base des donnees d_image satellitaire',108),(575,'detecteur de position des mobiles via satellite',108),(576,'collecter les informations grace aux drive-test',109),(577,'avoir des donnees gps avec des photographie aerienne numerique',109),(578,'avoir la max des donnees venant de la base des donnees d_image satellitaire',109),(579,'utiliser le detecteur de position des mobiles via satellite',109),(580,'image satellitaire evoluee',110),(581,'image de simulation des propagations des antennes',110),(582,'image haute resolution destinee pour des presentations',110),(583,'une autre format d_image utilisee dans le telecom',110),(584,'pour avoir des donnees gps des sites',111),(585,'pour la simulation du reseau',111),(586,'pour editer les donnees gps',111),(587,'pour avoir des images aeriennes ou satellitaire',111),(588,'altimetrie, sursol, image aerienne',112),(589,'image aerienne, hydrographie, sursol',112),(590,'altimetrie, sursol, hydrographie, carte civile',112),(591,'cartes civile, altimetrie, hydrographie, decoupage de terrain',112),(592,'u.s groundind system',113),(593,'u.s geological study',113),(594,'u.s geological survey',113),(595,'u.s general study',113),(600,'manque d_information',115),(601,'les donnees ne sont pas convenable',115),(602,'utilisees pour de l_hydrographie seulement',115),(603,'la resolution n_est pas bonne',115),(604,'oui, ',116),(605,'non, ',116),(606,'•	L_exportation de sites sur l’application Google Earth.\n',117),(607,'•	L_exportation des transmissions  et Répéteur sur l’application  Google Earth.  \n',117),(608,'•	L_exportation de la couverture de sur application  Google Monde. \n',117),(609,'•	L_exportation du resultat du simulation sur google earth ',117),(613,'amplificateur bidirectionnel associé à deux antennes dirigées l’une vers la station base (Node B/BTS) et l’autres vers le (RNC/BSC)',119),(614,'amplificateur bidirectionnel associé à deux antennes dirigées l’une vers la station base (Node B/BTS) et l’autres vers les mobiles.',119),(615,'amplificateur monodirectionnel reliant (Node B/BTS) vers les mobiles',119),(616,'amplificateur',120),(617,'protection',120),(618,'pour rendre le signal meilleur',120),(619,'pour detruire les parasites',120),(620,'pour repeter les donnees en cas de perte',120),(621,'stabilisateur et amplificateur',120),(622,'\n                   +------+                                   +-----------+                               +----------------------+\n                   | bts  +<<------------------------------->>+ repeteur  +<<--------------------------->>+    zone a couvrir    |\n                   +------+                                  ^+-----------+ ^                             +----------------------+\n                                                             ^              ^\n                                                             |              |\n                                              +--------------+----+      +--+--------------+\n                                              | antenne servante  |      |antenne donneuse |\n                                              +-------------------+      +-----------------+',121),(623,' \n                   +------+                                   +-----------+                               +----------------------+\n                   | BTS  +<<------------------------------->>+ repeteur  +<<--------------------------->>+    zone a couvrir    |\n                   +------+                                  ^+-----------+ ^                             +----------------------+\n                                                             ^              ^\n                                                             |              |\n                                            +----------------++         +---+---------------+\n                                            |antenne donneuse |         | antenne servante  |\n                                            +-----------------+         +-------------------+',121),(624,'dans la cellule',122),(625,'a l_exterieur de la cellule',122),(626,'au bord interne de la cellule',122),(630,'le rendement et le brouillage du lien donneur',124),(631,'puissance du signal servante',124),(632,'la valeur Ec/No',124),(633,'ameliorer la qualite du signal',125),(634,'reduire les interferences des signaux',125),(635,'faciliter le handover',125),(636,'agrandir la zone de couverture',125),(637,'a-b-c-d-e',126),(638,'a-b-c-d',126),(639,'a-b-c',126),(640,'a-b',126),(641,'x-y',126),(642,'le mobile ne peut pas connecter en gsm et gprs en meme temps',127),(643,'le mobile peut connecter en gsm et gprs en meme temps, et pE les utiliser en meme temps',127),(644,'le mobile peut connecter en gsm et gprs en meme temps, mais ne pE pas les utiliser en meme temps',127),(645,'le mobile ne peut pas connecter en gsm et gprs en meme temps',128),(646,'le mobile peut connecter en gsm et gprs en meme temps, et pE les utiliser en meme temps',128),(647,'le mobile peut connecter en gsm et gprs en meme temps, mais ne pE pas les utiliser en meme temps',128),(648,'le mobile ne peut pas connecter en gsm et gprs en meme temps',129),(649,'le mobile peut connecter en gsm et gprs en meme temps, et pE les utiliser en meme temps',129),(650,'le mobile peut connecter en gsm et gprs en meme temps, mais ne pE pas les utiliser en meme temps',129),(651,'determiner le mode de fonctionnement de communication avec le BS',130),(652,'determiner la vitesse de transmissions des donnees',130),(653,'determiner le mode de fonctionnement du phone',130),(654,'1-2-4-6-8',131),(655,'1-2-4-5-8-9',131),(656,'1-2-3-4-6-7-9',131),(657,'2-4-6-7-8-9',131),(658,'3',132),(659,'1 à 3',132),(660,'4',132),(661,'2',132),(662,'1 à 5',132),(663,'5',132),(664,'illimitee',132),(665,'3 à 9',132),(666,'frequence d_utilisation',133),(667,'qualitee de service',133),(668,'vitesse de transmission',133),(669,'classe de service',133);
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
  UNIQUE KEY `id_about` (`id_about`,`id_subj`),
  KEY `id_subj` (`id_subj`),
  CONSTRAINT `join_subj_about_ibfk_1` FOREIGN KEY (`id_about`) REFERENCES `about` (`id_about`),
  CONSTRAINT `join_subj_about_ibfk_2` FOREIGN KEY (`id_subj`) REFERENCES `subjs` (`id_subj`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `join_subj_about`
--

LOCK TABLES `join_subj_about` WRITE;
/*!40000 ALTER TABLE `join_subj_about` DISABLE KEYS */;
INSERT INTO `join_subj_about` VALUES (1,1,1),(1,2,2),(1,7,7),(1,8,45),(2,1,4),(3,1,5),(3,7,6),(4,2,26),(5,7,10),(6,7,12),(7,7,11),(8,7,13),(9,7,14),(10,7,15),(11,7,16),(12,7,17),(13,7,18),(14,7,19),(15,7,20),(16,2,27),(17,7,23),(18,7,24),(19,7,25),(21,7,21),(22,2,43),(23,2,42),(24,2,41),(25,2,40),(26,2,39),(27,2,38),(28,2,37),(29,2,36),(30,2,35),(31,2,34),(32,2,33),(33,2,32),(34,2,31),(35,2,30),(36,2,29),(37,2,28),(38,9,44),(39,11,46),(40,13,48),(42,13,50);
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
INSERT INTO `join_subj_about_q` VALUES (2,75),(2,76),(2,77),(44,77),(2,78),(44,78),(2,80),(44,80),(2,81),(44,81),(2,82),(44,82),(2,83),(44,83),(2,84),(27,84),(44,84),(27,85),(44,85),(27,86),(44,86),(45,87),(46,87),(48,88),(48,89),(48,90),(50,92),(50,93),(46,94),(46,95),(46,96),(46,97),(46,98),(46,99),(46,100),(46,101),(46,102),(46,103),(46,104),(46,105),(46,106),(46,107),(46,108),(46,109),(46,110),(46,111),(46,112),(46,113),(46,115),(46,116),(46,117),(46,119),(46,120),(46,121),(46,122),(46,124),(46,125),(46,126),(46,127),(46,128),(46,129),(46,130),(46,131),(46,132);
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
INSERT INTO `player_paper` VALUES (2,12,1,'2016-01-15 06:26:45'),(2,13,0,'2016-01-16 09:39:11'),(2,14,0,'2016-01-16 09:39:11'),(2,15,0,'2016-01-15 06:26:45'),(2,16,0,'2016-01-15 06:26:45'),(2,17,1,'2016-01-15 06:26:45'),(2,18,0,'2016-01-15 06:26:45'),(2,19,1,'2016-01-15 06:28:38'),(2,19,0,'2016-01-15 06:29:26'),(1,12,1,'2016-01-16 10:01:47'),(1,13,1,'2016-01-16 10:01:47'),(1,14,1,'2016-01-16 10:01:47'),(2,19,1,'2016-01-21 02:49:12'),(2,30,0,'2016-01-21 02:49:12'),(2,34,0,'2016-01-21 02:49:12'),(2,35,1,'2016-01-21 02:49:12'),(2,36,0,'2016-01-21 02:49:12'),(2,19,1,'2016-01-21 02:51:19'),(2,30,0,'2016-01-21 02:51:19'),(2,34,0,'2016-01-21 02:51:19'),(2,35,0,'2016-01-21 02:51:30'),(2,36,0,'2016-01-21 02:51:30'),(2,37,1,'2016-01-21 02:51:30'),(2,38,1,'2016-01-21 02:52:01'),(2,39,0,'2016-01-21 02:52:01'),(2,40,1,'2016-01-21 02:52:01'),(2,44,0,'2016-01-21 02:52:28'),(2,45,0,'2016-01-21 02:52:28'),(2,46,0,'2016-01-21 02:52:28'),(2,19,1,'2016-01-21 05:59:45'),(2,30,0,'2016-01-21 05:59:45');
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
  `_datet` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_question`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (3,'iz no capitalnMadagascar?',7,'default','0000-00-00 00:00:00'),(11,'5 + 5',46,'default','0000-00-00 00:00:00'),(12,'qL est la fermeture du testIf',51,'default','0000-00-00 00:00:00'),(13,'comment faire resultat d_unique select dans varLocal',55,'default','0000-00-00 00:00:00'),(14,'comment declarer une variable locale',57,'default','0000-00-00 00:00:00'),(15,'leqL de ceci n_est pas l_avantage de procedure',64,'default','0000-00-00 00:00:00'),(16,'lequel des sens des parametres suivant n_est pas une sens de parametre',67,'default','0000-00-00 00:00:00'),(17,'comment pour afficher tout les procedures',70,'default','0000-00-00 00:00:00'),(18,'cmd pour supprimer une procedure',74,'default','0000-00-00 00:00:00'),(19,'which is the one u don_t need to import 3dMap?',77,'default','0000-00-00 00:00:00'),(20,'5 + 5',83,'default','0000-00-00 00:00:00'),(21,'5 + 5',87,'default','0000-00-00 00:00:00'),(22,'which one is NOT the target of initial planning $b5130',91,'default','0000-00-00 00:00:00'),(23,'why u need Okumura-Hata model $b5p38',93,'default','0000-00-00 00:00:00'),(24,'when Wal?sch–Ikegam model has to be used carefully $b5p38',104,'default','0000-00-00 00:00:00'),(25,'what RAN stand for',108,'default','0000-00-00 00:00:00'),(26,'which of these one is not a subSys of RAN $b5p574',113,'default','0000-00-00 00:00:00'),(27,'what u DON_T need for initial planning $b5p130',121,'default','0000-00-00 00:00:00'),(30,'which one of these ones is NOT a parameter in static simulation $b5p180',152,'default','0000-00-00 00:00:00'),(34,'which one of these ones is NOT included in the radio link budget',256,'default','0000-00-00 00:00:00'),(35,'which one of these ones is NOT an object of kpi $b5p469',263,'default','0000-00-00 00:00:00'),(36,'wcdma_optimisation is up to what $b5p470',269,'default','0000-00-00 00:00:00'),(37,'wcdma_optimisation division, which one is not in, $b5p470',275,'default','0000-00-00 00:00:00'),(38,'which one is NOT a target of kpi$b5p471',279,'default','0000-00-00 00:00:00'),(39,'u just decided the objects and target of kpi\nwhat to do next   $b5p471',282,'default','0000-00-00 00:00:00'),(40,'u just decided the objects and target of kpi, u have to collect information\n	what are the types to collect information   $b5p471\n	 in another words, what are the technics for measurements',284,'default','0000-00-00 00:00:00'),(44,'in the sequence of operation of atoll; which one is not in the right order   $b4p9',298,'default','0000-00-00 00:00:00'),(45,'which one is NOT in the focuses in statistics measurement   $b5p471',306,'default','0000-00-00 00:00:00'),(46,'what to maximise when maximising the capex   $b5p43',309,'default','0000-00-00 00:00:00'),(48,'which challenge, the Operators DON_T face in the planning of 3G networks:   $b5p44',320,'default','0000-00-00 00:00:00'),(49,'comment pour faire (un|des) (mots|phrases) en italique   $b9p37',324,'default','0000-00-00 00:00:00'),(50,'comment pour faire (un|des) (mots|phrases) en gras   $b9p37',326,'default','0000-00-00 00:00:00'),(51,'c_est quoi le theme du rapport de stage jurin-ibrahim   $b10p02',332,'default','0000-00-00 00:00:00'),(52,'qL est l_intrus pour realiser un livre de rapport de stage   $b10p02',341,'default','0000-00-00 00:00:00'),(53,'qu_est ce qui differencie TELMA des autres operateurs   $b10p10',346,'default','0000-00-00 00:00:00'),(54,'qu_est ce que le VSAT peut-il faire   $b10p10',352,'default','0000-00-00 00:00:00'),(55,'quand est ce que telma s_est privatisee   $b10p10',354,'default','0000-00-00 00:00:00'),(56,'telma s_est privatisee, qu_est ce qu_il peut faire   $b10p10',361,'default','0000-00-00 00:00:00'),(57,'telma s_est privatisee, qu_est ce qu_il peut faire   $b10p10',365,'default','0000-00-00 00:00:00'),(59,'quand est ce que telma a lancee l_adsl   $b10p11',368,'default','0000-00-00 00:00:00'),(60,'quand est ce que telma a lancee le sdsl   $b10p11',373,'default','0000-00-00 00:00:00'),(61,'qu_est ce que l_adsl et le sdsl peut faire   $b10p11',378,'default','0000-00-00 00:00:00'),(62,'quelle technologie utilisee par les telephnies fixes   $b10p11',380,'default','0000-00-00 00:00:00'),(63,'place du telma dans le fait de donnee le reseau mobile au client   $b10p11',388,'default','0000-00-00 00:00:00'),(64,'c_est quoi EASSy    $b10p12',389,'default','0000-00-00 00:00:00'),(65,'qd est-ce que EASSy est arrivee a Madagascar   $b10p12',398,'default','0000-00-00 00:00:00'),(66,'ouu est-ce que EASSy arrive a Madagascar   $b10p12',402,'default','0000-00-00 00:00:00'),(67,'qL est la principale fonction de rtr   $b10p14',407,'default','0000-00-00 00:00:00'),(68,'qL est la PRINCIPALE fonction de dsf   $b10p14',410,'default','0000-00-00 00:00:00'),(69,'en plus du role du dsf, que fait la tdsf   $b10p14',416,'default','0000-00-00 00:00:00'),(70,'roles de commutation data   $b10p14',419,'default','0000-00-00 00:00:00'),(71,'quand tu veux installer une pylonnes sur une region, une de ces trucs ne sont pas a faire   $b10p14',426,'default','0000-00-00 00:00:00'),(72,'on doit faire l_etude de vie des villageois quand on veut installer une pylonne sur une village\nqu_est ce qu_il ne faut pas etudier   $b10p14',430,'default','0000-00-00 00:00:00'),(75,'q00',436,'default','0000-00-00 00:00:00'),(76,'q00',438,'default','0000-00-00 00:00:00'),(77,'qui a inventee l_imt2000    $b07p04',440,'default','0000-00-00 00:00:00'),(78,'qui a inventee l_imt2000    $b07p04',440,'default','0000-00-00 00:00:00'),(80,'3gpp est composee de 4TSG, un de ceci NE L_EST PAS    $b07p09',447,'default','0000-00-00 00:00:00'),(81,'c_est quoi utran    $b07p87',455,'default','0000-00-00 00:00:00'),(82,'wcdma is very ...    $b05p189',460,'default','0000-00-00 00:00:00'),(83,'controlling the interference is already a big work in optimisation\nwhich one of these next is NOT included in the controlling the interference    $b05p189',465,'default','0000-00-00 00:00:00'),(84,'there are 2 cases which are used to control the interference\nwhich of these next is NOT the one    $b05p189',468,'default','0000-00-00 00:00:00'),(85,'for the ideal case in the simulation; which of these was NOT to study    $b05p189',476,'default','0000-00-00 00:00:00'),(86,'in the $b05p189 during the ideal case of the simulation;   how was the first result of the analysis',479,'default','0000-00-00 00:00:00'),(87,'in the $b05p189 during the ideal case of the simulation;   how was the first result of the analysis',483,NULL,'0000-00-00 00:00:00'),(88,'un des cas suivants n_EST PAS dans l_etude l_Ambolobozokely    $b10p14',492,NULL,'0000-00-00 00:00:00'),(89,'pour faire jTable, t_en a besoin d_un objet pour representer les donnees:    $b11p288',493,NULL,'0000-00-00 00:00:00'),(90,'pour faire jTable, t_en a besoin d_un objet pour representer les donnees:    $b11p288',497,NULL,'0000-00-00 00:00:00'),(91,'pour faire jTable, t_en a besoin d_un objet pour representer les donnees:    $b11p288',501,NULL,'0000-00-00 00:00:00'),(92,'comment pour avoir le selected dans jlist00 :    $b11p288',505,NULL,'0000-00-00 00:00:00'),(93,'comment pour avoir le selected dans jlist00 :    $b11p288',505,NULL,'0000-00-00 00:00:00'),(94,'comment pour avoir le selected dans jlist00 :    $b11p288',509,NULL,'0000-00-00 00:00:00'),(95,'quelles des actions suivant ne sont pas inclues dans la planification:    $b10p17',518,NULL,'0000-00-00 00:00:00'),(96,'lequel des schemas est le diagramme de dimensionnement utilisee    $b10p18',525,NULL,'0000-00-00 00:00:00'),(97,'lequel des schemas est le diagramme de dimensionnement utilisee    $b10p18',529,NULL,'0000-00-00 00:00:00'),(98,'dans ce livre, son action de mis en oeuvre est divisee en 2, un de ceci n_est dedans    $b10p18',530,NULL,'0000-00-00 00:00:00'),(99,'dans le livre, on fait une enquete des clients, sache qu_on veut avoir une vue globale des clients\nlequel des questions suivants n_est PAS admissibles dans le questionnaire    $b10p19',535,NULL,'0000-00-00 00:00:00'),(100,'quelleest le logiciel qui n_est PAS utilisee par le projet$b10p21',541,NULL,'0000-00-00 00:00:00'),(101,'un de ceci n_est pas dans dans la definition d_atoll',546,NULL,'0000-00-00 00:00:00'),(102,'un de ceci n_est pas dans dans la definition d_atoll',549,NULL,'0000-00-00 00:00:00'),(103,'qu_est ce que la carte ne doit pas contenir',554,NULL,'0000-00-00 00:00:00'),(104,'quelles sont les caracteristiques dans la simulation',555,NULL,'0000-00-00 00:00:00'),(105,'qu_est ce qui N_est PAS a predire par la simulation',560,NULL,'0000-00-00 00:00:00'),(106,'que fait usgs earth explorer     $b10p21',565,NULL,'0000-00-00 00:00:00'),(107,'un des cas suivant ne concerne pas global mapper    $b10p21',567,NULL,'0000-00-00 00:00:00'),(108,'qu_est ce usgs possede    $b10p22',574,NULL,'0000-00-00 00:00:00'),(109,'comment pour avoir une carte riche en information    $b10p22',577,NULL,'0000-00-00 00:00:00'),(110,'c_est quoi une image raster    $b10p22',582,NULL,'0000-00-00 00:00:00'),(111,'google earth est pourquoi faire    $b10p22',587,NULL,'0000-00-00 00:00:00'),(112,'qL sont les donnees qui sont donnees par le serveur d_usgs    $b10p23',591,NULL,'0000-00-00 00:00:00'),(113,'donner la forme longue d_usgs    $b10p23',594,NULL,'0000-00-00 00:00:00'),(115,'pourquoi la carte venant d_usgs seulement n_est pas convenable    $b10p23',603,NULL,'0000-00-00 00:00:00'),(116,'y a t-il un addon venant de google pour atoll    $b10p23',604,NULL,'0000-00-00 00:00:00'),(117,'un des cause suivant n_est pas une fonctionnalité d_addon d_atoll (google earth)    $b10p23',609,NULL,'0000-00-00 00:00:00'),(119,'c_est quoi un repeteur    $b10p37',614,NULL,'0000-00-00 00:00:00'),(120,'c_est quoi le principal role d_un repeteur    $b10p37',616,NULL,'0000-00-00 00:00:00'),(121,'c_est quoi l_architecture du repeteur    $b10p37',623,NULL,'2016-01-31 11:43:37'),(122,'un des position suivant n_est pas bon pour l_emplacement du repeteur    $b10p37',625,NULL,'2016-01-31 11:47:29'),(124,'qd on fait varier la hauteur du repeteur, il y a changement, c quoi?    $b10p39',630,NULL,'2016-01-31 11:57:15'),(125,'c quoi le principal role du repeteur    $b10p40',636,NULL,'2016-02-02 06:15:26'),(126,'qL sont les classes du mobile    $b10p40',639,NULL,'2016-02-02 06:21:14'),(127,'comment est la classe A du mobile    $b10p40',643,NULL,'2016-02-02 06:30:08'),(128,'comment est la classe B du mobile    $b10p40',647,NULL,'2016-02-02 06:30:47'),(129,'comment est la classe C du mobile    $b10p40',648,NULL,'2016-02-02 06:31:23'),(130,'les classe _chiffres_ sont fait pour quoi,    $b10p40',652,NULL,'2016-02-02 06:39:53'),(131,'qL sont les classes dont les fonctionnements des canaux libres sont designer par l_operateur,    $b10p40',655,NULL,'2016-02-02 06:42:22'),(132,'combien de canaux un mobile peut utiliser     $b10p40',662,NULL,'2016-02-02 07:52:03'),(133,'le mobile est classee suivant quoi dans    $b10p40',666,NULL,'2016-02-02 07:55:51');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reading_doc`
--

LOCK TABLES `reading_doc` WRITE;
/*!40000 ALTER TABLE `reading_doc` DISABLE KEYS */;
INSERT INTO `reading_doc` VALUES (1,'464494-administrez-vos-bases-de-donnees-avec-mysql'),(2,'UMTS Radio Network Planning, Optimization and QoS Management (+1)'),(3,'JavaFX For Dummies (+10) reading adobe'),(4,'95960910-atoll-getting-started-umts-310-en-reading'),(5,'Radio Network Planning and Optimisation for UMTS, 2nd Edition (+35) - reading'),(6,'java8_tutorial (+5) reading '),(7,'reseaux 3g(pierre lescuyer)'),(8,'lte et les reseaux 4g(xavier-wolff)'),(9,'13666-apprenez-a-creer-votre-site-web-avec-html5-et-css3 reading'),(10,'rapport jurin-ibrahim'),(11,'Pro Java Programming, 2nd Edition(+18) reading');
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
  PRIMARY KEY (`id_subj`),
  UNIQUE KEY `subj` (`subj`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjs`
--

LOCK TABLES `subjs` WRITE;
/*!40000 ALTER TABLE `subjs` DISABLE KEYS */;
INSERT INTO `subjs` VALUES (9,'academic'),(8,'atoll'),(10,'html5'),(1,'java'),(13,'javaswing'),(6,'math'),(7,'mysql'),(4,'network'),(5,'programming'),(11,'stage'),(2,'telecom'),(12,'telma');
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

-- Dump completed on 2016-02-03 14:18:41
