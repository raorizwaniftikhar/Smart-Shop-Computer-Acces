-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 13, 2016 at 04:58 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbgadget`
--
CREATE DATABASE IF NOT EXISTS `dbgadget` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbgadget`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Product` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`) VALUES
(12, 'Graphic Cards'),
(13, 'USB Drives'),
(14, 'Keyboards'),
(15, 'Mice'),
(16, 'Speakers'),
(17, 'Webcams'),
(19, 'Hard Drives & Storage'),
(21, 'Sound Cards'),
(22, 'Headsets'),
(23, 'Cables & Adapters');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `item` text NOT NULL,
  `amount` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `dateOrdered` varchar(100) NOT NULL,
  `dateDelivered` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `name`, `contact`, `address`, `email`, `item`, `amount`, `status`, `dateOrdered`, `dateDelivered`) VALUES
(1, 'Jimmy Lomocso', '09465795229', '049, Maracas, Lahug, Cebu City', 'jimmy.lomocso@gmail.com', '(2) Product 101, (1) Product 101, ', '600', 'confirmed', '09/23/14', '10/04/14'),
(2, 'a a', '09465795229', '049, Maracas, Lahug, Cebu City', 'jimmy.lomocso@gmail.com', '(1) Product 202, ', '100', 'confirmed', '10/03/14', '10/04/14'),
(3, 'Jimmy Lomocso', '09465795229', '049, Maracas, Lahug, Cebu City', 'jimmy.lomocso@gmail.com', '(10) wer, (10) Product 101, ', '300', 'confirmed', '10/03/14', '10/04/14 08:04:28 AM'),
(4, 'John Doe', '09465795229', '049, Maracas, Lahug, Cebu City', 'rjcantos_16@yahoo.com', '(5) Product 202, ', '100', 'confirmed', '10/04/14 12:02:57 AM', '10/04/14 09:31:08 PM'),
(5, 'Peter Paul Segura', '256-2842 / 233-6066', '049, Maracas, Lahug, Cebu City', 'deewylperez_03@yahoo.com', '(3) Product 202, (1) Product 202, ', '200', 'confirmed', '10/04/14 08:05:35 AM', '10/04/14 08:15:25 AM'),
(6, 'sdf sdf', '33', 'sdfsdf', 'a@yahoo.com', '(1) Product 101, ', '300', 'confirmed', '10/04/14 09:23:34 PM', '10/04/14 09:31:04 PM'),
(7, 'sdf sdf', 'sd33', 'sdf', 'sdf@yahoo.com', '(1) Product 101, ', '0', 'confirmed', '10/06/14 11:15:59 AM', '06/14/15 09:52:56 AM'),
(8, 'sdf dsf', '33', 'dsfsdfsdf', 'a@yahoo.com', '(1) wer, ', '0', 'confirmed', '10/18/14 11:34:45 AM', '06/14/15 09:52:38 AM'),
(9, 'john hohn', '234', 'dsdfdg', 'a@yahoo.com', '(1) Product 202, ', '100', 'confirmed', '06/14/15 09:53:36 AM', '06/14/15 09:53:56 AM'),
(10, 'a a', 'e424', 'dsdfdg', 'a@yahoo.com', '(1) Product 202, (2) Product 101, ', '400.5', 'confirmed', '06/14/15 10:02:11 AM', '04/13/16 12:15:55 AM'),
(11, 'Affan Khalid', '03236210499', 'Arslan House, Shalimar Colory, Boson Road, Multan', 'affangta@gmail.com', '(1) Sentey GS-3901 Gaming Mouse, (1) VersionTech Blue EACH G2000 Professional 3.5mm PC LED Light Gaming Bass Stereo Noise Isolation Over-, (1) Cable Matters 2 Pack, SuperSpeed USB 3.0 Type A to Micro-B Cable in Black 3 Feet, ', '114', 'confirmed', '04/13/16 12:13:13 AM', '04/13/16 07:30:20 PM');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `imgUrl` text NOT NULL,
  `Product` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `Price` int(11) NOT NULL,
  `Category` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=148 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ID`, `imgUrl`, `Product`, `Description`, `Price`, `Category`) VALUES
(86, '71xJdSrAPQL._SL1200_.jpg', 'EVGA GeForce GTX 960 2GB', 'Base Clock: 1279 MHz / Boost Clock: 1342 MHz Memory Clock: 7010 MHz Effective CUDA Cores: 1024 Memory Detail: 2048MB GDDR5', 200, 'Graphic Cards'),
(87, '51TDV1uuVNL.jpg', 'MSI NVIDIA GeForce GTX 750 Ti OC 2GB GDDR5', 'Core Clock: 1085 MHz (OC Mode); 1059 MHz (Gaming Mode); 1020 MHz (Silent Mode) Video Memory: 2GB GDDR5, Memory Interface: 128-bit', 129, 'Graphic Cards'),
(88, '61JYwEFnYnL._SL1000_.jpg', 'Gigabyte AMD Radeon R7 240 GDDR3-2GB', 'OC Edition - Core Clock: 900 MHz(Std 780 MHz) Powered by AMD Radeon R7 240 GPU Integrated with the first 2048MB DDR3 memory and 128-bit memory interface', 63, 'Graphic Cards'),
(89, '515cQLaIpjL.jpg', 'ASUS R7360-OC-2GD5-V2', '1070 MHz engine clock for better performance and outstanding gaming experience. Dual fan design provides 2X greater air flow and 3X quieter performance. Auto-Extreme Technology with Super Alloy Power II delivers premium aerospace-grade quality and reliability.', 114, 'Graphic Cards'),
(90, '61JZGK6L--L._SL1500_.jpg', 'SanDisk Cruzer CZ36 32GB USB 2.0 Flash Drive', 'Take it all with you on reliable SanDisk USB flash drives Transfer with confidence when moving images and other files from PC to PC or other CE devices', 10, 'USB Drives'),
(91, '61QGF0DVSOL._SL1500_.jpg', 'SanDisk Ultra Fit 128GB USB 3.0 Flash Drive', 'Read speeds up to 150MB/s Write up to 15X faster than standard USB 2.0 drives', 31, 'USB Drives'),
(92, '81bdtMC81dL._SL1500_.jpg', 'PNY Turbo 32GB USB 3.0 Flash Drive', 'Transfer speeds approximately 10 times faster than standard PNY USB 2.0 Flash Drives Store and transfer large files faster than ever with USB 3.0 technology Allows for quick and easy transfer of all content', 12, 'USB Drives'),
(93, '71V6hVVqPXL._SL1500_.jpg', 'Cable Matters 2 Pack, SuperSpeed USB 3.0 Type A to Micro-B Cable in Black 3 Feet', 'High performance Micro USB 3.0 cable connects a portable external USB 3.0 hard drive to a computer for speedy file transfer or synchs and charges Samsung smartphones or tablets equipped with the USB 3.0 Micro-B port', 12, 'Cables & Adapters'),
(94, '81kc+FSv18L._SL1500_.jpg', 'StarTech USB 3.0 to 2.5', 'Connect a 2.5in SATA hard drive to your computer using a portable cable with UASP Support Compatible with USB 3.0 computer systems such as Dell Optiplex & Apple Mac & MacBook ', 12, 'Cables & Adapters'),
(95, '71XEJQjHjuL._SL1500_.jpg', 'WD Blue 1TB Desktop Hard Disk Drive - 7200 RPM SATA 6 Gb/s', 'IntelliSeek: Calculates optimum seek speeds to lower power consumption, noise and vibration. Data LifeGuard: Advanced algorithms monitor your drive continuously so it stays in optimum health.', 56, 'Hard Drives & Storage'),
(96, '81SCVRx39iL._SL1500_.jpg', 'Seagate 1TB Desktop HDD SATA 6Gb/s', 'Ideal for everyday desktop and computing storage 1TB capacity stores 120 HD video, or 200,000 photos, or 250,000 songs 7200 RPM', 47, 'Hard Drives & Storage'),
(97, '61p3IOdEFuL._SL1200_.jpg', 'VersionTech Blue EACH G2000 Professional 3.5mm PC LED Light Gaming Bass Stereo Noise Isolation Over-', 'High precision 50mm magnetic neodymium driver, bring you vivid sound field, sound clarity, sound shock feeling, capable of various games.', 24, 'Headsets'),
(98, '61AJC29vb3L._SL1000_.jpg', 'SADES SA-708 Stereo Gaming Headphone Headset with Microphone', 'EMI/RFI Shielding to prevent electromagnetic/radio-frequency interference, ensuring you a good mood when playing games Unique, well shaped and designed gaming headset, with foldable hidden microphone', 18, 'Headsets'),
(99, '81PmdJu6XYL._SL1500_.jpg', 'Azio Levetron L70 LED Backlit Gaming Keyboard', 'Blue Color Backlight Volume Adjustment Knob Multi-Key Rollover Windows Start Key Lock/Unlock Detachable Palm Rest', 22, 'Keyboards'),
(100, '31+GD7L-YfL.jpg', 'Tripp Lite Standard Power Extension Cord 10A, 18AWG', ' Extends a power cord an additional 15ft. NEMA 5-15R to NEMA 5-15P 18AWG x 3C, SJT, 10A, 120V ROHS compliant Lifetime limited warranty', 10, 'Cables & Adapters'),
(101, '414vu76c+YL.jpg', 'StarTech.com 6 ft Power Extension Cord - NEMA 5-15R to NEMA 5-15P', ' Extend your power cord by 6ft 6ft 5-15 Extension Cord / 6 ft NEMA Extension Cord / AC Power Extension Cord / 6 feet Power Extension Cable / NEMA 5-15R to NEMA 5-15P Saves space and conveniently connects large power adapters so you can maximize all your power or surge strip outlets', 6, 'Cables & Adapters'),
(102, '41hrHpAk-iL.jpg', 'StarTech.com MU12MF 12 feet PC Speaker Extension Audio Cable', ' Position your Receiver/ amplifier an additional 12 feet away from your computer or portable audio device Replace worn-out or missing speaker audio cables with this high quality, 12ft PC Speaker Extension Audio Cable', 5, 'Cables & Adapters'),
(103, '81TzXrP6m9L._SL1500_.jpg', 'Cable Matters (3 Pack) 15 Pin SATA Power Extension Cable 8 Inches', ' HANDY EXTENSION male to female SATA power cable connects a computer power supply to Serial ATA HDD, SSD, optical drives, DVD burners, and PCI cards; Connect directly or extend an existing SATA cable with this cost-effective 3-pack SATA extension cables REDUCE STRESS AND STRAIN on the connectors of SATA drives or a computer motherboard by connecting to an existing cable or replacing a shorter cable with a better length for internal cable management; Eliminate the risk of damaging internal connectors that are difficult to reach and unplug', 8, 'Cables & Adapters'),
(104, '41s6CHWvHCL.jpg', '3-Pin Fan Extension Cable (12")', ' 3-pin male connector on one end 3-pin female connector on the other end 12" length', 4, 'Cables & Adapters'),
(105, '4171-oB1okL.jpg', 'StarTech.com MXT101HQ 6-Feet Coax High Resolution VGA Monitor Extension Cable', ' Ferrite core eliminates EMI interference Ideal for high resolution monitors (1024x768 and above) Triple-coaxial + twisted-pair wire for crystal clear display', 11, 'Cables & Adapters'),
(106, '516ZxIU1wPL._SL1000_.jpg', 'Fullink VGA Monitor Y Splitter 1 Foot -2 Pack', ' The VGA monitor splitter splits a VGA input (also known as RGB, DB-15, DE-15, HD-15, HDB-15 or D-sub 15) to two VGA outputs; Two VGA cables (sold separately) are required Convert a male VGA connector into two female VGA ports with this male to female VGA splitter', 9, 'Cables & Adapters'),
(107, '612gg-uSy4L._SL1001_.jpg', 'UGREEN CAT6 FTP Ethernet RJ45 Extension Cable', ' Standard: FTP Cat 6 with shielding, compliant with the TIA/EIA 568-C.2 standard Provides universal connectivity for LAN network components such as PCs, computer servers, printers, routers, switch boxes, network media players, NAS, VoIP phones, PoE devices, and more', 10, 'Cables & Adapters'),
(108, '61cZw8hzYJL._SL1000_.jpg', 'Gigabyte AMD Radeon HD 7950 3GB GDDR5 DVI-I/HDMI/2x Mini-Displayport PCI-Express Graphic Card', ' Core Clock: 900MHz - Memory Clock: 5000MHz Features DVI-I/HDMI/2x mini-Displayport outputs with HDCP protection. Supports AMD Eyefinity/EyeSpeed/CrossFire/Avivo HD technologies.', 245, 'Graphic Cards'),
(109, '816A9D5LkQL._SL1500_.jpg', 'ZOTAC GeForce GTX 750Ti 2GB GDDR5 PCI Express 3.0', ' 640 processor cores 128-bit memory bus Engine clock (base): 1033 MHz, (boost): 1111 MHz Memory clock: 5400 MHz PCI Express 3.0 (compatible with 1.1) 1 x DL-DVI 1 x HDMI 1 x Display Port VGA (with included adapter) Triple simultaneous display capable HDCP compliant ED 480p HD 720p HD 1080i Full HD 1080p Quad Full HD (4K)', 104, 'Graphic Cards'),
(110, '81LoxMao78L._SL1417_.jpg', 'ViewMax NVIDIA GeForce GT 730 4GB GDDR3 128-Bit PCI Express ', ' ViewMax NVIDIA GeForce GT 730 4GB GDDR3 128 Bit PCI Express (PCIe) DVI Video Card HDMI & HDCP Support 96 Processor cores, Fast GDDR3 128-bit memory bus, Engine clock: 900 MHz, Shader clock: 1667 MHz, Memory clock: 1600 MHz, PCI Express 2.0 (compatible 1.1) WARRIOR EDITION for Safe Overclock Experience', 85, 'Graphic Cards'),
(111, '71QIyysk3uL._SL1200_.jpg', 'EVGA GeForce 210 Passive 1024 MB DDR3 PCI Express 2.0 DVI/HDMI/VGA Graphics Card', ' Base Clock: 520 MHz Memory Clock: 1200 MHz Effective CUDA Cores: 16 Memory Detail: 1024MB DDR3 Memory Bit Width 64 Bit / Memory Bandwidth: 9.6 GB/s', 29, 'Graphic Cards'),
(112, '716MMf60d7L._SL1429_.jpg', 'MSI Computer NVIDIA GeForce GT 740 4GB DDR3 VGA/DVI/HDMI PCI-Express Video Card', ' Chipset: NVIDIA GeForce GT 740 Core Clock: 1006 MHz Video Memory: 4GB DDR3', 99, 'Graphic Cards'),
(113, '816nywlhsZL._SL1200_.jpg', 'EVGA GeForce GTX 980 4GB GAMING,Silent Cooling Graphics Card', ' Base Clock: 1126 MHZ Boost Clock: 1216 MHz Memory Clock: 7010 MHz Effective CUDA Cores: 2048 Bus Type: PCI-E 3.0 Memory Detail: 4096MB GDDR5 Memory Bit Width: 256 Bit- Memory Speed: 0.28ns Memory Bandwidth: 224.3 GB/s- Height: 4.376in - 111.15mm Length: 10.5in - 266.7mm Width: Dual Slot', 616, 'Graphic Cards'),
(114, '81DsBcY7DeL._SL1500_.jpg', 'WD Elements 2TB USB 3.0 Portable Hard Drive', ' Ultra-fast USB 3.0 data transfers. Massive capacity For Mac compatibility this Hard Drive requires reformatting. Refer to Application Guide for guidance on this Free trial of WD SmartWare Pro auto and cloud backup software WD quality and reliability', 84, 'Hard Drives & Storage'),
(115, '61SiM3NbjrL._SL1024_.jpg', 'Silicon Power 1TB Rugged Armor A60 Shockproof / Water-Resistant 2.5-Inch USB 3.0 Military Grade Port', ' Shockproof - Drop protection meets US Military (MIL-STD-810G) Standards Water-Resistant - IPX4 Splash Resistant from all angles for at least 5 minutes SuperSpeed USB 3.0 - High transferring rate up to 5Gb/sec and backward compatible with USB 2.0', 58, 'Hard Drives & Storage'),
(116, '5199WAr8BZL._SL1000_.jpg', 'SanDisk SSD Plus 240GB 2.5-Inch SDSSDA-240G-G25', ' Sequential Read (up to) 520MB/s Sequential Write (up to) 350MB/s Endurance:1.75M hrs MTBF', 64, 'Hard Drives & Storage'),
(117, '71K15cYF8uL._SL1500_.jpg', 'Samsung 850 EVO 500GB 2.5-Inch SATA III Internal SSD ', ' Capacity: 500GB Form Factor: 2.5 inch Interface: SATA 6Gb/s (Compatible with SATA 3Gb/s & SATA 1.5Gb/s) NAND Flash: 32 Layer 3D V-NAND Thickness: 7.0 mm', 149, 'Hard Drives & Storage'),
(118, '81V3DV5adrL._SL1500_.jpg', 'GW SADES SA928 Pro Headset', 'SA928 game headset has high-precision sound source position and super shocking sound effects, it is universal 3 in 1 gaming headset', 36, 'Headsets'),
(119, '71YANUmEk0L._SL1500_.jpg', 'SADES SA810 3.5mm Wired Stereo Gaming Headset', ' Primary kind of gaming headset. 3.5mm Plug Unique style of shape, as well as hidden microphone for stylish display Premier SADES-AFV volume control with extra Mic-muted function', 19, 'Headsets'),
(120, '41xk+60EIhL.jpg', 'Logitech G230 Stereo Gaming Headset', ' High Quality Stereo Sound for Gaming Soft and Durable Cloth Earpads, Lightweight Design Folding, noise-cancelling boom mic: Reduces background noise for clear voice pick up and rotates up and out of the way', 45, 'Headsets'),
(121, '61L2NFDBxfL._SL1200_.jpg', 'Jeecoo I8 LED Over-ear Headphones with Microphone Stereo Gaming Headset', ' High precision 40mm magnetic neodymium driver, bring you vivid sound field, sound clarity, sound shock feeling, capable of various games. Splendid ambient noise cancelling. Earmuffs used with skin-friendly leather material, and super soft Over-ear pads', 17, 'Headsets'),
(122, '81BIz09LIUL._SL1500_.jpg', 'Logitech Keyboard K120', 'Low-profile keys give you a quiet, comfortable typing experience', 15, 'Keyboards'),
(123, '818nxWlvBeL._SL1500_.jpg', 'Microsoft Natural Ergonomic Keyboard 4000', ' Cutting-edge design and improved performance for maximium productivity E-mail and Internet hot keys', 42, 'Keyboards'),
(124, '811aHIgqynL._SL1500_.jpg', 'Logitech Wireless Keyboard K360', 'Comfortably compact: Great for tight workspaces-the standard layout', 25, 'Keyboards'),
(125, '51DLhdFI89L.jpg', 'AULA LED Backlit Gaming Keyboard', ' Special three color LED backlight, every backlight has four modes to adjust to Laser carving characters, cool backlight feature Non-slip design for the best gaming performances and comfort', 22, 'Keyboards'),
(126, '71X31730UxL._SL1000_.jpg', 'DBPOWER DB-A8 Mechanical Feel Gaming Keyboard', 'High Quality. This is a mechanical feel gaming keyboard, not the real mechanical keyboard, but tones clear, feels good, user experience is similar to mechanical keyboard.', 28, 'Keyboards'),
(127, '71rQ3vvqm1L._SL1500_.jpg', 'Sentey GS-3901 Gaming Mouse', 'Up to 8200 DPI â˜… Avago 9800 Chipset â˜… Acceleration Speed 30G - 9 + 2 Buttons + 1 DPI Selector â˜… Omron micro switches provide crisp, firm clicks', 24, 'Mice'),
(128, '71Wfg0MiZAL._SL1500_.jpg', 'HAVIT HV-MS672 Ergonomic Wired Mouse, 2400 DPI', ' Precision control with 4 DPI settings: 800 / 1200 / 1600 / 2400 Ergonomic design, fits naturally in your hand;Support operating system:Windows 7/8/10 and Mac OS;No function of programming', 8, 'Mice'),
(129, '41evJLPH8RL.jpg', 'YCCTEAM 4000 DPI 10 Buttons Gaming Mouse', 'Perfect Hand Feel: Gaming mouse perfectly snugly fit under your palm; the ergonomic shape of the mouse gives gamers the most comfortable gaming experience ever, especially during the most testing of battles.', 26, 'Mice'),
(130, '51dsVLrum+L._SL1024_.jpg', 'Gaming Mouse, HCE 5 Buttons LED USB Wired Mouse', ' No Additional Software or Driver Installation is Needed,Plug and Play. 600~1000~1600 DPI Switch for Quick on-the-fly DPI Adjustment,durable braided cable. 600~1000~1600 DPI Switch for Quick on-the-fly DPI Adjustment,durable braided cable.', 13, 'Mice'),
(131, '41fmO0GIJxL.jpg', 'A-jazz Green Hornet Computer/Laptop High Precision Gaming Mouse ', ' Ultra-precise Scroll Wheel High Quality, Compact Design and Measurable Weight Buttons: 6 buttons with scroll wheel (Two Side-Buttons, DPI Switch)', 12, 'Mice'),
(132, '51SapdBWjzL.jpg', 'Emarth 4800 DPI Wired Gaming Mouse', 'PERFECT HAND FEEL: This Emarth Gaming mouse snugly fit under your palm; the ergonomic design gives gamers the most comfortable gaming experience ever, especially during the most testing of battles.', 23, 'Mice'),
(133, '81h9Yl7QdbL._SL1500_.jpg', 'Creative Sound Blaster Audigy FX PCIe 5.1 Sound Card', ' Easily converts the PC into a cinematic entertainment system by providing a compelling 5.1 surround sound Advanced Audio Processing with SBX Pro Studio, a suite of Sound Blaster audio processing technologies that let you bring out the best in your audio', 34, 'Sound Cards'),
(134, '41oBhkKQmsL.jpg', 'ASUS HEADPHONE AMP 5.1 PCI SOUND CARD', ' Form Factor: Internal Platform Support: PC', 34, 'Sound Cards'),
(135, '81kQAMr6uJL._SL1500_.jpg', 'Creative Sound Blaster Audigy PCIe RX 7.1 Sound Card', ' Advanced chipset is designed to process the legendary EAX reverb engine for powerful enhanced audio Immerse yourself in full cinematic 7.1 multi-channel audio, perfect for games, movies and music', 50, 'Sound Cards'),
(136, '81lEoDL-JeL._SL1500_.jpg', 'Cyber Acoustics 30 Watt Powered Speakers with Subwoofer', ' Three-piece speaker system with two satellite speakers and subwoofer 2-Inch magnetically shielded satellite speakers; 5.25-Inch subwoofer Acoustic balanced wood cabinet subwoofer', 39, 'Speakers'),
(137, '41aXw5OM6KL.jpg', 'Logitech Speaker System Z313', ' The control pod makes it easy to control volume and headphone controls. You can fill your room with big, balanced sound (25 watts). The compact subwoofer fits into tight spaces and delivers deeper bass when you want to feel the beat.', 49, 'Speakers'),
(138, '81-diOS6V+L._SL1426_.jpg', 'Logitech 3.5mm Jack Compact Laptop Speakers', ' Rich and strong stereo sound with 5 watts of power Compact, low-profile design ideal for desks with limited space Convenient on-speaker volume and power controls, headphone jack, plus 3.5mm jack input for your MP3, DVD or CD player', 19, 'Speakers'),
(139, '51ycVokoY3L.jpg', 'Genius 3-Way Hi-Fi Wood Speakers', ' Total output power 20 watts (RMS) Ultra-rigid MDF board cabinet 1-Inch tweeter for soft and smooth treble sound Two 2-Inch woofer drivers for extended bass', 55, 'Speakers'),
(140, '61lir8CLAvL._SL1000_.jpg', 'Axis Gs-128 Multimedia Speakers', ' Connects To Any Computer 0.5W Per Channel Rms Power 2.25" Driver', 16, 'Speakers'),
(141, '61jBXogiB4L._SL1024_.jpg', 'Arion Legacy AR506 AC Powered Speaker System with Dual Subwoofers', ' Dual 5 inch subwoofers deliver mind rattling bass you can feel. Large number of tweeters and woofers for accurate sounds. All wood subwoofer and satellite cabinets. Wired control pod with volume control, mute button and headphone jack - for desktop PC users.', 67, 'Speakers'),
(142, '41TBmxxd0GL.jpg', 'Lucifer 256GB Full Metallic USB 2.0 Flash Drive with Keychain', ' Fair Price with Genuine Capacity and Good Quality Interface:USB 2.0 Works on all Major Operating Systems: Windows, iOS,Linux Low Power Consumption, durable solid-state storage', 20, 'USB Drives'),
(143, '619ohMDrTkL._SL1024_.jpg', 'Silicon Power 32GB Blaze B30 USB 3.0 Swivel Flash Drive', ' USB 3.0 Super Speed Swivel Design - Four-Point Positioning Technology Stylish Look - Classic Diamond-cut Pattern Software - Recuva File Recovery Free Download Best Warranty - Lifetime Manufacturer Warranty', 9, 'Graphic Cards'),
(144, '612+bxrLyZL._SL1500_.jpg', 'Kingston Digital 32GB Data Traveler 3.0 USB Flash Drive', ' Compliant - with USB 3.0 specifications Dual Compatibility - USB 3.0 connectivity; backwards compatible with USB 2.0 Practical - cap protects the USB plug Backed by a five-year warranty, free technical support and legendary Kingston reliability', 8, 'USB Drives'),
(145, '51EObkLkaPL.jpg', 'Logitech HD Pro Webcam C920, 1080p Widescreen Video Calling', ' Video chat in Full HD 1080p video on Skype or stream yourself gaming in fluid HD 720p on twitch.tv Record vibrant, true-to-life HD 1080p video clips that capture the smallest details Integrated H.264 compression provides more fluid videos in Full HD and fast, smooth uploads', 94, 'Webcams'),
(146, '41akvft5mjL.jpg', 'U19-A Night Vision Webcam 12.0MP, Microphone Built In', ' Supports multiple instant messengers like Yahoo, MSN, Skype, etc. Stable connection to your laptop lid or LCD or CRT monitor Funky and sleek design,Offers crisp and clear images Has 1/7 inch 640x480 VGA CMOS sensor GC0307', 3, 'Webcams'),
(147, '41J-52s5xgL.jpg', 'Microsoft Q2F-00013 USB 2.0 LifeCam Webcam', ' 1080p HD widescreen sensor - For superior sharpness and image quality. Advanced high-precision optics - Auto focus, high-precision glass element lens Clear, high-quality video - TrueColor Technology automatically delivers bright and colorful video, in virtually all lighting conditions. ClearFrame Technology for smooth, detailed video', 22, 'Webcams');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'administrator', 'bobby'),
(2, 'admin', 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
