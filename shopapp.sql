CREATE TABLE shoppay;
USE shoppay;

CREATE TABLE `payment` (
  `userID` int(11) NOT NULL,
  `userAmount` double NOT NULL,
  `userName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `shopitemslist` (
  `itemID` int(11) NOT NULL,
  `itemTitle` varchar(30) NOT NULL,
  `itemIcon` longblob NOT NULL,
  `itemPrice` double NOT NULL,
  `itemCategory` varchar(20) NOT NULL,
  `itemLeft` int(11) NOT NULL,
  `itemProvider` varchar(20) NOT NULL,
  `adminName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `shoppay` (
  `userName` varchar(20) NOT NULL,
  `shopID` int(11) NOT NULL,
  `paymentPIN` varchar(8) NOT NULL,
  `paymentState` varchar(20) NOT NULL,
  `paymentAmount` double NOT NULL,
  `payedAdmin` varchar(20) NOT NULL,
  `orderID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

TE TABLE `useraccount` (
  `userName` varchar(50) NOT NULL,
  `userEmail` varchar(50) NOT NULL,
  `userPass` varchar(30) NOT NULL,
  `userFullName` varchar(50) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  `streetAddress` varchar(50) NOT NULL,
  `homeNumber` varchar(10) NOT NULL,
  `userKebele` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


ALTER TABLE `payment`
  ADD PRIMARY KEY (`userID`);

ALTER TABLE `shopitemslist`
  ADD PRIMARY KEY (`itemID`);

ALTER TABLE `shoppay`
  ADD PRIMARY KEY (`shopID`);

ALTER TABLE `shopitemslist`
  MODIFY `itemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

ALTER TABLE `shoppay`
  MODIFY `shopID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
