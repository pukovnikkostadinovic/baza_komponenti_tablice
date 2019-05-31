-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: baza_komponenti
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

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
-- Table structure for table `kategorije_komponenti`
--

DROP TABLE IF EXISTS `kategorije_komponenti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategorije_komponenti` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `ime_kategorije` varchar(50) COLLATE cp1250_croatian_ci NOT NULL,
  `kratak_opis` varchar(400) COLLATE cp1250_croatian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=cp1250 COLLATE=cp1250_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategorije_komponenti`
--

LOCK TABLES `kategorije_komponenti` WRITE;
/*!40000 ALTER TABLE `kategorije_komponenti` DISABLE KEYS */;
INSERT INTO `kategorije_komponenti` VALUES (1,'Nema kategoriju',' '),(2,'Izvori napajanja','AC-DC step-up i step-down konverteri i svakojaka napajanja'),(3,'Kabeli','Svakojaki kablovi'),(4,'Konektori','Konektorti muški, ženski, za 220V ili 12V'),(5,'Mikrokontroleri','Arduino Uno, pro mini, nodemcu'),(6,'Otpornici','Svakakve verzije otpornika'),(7,'Kondenzatori','Bipolarni i svakakvi kondenzatori'),(8,'Senzori','ćelije za mjerenje, vlage, težine, voltaže i svega drugog'),(9,'Kutije','Razne kutije za elektroniku'),(10,'Inox komponente','Inox djelovi za HERMS sustav'),(11,'Dom i vrt','Svašta nešto'),(12,'Ekrani','LCD ili Led paneli ili nešto drugo'),(13,'Releji i tranzistori','Sve što ima funkciju neke sklopke/prekidača ili elektroventila.'),(14,'Pumpe','Svakakve, zračne, vodene ili neke druge'),(15,'DC AC Step Motori','AC, DC, Servo, driveri i dr.'),(16,'Diode','LED, zener i dr.'),(17,'Prijamnici/predajnici','Bluetooth, RF, Wireless i dr'),(18,'Hladnjiaci','Različiti aluminijski, bakreni i drugi elementi za hlađenje'),(19,'Tiskane pločice','Jednoslojne, dvoslojne, foto i druge'),(20,'Čitači/Pisači','Razni moduli za čitanje i pisanje kao sd čitač, rfid pisač'),(21,'Potenciometri i joystici','Razni uređaji za kontrolu servo motora i ostalih komponenti'),(22,'Oscilatori','quartzni oscilatori'),(23,'Pojačala','Svakojaka pojačala'),(32,'Baterije','Baterije svih vrsta');
/*!40000 ALTER TABLE `kategorije_komponenti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `komp_lok_kol`
--

DROP TABLE IF EXISTS `komp_lok_kol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `komp_lok_kol` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `komp_id` int(10) NOT NULL,
  `lok_id` int(10) NOT NULL,
  `kolicina` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `komp_id` (`komp_id`),
  KEY `lok_id` (`lok_id`),
  CONSTRAINT `fk_komp_id` FOREIGN KEY (`komp_id`) REFERENCES `komponente` (`id`),
  CONSTRAINT `fk_lok_id` FOREIGN KEY (`lok_id`) REFERENCES `lokacije` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=cp1250 COLLATE=cp1250_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `komp_lok_kol`
--

LOCK TABLES `komp_lok_kol` WRITE;
/*!40000 ALTER TABLE `komp_lok_kol` DISABLE KEYS */;
INSERT INTO `komp_lok_kol` VALUES (1,1,2,7),(2,1,3,7),(3,2,5,3),(4,3,4,13),(5,4,5,2),(6,5,6,4),(7,6,4,1),(8,7,7,2),(9,8,8,1),(10,9,9,1),(11,10,10,10),(12,11,11,5),(13,11,3,5),(14,12,12,4),(15,13,12,1),(16,14,13,1),(17,15,13,1),(18,4,12,1),(19,9,12,1),(20,16,14,1),(21,17,15,30),(22,18,16,32),(23,19,17,2),(24,20,17,4),(25,21,17,1),(26,22,13,1),(27,23,14,1),(28,24,18,20),(29,25,17,1),(30,26,17,20),(31,4,8,1),(32,27,15,2),(33,28,19,20),(34,29,17,2),(35,30,21,1),(36,31,21,1),(37,14,20,2),(38,32,20,2),(39,33,21,1),(40,34,21,1),(41,35,22,1),(42,36,22,1),(43,37,20,1),(44,38,23,1),(45,39,16,7),(46,40,22,70),(47,41,23,1),(48,42,23,1),(49,43,24,13),(50,44,4,7),(51,45,25,17),(52,14,26,2),(53,9,27,6),(54,31,23,1),(55,46,24,10),(56,47,24,1),(57,48,20,1),(58,13,22,1),(59,49,22,2),(60,50,24,10),(61,34,9,1),(62,51,24,1),(63,52,14,1),(64,53,21,4),(65,4,21,1),(66,54,29,2),(67,55,9,1),(68,56,9,10),(69,57,9,1),(70,58,9,1),(72,60,26,1),(73,61,26,3),(74,62,26,5),(75,63,26,5),(76,64,28,4),(77,56,28,10),(78,65,28,50),(79,66,29,20),(80,67,30,2),(81,68,30,1),(82,69,30,4),(83,70,31,1),(84,71,31,1),(85,72,31,10),(86,73,1,1),(87,74,1,1),(88,75,1,1),(89,76,1,4),(90,77,1,1),(91,78,1,1),(92,79,1,1),(93,80,1,1),(94,81,1,1),(95,82,1,12),(96,83,1,2),(97,84,1,50),(98,22,16,1),(99,85,1,1),(100,86,16,2),(101,87,16,1),(102,88,1,1),(103,89,1,26),(104,90,1,50),(105,91,1,5),(106,92,1,1),(107,93,1,1),(108,94,1,3),(109,94,1,3),(110,95,1,1),(111,96,1,3),(112,97,1,5),(113,98,1,4),(114,99,1,3),(115,100,1,4),(116,101,1,8),(117,102,1,1),(118,103,1,15),(119,44,16,3),(120,51,16,1),(121,105,1,5),(122,106,1,19),(123,107,1,6),(124,108,1,2),(125,35,25,1),(126,8,26,1),(127,6,5,1),(128,36,23,1),(129,109,1,1),(130,33,20,1),(131,110,16,1),(132,111,1,50),(133,57,9,1),(134,112,1,2),(135,113,1,3),(136,114,1,3),(137,115,1,4),(138,116,1,1),(139,117,1,1),(140,118,1,2),(141,119,1,20),(142,120,1,5);
/*!40000 ALTER TABLE `komp_lok_kol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `komponente`
--

DROP TABLE IF EXISTS `komponente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `komponente` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `ime_komponente` varchar(80) COLLATE cp1250_croatian_ci NOT NULL,
  `kratak_opis_komp` varchar(400) COLLATE cp1250_croatian_ci DEFAULT NULL,
  `kateg_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kateg_id_foreign` (`kateg_id`),
  CONSTRAINT `komponente_ibfk_1` FOREIGN KEY (`kateg_id`) REFERENCES `kategorije_komponenti` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=cp1250 COLLATE=cp1250_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `komponente`
--

LOCK TABLES `komponente` WRITE;
/*!40000 ALTER TABLE `komponente` DISABLE KEYS */;
INSERT INTO `komponente` VALUES (1,'Konektori 2pin','Konektori vodootporni',4),(2,'BMP 280','Senzor atmosferskog tlaka',8),(3,'DC-DC mini 360','dc-dc konverter step-down mislim',2),(4,'NODEMCU','ESP 8266',5),(5,'Konektori 2 pin plavi','Vodootporni plavi konektori',4),(6,'USB DC-DC 5V','Step up konverter USB 5V',2),(7,'AC-DC 220V->5V','Konverter sa 220 na 5V 1 Amper',2),(8,'Potenciometar s ručicom','10 kilo oma potenciometar',21),(9,'Senzor pokreta','senzor pokreta',8),(10,'Konektori za zvučnike','ženski +- konektori',4),(11,'Konektori 3pin','Vodootporni konektori muško/ženski',4),(12,'Senzor težine driver','Driver za težinske ćelije',8),(13,'LCD Ekran 1602','Led ekran 1602',12),(14,'Relej 2 kanala','Relej za arduino 2 kanala',13),(15,'Relej 4 kanala','Relej za arduino 4 kanala',13),(16,'PT 1000 sonda','Temperaturna sonda pt 1000 inox 1/2 cola',8),(17,'LED diode svakakve','Svakakvi tipovi led dioda',16),(18,'Otpornici svakakvi i trimeri','Svakakve vrijednosti otpornika',6),(19,'BCY 56 tranzisor','Tranzistor bcy 56',13),(20,'DHT 11','Senzor temperature i vlage',8),(21,'LM386 Audio pojačalo','Pojačalo',23),(22,'Relej 1 kanal','Jednokanalni relej',13),(23,'MAX 31865','Driver za temperaturnu sondu PT1000',8),(24,'Arduino pinovi','Muško muški i muško ženski pinovi',4),(25,'MG 995 servo motor','Servo motor sa dodacima',15),(26,'Mini tipkice 4pin','Mini tipkice 4pin',13),(27,'Led Žarulje','Ne zna ako su 12 ili 24 V',16),(28,'Kondenzatori bipolarni razni','Razne vrijednosti',7),(29,'Micro SD čitač','Modul za arduino',20),(30,'Arduino Nano','Arduino nano',5),(31,'Vremenski modul','Modul za vrijeme',8),(32,'Senzor razine vode','Mjeri razinu vode',8),(33,'USB to TTL','Konverter za programiranje arduino pro mini sa kabloviima',5),(34,'Arduino pro mini','Arduino pro mini 328p 5V',5),(35,'28BYJ 5V step motor','Step motor',15),(36,'Driver za 28BYJ','pripadajući driver',15),(37,'Senzor kiše','Senzor za mjerenje razine kiše',8),(38,'Audio pojačalo 2x100W','12V pojačalo dvokanalno',23),(39,'BC556B tranzisor','trnazistor BC556B',13),(40,'Lot trimera i potenciometra','više vrijednosti',21),(41,'RF relej Prijemnik','prijeminik',17),(42,'Predajnik/daljinski za relej prijemnik','daljinski za relej prijemnik',17),(43,'Postolje za atmel čip 24pin','Postolej za čip 24pin',4),(44,'AMS 1117 step-down dc-dc 3.3V','konverter dc-dc na 3.3V.\r\nRegulator napona 4-20V input 3.3V output max 800mA',2),(45,'Logic level shifter','3.3-5V step-up konverter za esp8266',2),(46,'Driver za led panele','MAX 7219 CNG',12),(47,'Ekran nokia 5110','LCD ekran od nokie',12),(48,'Bluetooth modul','Bluetooth modul',17),(49,'Audio pojačalo 2x3W','PAM 8403 pojačalo 5V DC',23),(50,'Blok kondenzator 33pF','Blok kondenzator 33pF',7),(51,'Hladnjaci za rapsberry','Set od 3 hladnjaka za rapsberry pi',18),(52,'CR 2032 baterija','3V baterija pločasta',2),(53,'Sklopke brodske razne','Vodootporne tipke',13),(54,'LCD 1602 driveri','Za 1602 driveri',12),(55,'GPS modul','GPS modul sumnjive kvalitete',17),(56,'Micro USB konektori muški','Micro USB konektori muški s kućištem i svime',4),(57,'Senzor vlage tla','Senzor vlage tla',8),(58,'Driver za senzor vlage tla','Driver za senzor vlage tla',8),(60,'14988 step motor driver','14988 step motor driver',15),(61,'Punte promjer 1mm','Punte promjer 1mm',11),(62,'Vide 3mm','razne vide od 3mm',11),(63,'Matice za vide od 3mm','Matice za vide od 3mm',11),(64,'Senzor težine ćelije','Ćelija od 50kg',8),(65,'LED diode UV','Ultra violet diode',16),(66,'Kondenzatori bipolarni 4700uF','Kondenzatori bipolarni 4700uF',7),(67,'PT 100 aplifier -50 do 50 celzijusa','Pojačalo za pt100 sondu 24 V ',8),(68,'PT 100 aplifier 0 do 200 celzijusa','Pojačalo za pt100 sondu 24 V ',8),(69,'RJ45 konektori','RJ45 konektori',4),(70,'RFID kartica i privjesak','RFID kartica i privjesak',17),(71,'RFID čitač','rifid čitač',17),(72,'220V ženski konektori','220V ženski konektori',4),(73,'Set PCB svrdla','Set PCB svrdla različitih veličina.Trenutna lokacija u trostrukom plastincnom ladicaru u sobi u najgornjoj ladici.',1),(74,'Rezač za staklo','Rezač za staklo.Trenutna lokacija u trostrukom plastincnom ladicaru u sobi u najgornjoj ladici.',1),(75,'Pila','Pila sa više različitih nastavaka',1),(76,'Upaljači survival benzinski','Survival Upaljač, gorivo Benzin, oblik ručne granate iz WW2. Trenutno se nalaze u trostrukom plastincnom ladicaru u sobi u najgornjoj ladici.',11),(77,'Elektroventil 12V DC','Elektroventil 12 V DC. Trenutno se nalaze u trostrukom plastincnom ladicaru u sobi u najgornjoj ladici.',13),(78,'Elektroventil 220V AC','Elektroventil 220V AC. Trenutno se nalazi u trostrukom plastincnom ladicaru u sobi u najgornjoj ladici.',13),(79,'Relej Plutajući Folat Switch','Relej plutajući, float switch, Max 20A, 12-24-32 VDC, ignition protected. Trenutno se nalazi u trostrukom plastincnom ladicaru u sobi u najgornjoj ladici.',13),(80,'NODEMCU Shield','Nodemcu protection board. Trenutna lokacija u trostrukom plastincnom ladicaru u sobi u najgornjoj ladici.',5),(81,'3.5mm audio jack muski 5m','3.5 mm audio jack muški oko 5 metara.Trenutna lokacija u trostrukom plastincnom ladicaru u sobi u najgornjoj ladici.',3),(82,'Fitilji','Fitilji mislim za zippo, nisu za petrolejku, promjer cca 3-4mm sa metalnom žicom unutra.Trenutna lokacija u trostrukom plastincnom ladicaru u sobi u najgornjoj ladici.',11),(83,'Baterije 1.5v AAA','baterije.Trenutna lokacija u trostrukom plastincnom ladicaru u sobi u najgornjoj ladici.',32),(84,'Plasticne spojnice za cijevi','Plasticne spojnice za cijevi, crne, mislim da su za vrtlarstvo, promjer cca 4-5mm.',11),(85,'Ethernet splitter','Ethernet spliter 3 interfacea:Line,Phone,DSL. Novi.Trenutna lokacija u trostrukom plastincnom ladicaru u sobi u najgornjoj ladici.',1),(86,'Tipkica 2pin','Tipkica, samovraćajuća',13),(87,'Konektor zenski klasicni za adaptere','Koristeni zenski konektor, pase na vecinu adaptera i punjača promjer cca 6mm',4),(88,'Super ljepilo','Superljepilo pattex.Trenutna lokacija u trostrukom plastincnom ladicaru u sobi u najgornjoj ladici.',11),(89,'MOSFET IRLZ44N','Mosfet tranzistor.Trenutna lokacija u trostrukom plastincnom ladicaru u sobi u najgornjoj ladici.',13),(90,'Konektor Čokolatin','Konektor na Vidu, može se zalemit na Pločicu.Trenutna lokacija u trostrukom plastincnom ladicaru u sobi u najgornjoj ladici.',4),(91,'LM 2596S DC-DC converter','LM2596S DC-DC konverter.\r\nInput voltage 40-35V, output 1.23V-30V.\r\n3A.Trenutna lokacija u trostrukom plastincnom ladicaru u sobi u najgornjoj ladici.',2),(92,'OLED display 0.96 inch','128x64. VCC SDA SCL za Arduino.Trenutna lokacija u trostrukom plastincnom ladicaru u sobi u najgornjoj ladici.',12),(93,'Set PCB svrdla 0.9mm','Set od 9 komada, PCB svrdla 0.9mm.Trenutna lokacija u trostrukom plastincnom ladicaru u sobi u najgornjoj ladici.',1),(94,'Fotopločica 75x100','Vetronit foto 75mm x 100mm.Trenutna lokacija u trostrukom plastincnom ladicaru u sobi u najgornjoj ladici.',19),(95,'Anti static narukvica','Anti static narukvica.Trenutna lokacija u trostrukom plastincnom ladicaru u sobi u najgornjoj ladici.',1),(96,'Senzor vlage tla V1.2','Kapacitivni senzor vlage tla.Trenutna lokacija u trostrukom plastincnom ladicaru u sobi u najgornjoj ladici.',8),(97,'DS18B20 temp senzor','Vodootporni trožilni, dužina kabla cca 1 metar.Trenutna lokacija u trostrukom plastincnom ladicaru u sobi u najgornjoj ladici.',8),(98,'Ventil Inox 1/2\"','Inox 304 kuglicni ventil, NPT navoj.Lokacija Toolbox u špajzi.',10),(99,'T spoj Zenski','Inox 304 1/2\" T spoj ženski, NPT navoj.Lokacija Toolbox u špajzi.',10),(100,'Inox spoj za cijev','Inox spoj, sa jedne strane se moze prikacit cijev promjera cca 8mm, a s druge strane ima muški 1/2\" NPT navoj.Lokacija Toolbox u špajzi.',10),(101,'Spoj za Inox cijev bez navoja','Spoj, s jedne strane ima sistem spajanja bakrene, inox ili bilo koje krute cijevi bez navoja, a s druge strane ima 1/2\" muški NPT navoj.Lokacija Toolbox u špajzi.',10),(102,'Muško-Muška inox spojnica','Musko muska inox spojnica, s obe strane ima 1/2\" muski NPT navoj.Lokacija Toolbox u špajzi.',10),(103,'L7805CV','L7805CV Regulator napona 7-35Vin->5Vout+Toplina.Lokacija Toolbox u špajzi.',2),(105,'IRF 540N MOSFET','Irf 540n mosfet.Lokacija toolbox u špajzi.',13),(106,'16MHz oscilatori','16MHz oscilatori.Lokacija toolbox u špajzi.',22),(107,'Piezzo komponenta','Piezzo komponenta, ne znam koliko Hz-a.Lokacija toolbox u špajzi.',1),(108,'8x8 LED panel','8x8 led panel.Lokacija toolbox u špajzi.',12),(109,'HR4988 Driver','Stepper motor driver sa pripadajucim hladnjakom.Lokacija toolbox u špajzi.',15),(110,'LED dioda 220V','Led dioda, ne znam koje jačine, ali neka jaka jer je predviđena za montažu na hladnjak.',16),(111,'Senzor pokreta Vibr','Senzor pokreta radi na principu kratkog spoja u slucaju vibracije.Lokacija toolbox u špajzi.',8),(112,'Set Žica za testnu plocicu','Set od 140 žica za testnu PCB pločicu. Svakakve dužine. Trenutna lokacija u trostrukom plastincnom ladicaru u sobi u najgornjoj ladici.',3),(113,'Pločica bakrena 70x100','Bakrena pločica 70x100.Trenutna lokacija u trostrukom plastincnom ladicaru u sobi u najgornjoj ladici.',19),(114,'Vetronit foto negativ 50x100','Pločica vetronit foto negativ dimenzije 50mmx100mm.Trenutna lokacija u trostrukom plastincnom ladicaru u sobi u najgornjoj ladici.',19),(115,'Kabel 220V AC dvožilni','Kabel za napajanje oldschool kakve imaju stari radio i tranzistori, dvožilni.Trenutna lokacija u trostrukom plastincnom ladicaru u sobi u najgornjoj ladici.',3),(116,'Kutija Osiguračka 12/24V','Kutija za autoosigurače za 4 trošila.Trenutna lokacija u trostrukom plastincnom ladicaru u sobi u najgornjoj ladici.',1),(117,'Auto upaljač utor ženski','12/24V autoupaljač utor ženski, za vanjsku upotrebu.Trenutna lokacija u trostrukom plastincnom ladicaru u sobi u najgornjoj ladici.',1),(118,'Buzzer 3-24VDC','Buzzer 3-24VDC.Trenutna lokacija u trostrukom plastincnom ladicaru u sobi u najgornjoj ladici.',1),(119,'TermoOtpornik 1kOhm','Thermistor 1kOmh MF52AT MF52 B 3950 NTC.Trenutna lokacija u trostrukom plastincnom ladicaru u sobi u najgornjoj ladici.',6),(120,'Shotkey Dioda 15SQ045','Šotki dioda 15 Ampera i 45 Volti MAX.Trenutna lokacija u trostrukom plastincnom ladicaru u sobi u najgornjoj ladici.',16);
/*!40000 ALTER TABLE `komponente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lokacije`
--

DROP TABLE IF EXISTS `lokacije`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lokacije` (
  `id` int(8) NOT NULL,
  `ime_lokacije` varchar(50) COLLATE cp1250_croatian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1250 COLLATE=cp1250_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lokacije`
--

LOCK TABLES `lokacije` WRITE;
/*!40000 ALTER TABLE `lokacije` DISABLE KEYS */;
INSERT INTO `lokacije` VALUES (1,'Nema'),(2,'A1'),(3,'A2'),(4,'A3'),(5,'A4'),(6,'A5'),(7,'B1'),(8,'B2'),(9,'B3'),(10,'B4'),(11,'B5'),(12,'C1'),(13,'C2'),(14,'C3'),(15,'C4'),(16,'C5'),(17,'D1'),(18,'D2'),(19,'D3'),(20,'D4'),(21,'D5'),(22,'E1'),(23,'E2'),(24,'E3'),(25,'E4'),(26,'E5'),(27,'F1'),(28,'F2'),(29,'F3'),(30,'F4'),(31,'F5');
/*!40000 ALTER TABLE `lokacije` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-31 14:12:29
