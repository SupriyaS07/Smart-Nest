SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- Database: `store`
-- Table structure for table `items`

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `items`

INSERT INTO `items` (`id`, `name`, `price`) VALUES
(1, 'Fibre2', 3600),
(2, 'Nike Shoe', 8500),
(3, 'Puma India', 5000),
(4, 'Adigas Shoe', 6000),
(5, 'Titan Model #301', 13000),
(6, 'Titan Model #201', 3000),
(7, 'HMT Milan', 8000),
(8, 'Favre Lueba #111', 18000),
(9, 'Raymond', 1500),
(10, 'Charles', 1000),
(11, 'HXR', 900),
(12, 'PINK', 1200);

-- Table structure for table `users`


CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping data for table `users`


INSERT INTO `users` (`id`, `name`, `email`, `password`, `contact`, `city`, `address`) VALUES
(4, 'Supriya S', 'gowdashivraj60@gmail.com', '14e1b600b1fd579f47433b88e8d85291', '6263056779', 'bangalore', 'Kanakapura main road banshankari 5th cross ,bangalore),
(5, 'Supriya S', 'gowdashivraj60@gmail.com', '14e1b600b1fd579f47433b88e8d85291', '9165063741', 'bangalore', 'bangalore');


-- Table structure for table `users_items`


CREATE TABLE `users_items` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` enum('Added to cart','Confirmed') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `users_items`

INSERT INTO `users_items` (`id`, `user_id`, `item_id`, `status`) VALUES
(7, 3, 3, 'Added to cart'),
(8, 3, 4, 'Added to cart'),
(9, 3, 5, 'Added to cart'),
(10, 3, 11, 'Added to cart'),
(11, 1, 9, 'Added to cart'),
(12, 1, 2, 'Added to cart'),
(13, 1, 8, 'Added to cart'),
(14, 4, 2, 'Confirmed'),
(18, 5, 11, 'Added to cart'),
(20, 5, 5, 'Added to cart');

-- Indexes for dumped tables

-- Indexes for table `items`
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);


-- Indexes for table `users`

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);


-- Indexes for table `users_items`

ALTER TABLE `users_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`item_id`),
  ADD KEY `item_id` (`item_id`);


-- AUTO_INCREMENT for dumped tables



-- AUTO_INCREMENT for table `items`

ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;


-- AUTO_INCREMENT for table `users`

ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


-- AUTO_INCREMENT for table `users_items`

ALTER TABLE `users_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_items`
--
ALTER TABLE `users_items`
  ADD CONSTRAINT `users_items_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `users_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
