/*
SQLyog Ultimate v11.27 (32 bit)
MySQL - 5.6.30 : Database - homework3
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`homework3` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `homework3`;

/*Table structure for table `t_comment` */

DROP TABLE IF EXISTS `t_comment`;

CREATE TABLE `t_comment` (
  `commentid` int(40) NOT NULL AUTO_INCREMENT,
  `food` int(40) NOT NULL,
  `customer` int(40) NOT NULL,
  `comment` varchar(200) NOT NULL,
  PRIMARY KEY (`commentid`),
  KEY `FKF437E194972E5A4` (`food`),
  KEY `FKF437E194BFD518A4` (`customer`),
  CONSTRAINT `FKF437E194972E5A4` FOREIGN KEY (`food`) REFERENCES `t_food` (`foodid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKF437E194BFD518A4` FOREIGN KEY (`customer`) REFERENCES `t_customer` (`customerid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_comment_ibfk_1` FOREIGN KEY (`food`) REFERENCES `t_food` (`foodid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_comment_ibfk_2` FOREIGN KEY (`customer`) REFERENCES `t_customer` (`customerid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_comment` */

/*Table structure for table `t_customer` */

DROP TABLE IF EXISTS `t_customer`;

CREATE TABLE `t_customer` (
  `customerid` int(40) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL,
  `role` int(40) NOT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `t_customer` */

insert  into `t_customer`(`customerid`,`name`,`password`,`role`) values (1,'admin','123',0),(2,'hq','123',1);

/*Table structure for table `t_food` */

DROP TABLE IF EXISTS `t_food`;

CREATE TABLE `t_food` (
  `foodid` int(20) NOT NULL AUTO_INCREMENT,
  `foodname` varchar(40) NOT NULL,
  `filepath` varchar(100) NOT NULL,
  `price` int(40) NOT NULL,
  `vipprice` int(40) NOT NULL,
  PRIMARY KEY (`foodid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `t_food` */

insert  into `t_food`(`foodid`,`foodname`,`filepath`,`price`,`vipprice`) values (3,'沙拉','upload/salad.jpg',40,35),(4,'海鲜','upload/seafood.jpg',50,40);

/*Table structure for table `t_order` */

DROP TABLE IF EXISTS `t_order`;

CREATE TABLE `t_order` (
  `orderid` int(40) NOT NULL AUTO_INCREMENT,
  `shop` int(40) NOT NULL,
  `total` int(80) NOT NULL,
  `time` varchar(100) NOT NULL,
  PRIMARY KEY (`orderid`),
  KEY `FKA0C0C3C397E82D4` (`shop`),
  CONSTRAINT `FKA0C0C3C397E82D4` FOREIGN KEY (`shop`) REFERENCES `t_shop` (`shopid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_order_ibfk_1` FOREIGN KEY (`shop`) REFERENCES `t_shop` (`shopid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `t_order` */

insert  into `t_order`(`orderid`,`shop`,`total`,`time`) values (1,3,105,'2017-05-16 10:44:58');

/*Table structure for table `t_shop` */

DROP TABLE IF EXISTS `t_shop`;

CREATE TABLE `t_shop` (
  `shopid` int(40) NOT NULL AUTO_INCREMENT,
  `food` int(40) NOT NULL,
  `customer` int(40) NOT NULL,
  `foodnum` int(40) NOT NULL,
  `unitprice` int(80) NOT NULL,
  `time` varchar(100) NOT NULL,
  PRIMARY KEY (`shopid`),
  KEY `FKCB62BBE1972E5A4` (`food`),
  KEY `FKCB62BBE1BFD518A4` (`customer`),
  CONSTRAINT `FKCB62BBE1972E5A4` FOREIGN KEY (`food`) REFERENCES `t_food` (`foodid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKCB62BBE1BFD518A4` FOREIGN KEY (`customer`) REFERENCES `t_customer` (`customerid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_shop_ibfk_1` FOREIGN KEY (`food`) REFERENCES `t_food` (`foodid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_shop_ibfk_2` FOREIGN KEY (`customer`) REFERENCES `t_customer` (`customerid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `t_shop` */

insert  into `t_shop`(`shopid`,`food`,`customer`,`foodnum`,`unitprice`,`time`) values (3,3,2,3,35,'2017-05-16 10:15:19');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
