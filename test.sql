-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2020 at 05:52 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `code` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `code`, `image`, `price`) VALUES
(1, 'The Madame Alfred Carriere rose', 'The Madame Alfred Carriere rose was introduced in 1879. It is also known as a French Antique Rose. This is an amazing and easy to grow fragrant rose climber which will grow to a height of 25 feet. But it must be pruned regularly in early winter so that you don\'t end up with all the flowers on the top.The flowers are large, 4 inches across with 30 petals or more, and are white suffused with pink. It is shade tolerant and does best facing south.It has the wonderful old-fashioned rose fragrance and blooms repeatedly from spring until mid autumn. The canes are flexible, making it possible to train it over just about anything you want.', 'Flower1', 'images/flower image 1(1).PNG', 20.79),
(2, 'Jasminum sambac', 'Jasminum sambac (Arabian jasmine) or Sambac jasmine is a species of jasmine native to a small region in the eastern Himalayas in Bhutan and neighbouring Bangladesh, India and Pakistan. It is cultivated in many places, especially across much of South and Southeast Asia. It is naturalised in many scattered locales: Mauritius, Madagascar, the Maldives, Cambodia, Indonesia, Christmas Island, Chiapas, Central America and the Lesser Antilles.', 'flower2', 'images/flower image 5 .jpg', 20.00),
(3, 'Albertine.Hybrid Wichurana Rambling Rose.', 'This highly fragrant Wichurana Rambler is guaranteed to stun with its sheer beauty.It only flowers once a year for a month or so.The flowers are excellent for cutting up to 3 inches across, with beautiful clusters of pink blooms which are cup-shaped with gold at the centres.It will grow to 20 feet so it\'s another for the gazebo for coffee time,an arbor, a huge trellis on a wall, or just anywhere where you can see and smell it.It has very vigorous growth with flexible reddish canes,it is quite thorny -but with its delightful arching habit. It will flower in late spring to the beginning of summer for about 6 weeks, with a strong tea rose scent.', 'flower3', 'images/flower image 2.jpg', 21.79),
(4, 'Gertrude Jekyll(English Rose)', 'A highly fragrant climbing rose by David Austin with the scent of the true old fashioned rose (Damask). It will grow to a height of 10 feet. Gertrude Jekyll was a famous garden designer whose influence is still around today. The foliage is mid to dark green. It has from about 80 to well over 100 petals on the beautiful bright pink blooms which are 4 inches or more across when fully open and blooms in clusters of the true English Rose rosette shape. The flowering period is throughout summer and autumn. Developed in 1986.', 'flower4', 'images/flower image 6.jpg', 30.00),
(5, 'Grapes', 'A grape is a fruit, botanically a berry, of the deciduous woody vines of the flowering plant genus Vitis. Grapes can be eaten fresh as table grapes or they can be used for making wine, jam, grape juice, jelly, grape seed extract, raisins, vinegar, and grape seed oil.', 'fruits1', 'images/img-pro-03.jpg', 8.24),
(6, 'Mango Tree(Mangifera indica)', 'The mango tree grows in tropical climates. Extended exposure to temperatures below 30°F can kill or severely damage a mango tree, so in the U.S. they are only able to grow in the southernmost portions of Florida and California. Fortunately,mangos are cultivated all around the tropical regions of the globe.A mango tree can grow quite large, reaching a height of 100 feet or more with a canopy of 35 feet or more. The large leaves are leathery, 5 to 16 inches in length, and remain on the tree for a year or more. Flowers are produced in terminal panicles or clusters 4 to 16 inches long. Each flower is small with white petals and a mild sweet aroma.A mango fruit tree in full flower is a beautiful sight indeed.', 'fruits2', 'images/fruits 1 (3).jpg', 25.00),
(7, 'Sweet Oranges (malta)', 'Malta is citrus fruit grown in India. It is commonly called as sangtra. It occupies nearly 30% of total area under citrus cultivation. Mandarin, Sweet Orange is commercially grown citrus species in India.The fruit is rich in vitamins, minerals, and antioxidants. Nutrients include potassium, vitamin C, folate, manganese, dietary fibre, and magnesium.', 'fruits3', 'images/fruits 4.jpg', 35.00),
(8, 'Cabbage', 'Cabbage comprising several cultivars of Brassica oleracea is a leafy green, red (purple), or white (pale green) biennial plant grown as an annual vegetable crop for its dense-leaved heads. It is descended from the wild cabbage.', 'vegetables1', 'images/blog-img.jpg', 15.79),
(9, 'Pumpkin', 'A pumpkin is a cultivar of winter squash that is round with smooth, slightly ribbed skin, and most often deep yellow to orange in coloration. The thick shell contains the seeds and pulp. The name is most commonly used for cultivars of Cucurbita pepo, but some cultivars of Cucurbita maxima, C.', 'vegetables2', 'images/vegetables 1.PNG', 20.00),
(10, 'Tomato', 'The tomato is the edible, often red, berry of the plant Solanum lycopersicum, commonly known as a tomato plant. The species originated in western South America and Central America.Tomato plants typically grow to 1–3 meters (3–10 ft) in height.', 'vegetables3', 'images/vegetables 2.PNG', 15.00),
(11, 'Succulent', 'In botany, succulent plants, also known as succulents, are plants with parts that are thickened, fleshy, and engorged, usually to retain water in arid climates or soil conditions. The word succulent comes from the Latin word sucus, meaning \'juice\', or \'sap\'', 'decoration1', 'images/succulents2.jpg', 8.24),
(12, 'Tropical And House Plant', 'A houseplant is a plant that is grown indoors in places such as residences and offices, namely for decorative purposes, but studies have also shown them to have positive psychological effects and as well as help with indoor air purification, since some species, and the soil-dwelling microbes associated with them, reduce indoor air pollution by absorbing volatile organic compounds including benzene, formaldehyde, and trichloroethylene. While generally toxic to humans, such pollutants are absorbed by the plant and its soil-dwelling microbes without harm.', 'decoration2', 'images/tropicals & house plant.PNG', 10.84),
(13, 'Acer Palmatum Atropurpureum', 'A traditional form with new spring foliage emerging glossy maroon then fading to a bronzy crimson throughout the summer. Successful in containers. A basic starter with bonsai lovers. These are in liter sized pots.', 'decoration3', 'images/decoration 1.PNG', 25.00);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `name`, `number`, `address`, `email`, `password`) VALUES
(17, 'anuu', '0', 'anu', 'anu', 'anuu'),
(18, 'ariyan', '0', 'ariyan', 'ariyan', 'ariyan'),
(19, 'rajit', '12', 'rajit', 'rajit', 'rajit'),
(20, 'mahfuj', '12', 'mahfuj', 'mahfuj', 'mahfuj');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
