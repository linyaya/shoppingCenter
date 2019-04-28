-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: sophia
-- Generation Time: Mar 21, 2019 at 01:31 PM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.2.15-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yylin`
--

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE `catalog` (
  `itemID` int(11) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `itemDescription` longtext NOT NULL,
  `itemCategory` varchar(255) NOT NULL,
  `itemImage` varchar(255) NOT NULL,
  `itemPrice` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`itemID`, `itemName`, `itemDescription`, `itemCategory`, `itemImage`, `itemPrice`) VALUES
(1, 'Xiaomi Redmi Note 6 Pro', '64GB / 4GB RAM 6.26\" Dual Camera LTE Factory Unlocked Smartphone Global Version (Black)', 'Phones', 'images/1.jpg', 1420.79),
(2, 'Programming the World Wide Web', 'This book provides a comprehensive introduction to the tools and skills required for both client- and server-side programming, teaching students how to develop platform-independent sites using the most current Web development technology.', 'Books', 'images/2.jpg', 368.5),
(3, 'Decluttering at the Speed of Life', 'Sections of the book include\r\nWhy You Need This Book (You Know Why)\r\nYour Unique Home\r\nDecluttering in the Midst of Real Life\r\nChange Your Mind, Change Your Home\r\nBreaking Through Your Decluttering Delusions\r\nWorking It Out Room by Room\r\nHelping Others Declutter\r\nReal Life Goes On (and On)\r\nAs long as we\'re living and breathing, new clutter will appear. The good news is that decluttering can get easier, become more natural, and require significantly fewer hours, less emotional bandwidth, and little to no sweat to keep going.', 'Books', 'images/3.jpg', 48.5),
(4, 'Goodnight Moon', 'In a great green room, tucked away in bed, is a little bunny. \"Goodnight room, goodnight moon.\" And to all the familiar things in the softly lit room to the picture of the three little bears sitting on chairs, to the clocks and his socks, to the mittens and the kittens, to everything one by one, the little bunny says goodnight.\r\nIn this classic of children\'s literature, beloved by generations of readers and listeners, the quiet poetry of the words and the gentle, lulling illustrations combine to make a perfect book for the end of the day.\r\nThis board book edition is the perfect size for little hands.', 'Books', 'images/4.jpg', 312.4),
(5, 'Huawei Mate SE Factory Unlocked 5.93', '4GB/64GB Octa-core Processor| 16MP + 2MP Dual Camera| GSM Only |Grey (US Warranty)', 'Phones', 'images/5.jpg', 1539.93),
(6, 'Apple iPhone 6', 'GSM Unlocked, 16GB - Silver (Refurbished)', 'Phones', 'images/6.jpg', 1126.72),
(7, 'Coca-Cola(R) Zero Sugar', '12 oz, Case of 24', 'Drinks', 'images/7.jpg', 101.43),
(8, 'Vengo Energy Drink', 'Orange (24 Pack / 8.4 FL OZ), Zero Calorie, Sugar Free, Natural Vitamin B6 and B12', 'Drinks', 'images/8.jpg', 114.93),
(9, 'Cannabis Energy Drink', '100% Legal. Contains Hemp Seed Extract adds flavor and gives a smooth clean taste. All natural Ingredients, essential vitamins, and nutrients.', 'Drinks', 'images/9.jpg', 112),
(10, 'The Wonderful Things You Will Be', 'From brave and bold to creative and clever, Emily Winfield Martin\'s rhythmic rhyme expresses all the loving things that parents think of when they look at their children. With beautiful, and sometimes humorous, illustrations, and a clever gatefold with kids in costumes, this is a book grownups will love reading over and over to kids, both young and old. A great gift for any occasion, but a special stand-out for baby showers, birthdays, and graduation. The Wonderful Things You Will Be has a loving and truthful message that will endure for lifetimes.', 'Books', 'images/10.jpg', 68.5),
(11, 'Vivo X21', '6GB / 128GB 6.28-inches Dual SIM Factory Unlocked - International Stock No Warranty (Black)', 'Phones', 'images/11.jpg', 1703),
(12, 'Giraffes Can\'t Dance', 'The bestselling Giraffes Can\'t Dance is now a board book!\r\n\r\nGiraffes Can\'t Dance is a touching tale of Gerald the giraffe, who wants nothing more than to dance. With crooked knees and thin legs, it\'s harder for a giraffe than you would think. Gerald is finally able to dance to his own tune when he gets some encouraging words from an unlikely friend.\r\n\r\nWith light-footed rhymes and high-stepping illustrations, this tale is gentle inspiration for every child with dreams of greatness.', 'Books', 'images/12.jpg', 68.5),
(13, 'If Animals Kissed Good Night', 'If animals kissed\r\nlike we kiss good night,\r\nGiraffe and his calf\r\nwould stretch their necks high\r\nand kiss just beneath\r\nthe top of the sky.\r\n\r\nIn a cozy bedtime chat with her mom, a young girl wonders how animal families might say good night. Would Wolf and his pup \"kiss and then HOWL\"? Would Bear and her cub \"kiss and then GROWL\"? But what about Sloth and her baby? They move soooo slooowwwww . . . they\'re sure to be kissing from early evening until long after everyone else is fast asleep!\r\n\r\nWith whimsical art and playful rhyming verse, this board book is perfect for bedtime snuggles.', 'Books', 'images/13.jpg', 78.5),
(14, 'Dragons Love Tacos', 'Dragons love tacos. They love chicken tacos, beef tacos, great big tacos, and teeny tiny tacos. So if you want to lure a bunch of dragons to your party, you should definitely serve tacos. Buckets and buckets of tacos. Unfortunately, where there are tacos, there is also salsa. And if a dragon accidentally eats spicy salsa . . . oh, boy. You\'re in red-hot trouble.\r\n\r\nThe award-winning team of Adam Rubin and Daniel Salmieri has created an unforgettable tale of new friends and the perfect snack.', 'Books', 'images/14.jpg', 98.5),
(15, 'Educated: A Memoir', 'Born to survivalists in the mountains of Idaho, Tara Westover was 17 the first time she set foot in a classroom. Her family was so isolated from mainstream society that there was no one to ensure the children received an education and no one to intervene when one of Tara\'s older brothers became violent. When another brother got himself into college, Tara decided to try a new kind of life. Her quest for knowledge transformed her, taking her over oceans and across continents, to Harvard and to Cambridge University. Only then would she wonder if she\'d traveled too far, if there was still a way home. \r\n\r\n\"Beautiful and propulsive.... Despite the singularity of [Tara Westover\'s] childhood, the questions her book poses are universal: How much of ourselves should we give to those we love? And how much must we betray them to grow up?\" (Vogue) \r\n\r\n\"Westover has somehow managed not only to capture her unsurpassably exceptional upbringing, but to make her current situation seem not so exceptional at all, and resonant for many others.\" (The New York Times Book Review)', 'Books', 'images/15.jpg', 119.7),
(16, 'Born a Crime: Stories from a South African Childhood ', 'Comedian Trevor Noah\'s stories of growing up in South Africa are vivid, sometimes harrowing, and often laugh out loud funny. The bonus of audio is that listeners get to hear Noah tell these stories in his South African accented English, as well as hear him speak snippets of various other South African languages.... Noah\'s narration offers insights and intimacy, and as he gives voice to his mother, his friends, and his younger self, listeners are invited in to glimpse his world. Winner of AudioFile Earphones Award (AudioFile magazine)', 'Books', 'images/16.jpg', 109.7),
(17, 'The Right Side of History: How Reason and Moral Purpose Made the West Great ', 'In 2016, Ben Shapiro spoke at UC Berkeley. Hundreds of police officers were required from 10 UC campuses across the state to protect his speech, which was - ironically - about the necessity for free speech and rational debate. \r\n\r\nHe came to argue that Western civilization is in the midst of a crisis of purpose and ideas. Our freedoms are built upon the twin notions that every human being is made in God\'s image and that human beings were created with reason capable of exploring God\'s world. \r\n\r\nWe can thank these values for the birth of science, the dream of progress, human rights, prosperity, peace, and artistic beauty. Jerusalem and Athens built America, ended slavery, defeated the Nazis and the Communists, lifted billions from poverty, and gave billions spiritual purpose. Jerusalem and Athens were the foundations of the Magna Carta and the Treaty of Westphalia; they were the foundations of the Declaration of Independence, Abraham Lincoln\'s Emancipation Proclamation, and Martin Luther King, Jr.\'s Letter from Birmingham Jail. \r\n\r\nCivilizations that rejected Jerusalem and Athens have collapsed into dust. The USSR rejected Judeo Christian values and Greek natural law, substituting a new utopian vision of \"social justice\"  and they starved and slaughtered tens of millions of human beings. The Nazis rejected Judeo Christian values and Greek natural law, and they shoved children into gas chambers. Venezuela rejects Judeo-Christian values and Greek natural law, and citizens of their oil rich nation have been reduced to eating dogs.\r\n\r\nWe are in the process of abandoning Judeo Christian values and Greek natural law, favoring instead moral subjectivism and the rule of passion. And we are watching our civilization collapse into age old tribalism, individualistic hedonism, and moral subjectivism. We believe we can reject Judeo Christian values and Greek natural law and satisfy ourselves with intersectionality, or scientific materialism, or progressive politics, or authoritarian governance, or nationalistic solidarity. \r\n\r\nWe can\'t.\r\n\r\nThe West is special, and in The Right Side of History, Ben Shapiro bravely explains that it\'s because too many of us have lost sight of the moral purpose that drives us each to be better, or the sacred duty to work together for the greater good, or both. A stark warning, and a call to spiritual arms, this audiobook may be the first step in getting our civilization back on track.', 'Books', 'images/17.jpg', 149.7),
(18, 'Razer Phone 2 (New)', 'Unlocked Gaming Smartphone 120Hz QHD Display  Snapdragon 845  Wireless Charging  Chroma  8GB RAM  64GB  Mirror Black Finish', 'Phones', 'images/18.jpg', 2149.7),
(19, 'Huawei Honor 8X', '(64GB + 4GB RAM) 6.5 HD 4G LTE GSM Factory Unlocked Smartphone  \r\nInternational Version No Warranty JSN-L23 (Black)', 'Phones', 'images/19.jpg', 2039.7),
(20, 'Samsung Galaxy S8 ', '(G950u GSM only) 5.8\" 64GB, Unlocked Smartphone for all GSM Carriers \r\nMidnight Black (Certified Refurbished)', 'Phones', 'images/20.jpg', 2139.7),
(21, 'ASUS ZS600KL-S845-8G128G ROG Gaming Smartphone 6', 'FHD+ 2160x1080 90Hz Display \r\nQualcomm SD 845\r\n8GB RAM/128GB Storage\r\nLTE Unlocked Dual SIM (GSM Only), Black', 'Phones', 'images/21.jpg', 2133.7),
(22, 'Xiaomi Redmi Note 5 ', '64GB Black, Dual Sim, 4GB RAM, 5.99\", GSM Unlocked, No Warranty (Black)', 'Phones', 'images/22.jpg', 1133.7),
(23, 'Celsius Live Fit Natural Fitness & Energy Drink', 'HEALTHY ENERGY * NATURAL CAFFEINE\r\nHELPS ACCELERATES METABOLISM\r\nHELPS BURN BODY FAT\r\nNO SUGAR * NO PRESERVATIVES * NON GMO * AVAILABLE IN SPARKLING & NON CARBONATED\r\nINCLUDES: 3 - CUCUMBER LIME, 3 GRAPEFRUIT, 3 PINEAPPLE COCONUT, & 3  WATERMELON BERRY', 'Drinks', 'images/23.jpg', 27.93),
(24, 'C CRYSTAL LEMON 100PCS Drink Pouches with Straw Smoothie Bags Juice Pouches with 100 Drink Straws', 'Package include: 100 Hand held drink pouches with 100 straws. Great for drinks, nuts, sugar containment.\r\nConvenient Reusable Food Pouches: Two big holes and two small holes. Small holes can better set up straw when not use, big holes are convenient to carry\r\nSafety: Our Drink Bags are food grade which made of non toxic, BPA free materials. Round Corners for Safety, The reclosable zip ensures easy opening and no leaking accidents.\r\nCapacity for Each Zipper Pouch: 450 to 500 ml (around 17 OZ) Size: 9*5 inch/23*13 cm\r\nGuarantee: If you have any problems about our clear zipper pouch, please contact us at any time, we will solve it immediately.', 'Drinks', 'images/24.jpg', 20.99),
(25, 'Premier Protein Clear Protein Drink, Orange Mango', 'Each Clear Protein Drink contains 20g of whey protein isolate, 90 calories, 0g sugar, 1g carbs\r\nNO ARTIFICIAL Flavors, NO SOY ingredients, GLUTEN FREE, SUGAR FREE, FAT FREE\r\nAvailable in two delicious flavors: Orange Mango and Raspberry Enjoy as a refreshing, hydrating beverage any time of day or mix with fruit and freeze for delicious, protein packed popsicles', 'Drinks', 'images/25.jpg', 22.77),
(26, 'BIOLYTE 12-Pack', 'Biolyte is formulated based on the salt ratio in standard IV fluids, which provide the electrolytes your body needs to feel its best. It contains 650 percent more electrolytes than the leading sports drinks and 50 percent more than childrens rehydration products.', 'Drinks', 'images/26.jpg', 35.88),
(27, 'Premier Protein 30g Protein Shakes, Chocolate, 11 Fluid Ounces, 4 Per Pack', 'Each shake contains 30g of protein with all the essential amino acids, 160 calories, 1g sugar, low fat, 24 vitamins and minerals, 5g carbs\r\nRecipient of the American Master of Taste Gold Medal for SUPERIOR TASTING ready to drink protein beverages in a national taste test by Chefs In America in 2015, 2016 and 2017\r\nAvailable in three deliciously smooth and creamy flavors: Chocolate, Vanilla, Strawberries & Cream, enjoy them as a delicious meal replacement, a satisfying snack, or workout fuel\r\nNO ARTIFIClAL Colors, NO SOY ingredients, GLUTEN FREE, KOSHER\r\nEach carton contains 4 (11 fl oz) shakes\r\n', 'Drinks', 'images/27.jpg', 6.62),
(28, 'VPX Bang, Star Blast, 16 fl. oz. 12 Count', 'Potent brain and body fuel\r\nBCAAs\r\nXtreme energy source\r\nPotent brain and body fuel^BCAAs^Xtreme energy source', 'Drinks', 'images/28.jpg', 31.99);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`itemID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
