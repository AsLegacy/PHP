-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 03 Juin 2018 à 02:34
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `ecomme`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(24) NOT NULL,
  `password` varchar(24) NOT NULL,
  `last_log_date` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `last_log_date`) VALUES
(1, 'tariq', 'zaari1', '2018-05-30');

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `login` varchar(12) NOT NULL,
  `password` varchar(8) NOT NULL,
  `name` varchar(40) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(10) NOT NULL,
  `security` text NOT NULL,
  `securityanswer` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `pin` varchar(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mobile` (`mobile`,`email`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `customer`
--

INSERT INTO `customer` (`login`, `password`, `name`, `id`, `mobile`, `security`, `securityanswer`, `email`, `address`, `city`, `state`, `pin`) VALUES
('tariq', 'zaari18', 'Tariq Zaari', 1, '0677484848', 'What is your nick name?', 'birdy', 'tariq.zaari@gmail.com', 'hey Najed ', 'khenifra', 'khenifra', '54000');

-- --------------------------------------------------------

--
-- Structure de la table `customer_cart`
--

CREATE TABLE IF NOT EXISTS `customer_cart` (
  `cartid` int(11) NOT NULL AUTO_INCREMENT,
  `productid` int(11) NOT NULL,
  `customerid` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `date_added` date NOT NULL,
  PRIMARY KEY (`cartid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `details` text NOT NULL,
  `category` varchar(16) NOT NULL,
  `subcategory` varchar(16) NOT NULL,
  `date_added` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_name` (`product_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `products`
--

INSERT INTO `products` (`id`, `product_name`, `price`, `details`, `category`, `subcategory`, `date_added`) VALUES
(1, 'Serveurs lames', 38660, 'Marque et ModÃ¨le :De marque mondialement connue;\r\nType/technologie :Blade;\r\nNombre de CPU Fournis : 2 CPU;\r\nArchitecture/ Technologie des processeurs :64 bits IntelÂ® XeonÂ® E5-2600 Family Sandy Bridge-EP;\r\nFrÃ©quence minimale : 2.6 GHz;\r\nCache par processeur :20 MB par processeur;\r\nNombre de coeurs par processeur	: 8 coeurs;\r\nRAM installÃ© :32 Go ECC, DDR3 RDIMM 1600MHz;\r\nRAM supportÃ© :Min 512 Go;\r\nPorts rÃ©seau par Blade	:4 x ports 1Gbps, 2 Ports 10Gbps;\r\nPort USB :Minimum 1 ports USB;\r\nSystÃ¨me Raid supportÃ© :RAID 0 et 1;\r\n', 'Mat_Info', '', '2018-06-02'),
(2, 'Clavier', 80, 'Un clavier d''ordinateur est une interface homme-machine munie de touches permettant Ã  l''utilisateur d''entrer dans l''ordinateur une sÃ©quence de donnÃ©es...', 'Mat_Info', '', '2018-06-02'),
(3, 'CamÃ©ra fixe IP 5 MÃ©gapixel', 3900, 'â€¢Montage objectif en CS\r\nâ€¢Capteur : Capteur CMOS Exmor Ã  balayage progressif 1/3"\r\nâ€¢Nombre de pixels effectifs (H x V) : 5 MÃ©gapixel\r\nâ€¢Vitesse d''obturation Ã©lectronique : De 1 Ã  1/10000 s\r\nâ€¢ContrÃ´le de gain : Auto (3 niveaux)\r\nâ€¢ContrÃ´le de l''exposition : Auto, Compensation EV, Obturation lente auto\r\nâ€¢Mode de balance des blancs : Auto (ATW, ATW-Pro), PrÃ©rÃ©glÃ©, Simple pression WB, Manuel\r\nâ€¢Type dâ€™objectif : Objectif varifocal\r\nâ€¢Rapport de zoom : Optique 2,9X (x2 avec zoom numÃ©rique)\r\nâ€¢Angle de visualisation horizontal : 85,4 Ã  31,2 degrÃ©s\r\nâ€¢Longueur focale : f=3,1 Ã  8,9 mm\r\nâ€¢Ouverture : F1.2 (grand angle), F2.1 (tÃ©lÃ©)\r\nâ€¢Distance minimale des objets : 300 mm\r\nâ€¢Power Focus : Easy Focus\r\nâ€¢Power Zoom : Easy Zoom\r\nâ€¢Illuminateurs infrarouge : Longueur d''onde : 850 nm (Typique), LED infrarouge :\r\nâ€¢27 pcs\r\nâ€¢Format de compression vidÃ©o : H.264, MPEG-4, JPEG\r\nâ€¢Streaming des codecs : Double transmission\r\nâ€¢La camÃ©ra devra pouvoir gÃ©rer simultanÃ©ment un flux H.264 Ã  20 ips (1280 x 1024) / 30 ips (1280 x 720), MPEG-4 Ã  25 ips (1280 x 1024) / 30 ips (1280 x 720) et JPEG Ã  30 ips (1280 x 1024) / 30 ips (1280 x 720)\r\nâ€¢DÃ©tection intelligente des mouvements avec filtres de post-traitement intÃ©grÃ©s\r\nâ€¢DÃ©tection intelligente d''objets\r\nâ€¢Filtre de rÃ¨gles\r\nâ€¢Protocoles rÃ©seau : IPv4, IPv6, TCP, UDP, ARP, ICMP, IGMP, HTTP, HTTPS, FTP(client/serveur), SMTP, DHCP,DNS,NTP, RTP/RTCP, RTSP, SNMP (MIB-2)\r\nâ€¢ConformitÃ© ONVIF\r\nâ€¢Authentification : IEE802.1x\r\nâ€¢SystÃ¨me de transmission : NTSC/PAL\r\nâ€¢Rapport S/B : SupÃ©rieur Ã  50 dB\r\nâ€¢Ethernet : 10BASE-T / 100BASE-TX (RJ-45)\r\nâ€¢Emplacements pour cartes : Carte CF x 1\r\nâ€¢Sortie vidÃ©o analogique : BNC x 1, RCA x 1\r\nâ€¢EntrÃ©e capteur : 1\r\nâ€¢Sortie dâ€™alarme :2\r\nâ€¢EntrÃ©e de microphone externe : Mini-jack (monaural), EntrÃ©e micro/EntrÃ©e ligne : 2,5 V CC entrÃ©e alimentÃ©e\r\nâ€¢Sortie audio : Mini-jack (monaural), Niveau de sortie max. : 1 Vrms\r\nâ€¢Alimentation : PoE , 24 V CA, 12 V CC\r\nâ€¢Fonction WDR (Wide Dynamc Range)\r\nâ€¢Etanche : IP66 - Antivadalisme, rÃ©sistant aux impacts : IP66\r\nâ€¢SDK mis Ã  disposition pour toute application de dÃ©veloppement ou intÃ©gration\r\n', 'Cam_Surv', '', '2018-06-02'),
(4, 'Transceiver (Mono-mode) SFP / Ethernet', 1920, 'ï‚· RÃ©seaux compatibles : Auto nÃ©gociation 10/100 Mbps\r\nï‚· Vitesse max. de transfert de donnÃ©es : 1,25 Gb/s\r\nï‚· Distance de transfert max : 20 km\r\nï‚· Type de fibre optique : Monomode\r\nï‚· Mode de fonctionnement de la fibre optique : Full/Half duplex\r\nï‚· TempÃ©rature de fonctionnement : -10Â°C ~ 55Â°C\r\nï‚· HumiditÃ© : HumiditÃ© relative de 10~90 %\r\nï‚· Configurations du systÃ¨me et du cÃ¢blage : Port SFP conforme MSA (Multi-\r\nSourcing Agreement).\r\nï‚· branchement Ã  chaud sans interrompre le trafic rÃ©seau ou avoir Ã  redÃ©marrer\r\nun pÃ©riphÃ©rique.\r\nï‚· compatible avec la plus part des systÃ¨mes de vidÃ©osurveillance', 'Mat_Info', '', '2018-06-02'),
(5, 'Agrafeuses 8/4', 75, 'Une agrafeuse est un outil permettant de fixer, Ã  l''aide d''une agrafe, des objets de faible Ã©paisseur, entre eux ou sur un support.', 'Four_Bur', '', '2018-06-02'),
(6, 'Arrache Agrafe', 6, 'Retrouvez nos arraches clous et arraches agrafes pour tapissier ...', 'Mat_Info', '', '2018-06-02'),
(7, 'Blanco Stylo', 10, 'Pour vos corrections sur papier, utilisez nos correcteurs liquide en stylo correcteur ou blanco Ã  pinceau. Vous pourrez ainsi corriger facilement tout ce que vous avez Ã©rroner.', 'Four_Bur', '', '2018-06-02');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
