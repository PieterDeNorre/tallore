CREATE TABLE `about` (
  `about_id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `about_title` varchar(250) NOT NULL,
  `about_content` varchar(1000) NOT NULL,
  `about_active` tinyint(1) NOT NULL,
  `about_image` varchar(50) NOT NULL,
  PRIMARY KEY (`about_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`about_id`, `about_title`, `about_content`, `about_active`, `about_image`) VALUES
(1, 'Belgian roots', 'Inspired by the long standing tradition of daily soup while growing up in Belgium, TALLORE is proud to launch the first authentic Western soup bar in Hong Kong. The silky texture and unmatched taste of fresh homemade soup is a true part of Belgian heritage and it is inspired by these principles the TALLORE team passionately brews it daily soups.', 1, 'roots.jpg'),
(2, 'Fresh homemade soup with the best ingredients from local markets', 'We start our hunt for the best ingredients early in the morning, sourcing all our hand picked ingredients from the local fresh markets. Combined with select imported ingredients from Europe, we are able to bring a tasteful and healthy soup avoiding the use of heavy creams or fillers. Our array of toppings enables you to tailor your soup to your own liking. Restore your food balance by making soup an essential part of your daily meals. The use of fresh vegetables assures your intake of vitamins and antioxidants.', 1, 'local_markets.jpg'),
(3, 'Artisan sandwiches, healthy pasta and Belgian delicacies', 'To complement your meal, TALLORE is offering a good variety of European inspired artisan sandwiches and pastas. To assure a fresh taste, our team will prep your sandwich a la minute. On the side you can also find some unique Belgian delicacies that are waiting to be discovered by you.', 1, 'pasta.jpg'),
(4, 'First authentic Western soup bar in Hong Kong', 'We look forward to hosting you at our founding shop in Wan Chai where you can experience a fresh healthy new taste on the Hong Kong foodmarket.', 1, 'soup.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `dessert`
--

CREATE TABLE `dessert` (
  `dessert_id` tinyint(3) NOT NULL DEFAULT '0',
  `dessert_name` varchar(25) CHARACTER SET latin1 NOT NULL,
  `dessert_info` varchar(25) CHARACTER SET latin1 NOT NULL,
  `dessert_price` tinyint(3) NOT NULL,
  `dessert_new` tinyint(3) NOT NULL,
  `dessert_active` tinyint(3) NOT NULL,
  PRIMARY KEY (`dessert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dessert`
--

INSERT INTO `dessert` (`dessert_id`, `dessert_name`, `dessert_info`, `dessert_price`, `dessert_new`, `dessert_active`) VALUES
(1, 'Yoghurt', '', 14, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dish`
--

CREATE TABLE `dish` (
  `dish_id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `dish_name` varchar(25) NOT NULL,
  `dish_info` varchar(25) NOT NULL,
  `dish_price` tinyint(3) NOT NULL,
  `dish_new` tinyint(3) NOT NULL,
  `dish_active` tinyint(3) NOT NULL,
  PRIMARY KEY (`dish_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `drinks_cold`
--

CREATE TABLE `drinks_cold` (
  `drinks_cold_id` tinyint(3) NOT NULL,
  `drinks_cold_name` varchar(25) NOT NULL,
  `drinks_cold_price` tinyint(3) NOT NULL,
  `drinks_cold_new` tinyint(1) NOT NULL,
  `drinks_cold_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`drinks_cold_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drinks_cold`
--

INSERT INTO `drinks_cold` (`drinks_cold_id`, `drinks_cold_name`, `drinks_cold_price`, `drinks_cold_new`, `drinks_cold_active`) VALUES
(1, 'Coc-Cola', 14, 0, 1),
(2, 'Sprite', 14, 0, 1),
(3, 'Fanta', 14, 0, 1),
(4, 'Arizona Ice Tea', 14, 0, 1),
(5, 'Orangina', 14, 0, 1),
(6, 'Still Water', 14, 0, 1),
(7, 'Sparkling Water', 14, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `drinks_hot`
--

CREATE TABLE `drinks_hot` (
  `drinks_hot_id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `drinks_hot_name` varchar(25) NOT NULL,
  `drinks_hot_price` tinyint(3) NOT NULL,
  `drinks_hot_new` tinyint(1) NOT NULL,
  `drinks_hot_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`drinks_hot_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `drinks_hot`
--

INSERT INTO `drinks_hot` (`drinks_hot_id`, `drinks_hot_name`, `drinks_hot_price`, `drinks_hot_new`, `drinks_hot_active`) VALUES
(1, 'Coffee', 18, 0, 1),
(2, 'Ristretto', 18, 0, 1),
(3, 'Espresso', 18, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pasta`
--

CREATE TABLE `pasta` (
  `pasta_id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `pasta_name` varchar(25) NOT NULL,
  `pasta_info` varchar(25) NOT NULL,
  `pasta_price` tinyint(3) NOT NULL,
  `pasta_new` tinyint(3) NOT NULL,
  `pasta_active` tinyint(3) NOT NULL,
  PRIMARY KEY (`pasta_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `pasta`
--

INSERT INTO `pasta` (`pasta_id`, `pasta_name`, `pasta_info`, `pasta_price`, `pasta_new`, `pasta_active`) VALUES
(1, 'Warm Fusilli Bolognese', '', 58, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `salad`
--

CREATE TABLE `salad` (
  `salad_id` tinyint(3) NOT NULL,
  `salad_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `salad_info` varchar(150) CHARACTER SET latin1 NOT NULL,
  `salad_price` tinyint(3) NOT NULL,
  `salad_new` tinyint(3) NOT NULL,
  `salad_active` tinyint(3) NOT NULL,
  PRIMARY KEY (`salad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salad`
--

INSERT INTO `salad` (`salad_id`, `salad_name`, `salad_info`, `salad_price`, `salad_new`, `salad_active`) VALUES
(1, 'Caeser Salad', '', 58, 0, 1),
(2, 'Pesto & Blue Cheese Pasta Salad', '', 58, 0, 1),
(3, 'Crispy Artichoke Salad', '', 58, 0, 1),
(4, 'Curry Chicken, Mango & Wild Rice Salad', '', 58, 0, 1),
(5, 'Tuna Salad', '', 58, 0, 1),
(6, 'Couscous Salad', '', 58, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sandwiches`
--

CREATE TABLE `sandwiches` (
  `sandwiche_id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `sandwiche_name` varchar(25) NOT NULL,
  `sandwiche_type` varchar(25) NOT NULL,
  `sandwiche_price` tinyint(3) NOT NULL,
  `sandwiche_new` tinyint(1) NOT NULL,
  `sandwiche_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`sandwiche_id`),
  UNIQUE KEY `sandwiche_id` (`sandwiche_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `sandwiches`
--

INSERT INTO `sandwiches` (`sandwiche_id`, `sandwiche_name`, `sandwiche_type`, `sandwiche_price`, `sandwiche_new`, `sandwiche_active`) VALUES
(1, 'Grilled Chicken & Mustard', 'White Baguette', 48, 0, 1),
(2, 'Chicken & Sour Cream Sala', 'Wrap', 48, 0, 1),
(3, 'Brie, Prosciutto & Honey', 'Grain Baguette', 48, 0, 1),
(4, 'Gouda, Cooked Ham & Mayo', 'White Baguette', 48, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `soup`
--

CREATE TABLE `soup` (
  `soup_id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `soup_name` varchar(25) NOT NULL,
  `soup_price_reg` tinyint(3) NOT NULL,
  `soup_price_med` tinyint(3) NOT NULL,
  `soup_price_lar` tinyint(3) NOT NULL,
  `soup_new` tinyint(1) NOT NULL,
  `soup_active` tinyint(1) NOT NULL,
  `soup_day` tinyint(1) NOT NULL,
  PRIMARY KEY (`soup_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `soup`
--

INSERT INTO `soup` (`soup_id`, `soup_name`, `soup_price_reg`, `soup_price_med`, `soup_price_lar`, `soup_new`, `soup_active`, `soup_day`) VALUES
(1, 'Tomato', 38, 48, 58, 0, 1, 0),
(2, 'Lentil with Mustard', 38, 48, 58, 0, 1, 0),
(3, 'Minestrone', 38, 48, 58, 0, 1, 0),
(4, 'Roasted tomato basil', 38, 48, 58, 0, 1, 1),
(5, 'Pumpkin and carrot', 38, 48, 58, 1, 1, 0),
(6, 'Broccoli and corn bits', 38, 48, 58, 0, 1, 0),
(7, 'Beetroot', 38, 48, 58, 0, 1, 0),
(8, 'Minestrone with chicken', 38, 48, 58, 1, 1, 0);
