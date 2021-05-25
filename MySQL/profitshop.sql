CREATE SCHEMA `profitshop` ;

CREATE TABLE `profitshop`.`products` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `userNameId` INT NOT NULL,
  `descr` VARCHAR(250) NOT NULL,
  `createdAt` DATE NOT NULL,
  `link` VARCHAR(250) NOT NULL,
  `vendorId` INT NOT NULL,
  `photoLink` VARCHAR(250) NULL,
  `hashTags` VARCHAR(150) NOT NULL,
  `discount` INT NOT NULL,
  `validUntil` DATE NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `profitshop`.`reviews` (
  `userId` INT NOT NULL,
  `productId` INT NOT NULL,
  `review` VARCHAR(150) NULL,
  `rating` INT NULL,
  PRIMARY KEY (`userId`, `productId`));

CREATE TABLE `profitshop`.`users` (
  `id` INT NOT NULL,
  `userName` VARCHAR(45) NOT NULL,
  `userRole` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `profitshop`.`vendors` (
  `id` INT NOT NULL,
  `vendorName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));
  
ALTER TABLE `profitshop`.`products` 
ADD INDEX `fk_users_idx` (`userNameId` ASC) VISIBLE,
ADD INDEX `fk_vendors_idx` (`vendorId` ASC) VISIBLE;
;

ALTER TABLE `profitshop`.`products` 
ADD CONSTRAINT `fk_users`
  FOREIGN KEY (`userNameId`)
  REFERENCES `profitshop`.`users` (`id`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_vendors`
  FOREIGN KEY (`vendorId`)
  REFERENCES `profitshop`.`vendors` (`id`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION;
  
INSERT INTO `profitshop`.`vendors` (`id`, `vendorName`) VALUES ('1', 'HUKUMKA');
INSERT INTO `profitshop`.`vendors` (`id`, `vendorName`) VALUES ('2', 'Naruto');
INSERT INTO `profitshop`.`vendors` (`id`, `vendorName`) VALUES ('3', 'Til');
INSERT INTO `profitshop`.`vendors` (`id`, `vendorName`) VALUES ('4', 'Mtg');
INSERT INTO `profitshop`.`vendors` (`id`, `vendorName`) VALUES ('5', 'Nikitka');
INSERT INTO `profitshop`.`vendors` (`id`, `vendorName`) VALUES ('6', 'Uuu');
INSERT INTO `profitshop`.`vendors` (`id`, `vendorName`) VALUES ('7', 'Vk');
INSERT INTO `profitshop`.`vendors` (`id`, `vendorName`) VALUES ('8', 'Slava');
INSERT INTO `profitshop`.`vendors` (`id`, `vendorName`) VALUES ('9', 'Anna');
INSERT INTO `profitshop`.`vendors` (`id`, `vendorName`) VALUES ('10', 'Instagram');

INSERT INTO `profitshop`.`users` (`id`, `userName`, `userRole`) VALUES ('1', 'Nik', 'Admin');
INSERT INTO `profitshop`.`users` (`id`, `userName`, `userRole`) VALUES ('2', 'Liz', 'Customer');
INSERT INTO `profitshop`.`users` (`id`, `userName`, `userRole`) VALUES ('3', 'Pasha', 'Admin');
INSERT INTO `profitshop`.`users` (`id`, `userName`, `userRole`) VALUES ('4', 'Roma', 'Customer');
INSERT INTO `profitshop`.`users` (`id`, `userName`, `userRole`) VALUES ('5', 'Ilya', 'Admin');
INSERT INTO `profitshop`.`users` (`id`, `userName`, `userRole`) VALUES ('6', 'Misha', 'Admin');
INSERT INTO `profitshop`.`users` (`id`, `userName`, `userRole`) VALUES ('7', 'Stepan', 'Customer');
INSERT INTO `profitshop`.`users` (`id`, `userName`, `userRole`) VALUES ('8', 'Slava', 'Admin');
INSERT INTO `profitshop`.`users` (`id`, `userName`, `userRole`) VALUES ('9', 'Vika', 'Admin');
INSERT INTO `profitshop`.`users` (`id`, `userName`, `userRole`) VALUES ('10', 'Oly', 'Admin');

INSERT INTO `profitshop`.`products` (`id`, `userNameId`, `descr`, `createdAt`, `link`, `vendorId`, `photoLink`, `hashTags`, `discount`, `validUntil`) VALUES ('1', '1', 'HUKUMKA Photoshop', '2021-03-20', 'httpswww.youtube.com', '1', 'httpswww.youtube.com', '[Program,Adobe,Sale]', '20', '2021-10-10');
INSERT INTO `profitshop`.`products` (`id`, `userNameId`, `descr`, `createdAt`, `link`, `vendorId`, `photoLink`, `hashTags`, `discount`, `validUntil`) VALUES ('2', '2', 'Naruto Pad', '2021-01-01', 'httpswww.youtube.com', '2', 'httpswww.youtube.com', '[Program,Apple,Iphone]', '99', '2021-04-04');
INSERT INTO `profitshop`.`products` (`id`, `userNameId`, `descr`, `createdAt`, `link`, `vendorId`, `photoLink`, `hashTags`, `discount`, `validUntil`) VALUES ('3', '3', 'Til 3', '2021-03-01', 'httpswww.youtube.com', '1', 'httpswww.youtube.com', '[Program,Adobe,Premier]', '15', '2021-05-05');
INSERT INTO `profitshop`.`products` (`id`, `userNameId`, `descr`, `createdAt`, `link`, `vendorId`, `photoLink`, `hashTags`, `discount`, `validUntil`) VALUES ('4', '7', 'Mtg Player', '2021-02-02', 'httpswww.youtube.com', '3', 'httpswww.youtube.com', '[Tilda,Web]', '50', '2021-06-25');
INSERT INTO `profitshop`.`products` (`id`, `userNameId`, `descr`, `createdAt`, `link`, `vendorId`, `photoLink`, `hashTags`, `discount`, `validUntil`) VALUES ('5', '5', 'Nikitka Top', '2018-10-12', 'httpswww.youtube.com', '4', 'httpswww.youtube.com', '[Music]', '85', '2021-12-15');
INSERT INTO `profitshop`.`products` (`id`, `userNameId`, `descr`, `createdAt`, `link`, `vendorId`, `photoLink`, `hashTags`, `discount`, `validUntil`) VALUES ('6', '6', 'Uuu Confit', '2021-05-07', 'httpswww.youtube.com', '5', 'httpswww.youtube.com', '[Games]', '70', '2050-05-15');
INSERT INTO `profitshop`.`products` (`id`, `userNameId`, `descr`, `createdAt`, `link`, `vendorId`, `photoLink`, `hashTags`, `discount`, `validUntil`) VALUES ('7', '4', 'Vk', '2021-05-11', 'httpswww.youtube.com', '6', 'httpswww.youtube.com', '[Web,Social,Youtube]', '45', '2048-08-08');
INSERT INTO `profitshop`.`products` (`id`, `userNameId`, `descr`, `createdAt`, `link`, `vendorId`, `photoLink`, `hashTags`, `discount`, `validUntil`) VALUES ('8', '8', 'Slava pid_r', '2021-05-10', 'httpswww.youtube.com', '9', 'httpswww.youtube.com', '[Web,Social,FB]', '10', '2035-03-05');
INSERT INTO `profitshop`.`products` (`id`, `userNameId`, `descr`, `createdAt`, `link`, `vendorId`, `photoLink`, `hashTags`, `discount`, `validUntil`) VALUES ('9', '9', 'Anna Website', '2010-04-03', 'httpswww.youtube.com', '8', 'httpswww.youtube.com', '[Web,Social,Inst]', '82', '2021-04-08');
INSERT INTO `profitshop`.`products` (`id`, `userNameId`, `descr`, `createdAt`, `link`, `vendorId`, `photoLink`, `hashTags`, `discount`, `validUntil`) VALUES ('10', '10', 'Instagram Sale', '2021-01-01', 'httpswww.youtube.com', '10', 'httpswww.youtube.com', '[Web,Social,Twitter]', '97', '2023-07-06');
INSERT INTO `profitshop`.`products` (`id`, `userNameId`, `descr`, `createdAt`, `link`, `vendorId`, `photoLink`, `hashTags`, `discount`, `validUntil`) VALUES ('11', '7', 'Vk Sale', '2021-05-08', 'httpswww.youtube.com', '6', 'httpswww.youtube.com', '[Web,Social,Youtube]', '50', '2021-09-09');
INSERT INTO `profitshop`.`products` (`id`, `userNameId`, `descr`, `createdAt`, `link`, `vendorId`, `photoLink`, `hashTags`, `discount`, `validUntil`) VALUES ('12', '5', 'Nikitka Big Sale', '2021-05-09', 'httpswww.youtube.com', '6', 'httpswww.youtube.com', '[Web,Social,Youtube]', '68', '2021-12-12');
INSERT INTO `profitshop`.`products` (`descr`, `vendorId`, `photoLink`) VALUES ('', '', '');

INSERT INTO `profitshop`.`reviews` (`userId`, `productId`, `review`, `rating`) VALUES ('1', '1', '[Wow!]', '5');
INSERT INTO `profitshop`.`reviews` (`userId`, `productId`, `rating`) VALUES ('2', '5', '4');
INSERT INTO `profitshop`.`reviews` (`userId`, `productId`, `review`, `rating`) VALUES ('5', '3', '[Cool!,Amazing!]', '5');
INSERT INTO `profitshop`.`reviews` (`userId`, `productId`, `rating`) VALUES ('3', '2', '3');
INSERT INTO `profitshop`.`reviews` (`userId`, `productId`, `review`, `rating`) VALUES ('4', '4', '[Nice!,Top!,Flex!,Hype!]', '5');
INSERT INTO `profitshop`.`reviews` (`userId`, `productId`, `rating`) VALUES ('1', '4', '4');
INSERT INTO `profitshop`.`reviews` (`userId`, `productId`, `rating`) VALUES ('8', '7', '4');
INSERT INTO `profitshop`.`reviews` (`userId`, `productId`, `review`, `rating`) VALUES ('7', '10', '[Big Sale Man!]', '5');
INSERT INTO `profitshop`.`reviews` (`userId`, `productId`, `rating`) VALUES ('9', '8', '4');
INSERT INTO `profitshop`.`reviews` (`userId`, `productId`, `rating`) VALUES ('10', '9', '5');