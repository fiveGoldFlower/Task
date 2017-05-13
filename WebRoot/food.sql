/*
SQLyog Ultimate v11.27 (32 bit)
MySQL - 5.6.30 : Database - homework2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`homework2` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `homework2`;

/*Table structure for table `t_comment` */

DROP TABLE IF EXISTS `t_comment`;

CREATE TABLE `t_comment` (
  `commentid` int(20) NOT NULL AUTO_INCREMENT,
  `food` int(20) NOT NULL,
  `customer` int(20) NOT NULL,
  `comment` varchar(80) NOT NULL,
  PRIMARY KEY (`commentid`),
  KEY `FKF437E194972E5A4` (`food`),
  KEY `FKF437E194BFD518A4` (`customer`),
  CONSTRAINT `FKF437E194972E5A4` FOREIGN KEY (`food`) REFERENCES `t_food` (`foodid`),
  CONSTRAINT `FKF437E194BFD518A4` FOREIGN KEY (`customer`) REFERENCES `t_customer` (`customerid`),
  CONSTRAINT `t_comment_ibfk_1` FOREIGN KEY (`food`) REFERENCES `t_food` (`foodid`),
  CONSTRAINT `t_comment_ibfk_2` FOREIGN KEY (`customer`) REFERENCES `t_customer` (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_comment` */

/*Table structure for table `t_customer` */

DROP TABLE IF EXISTS `t_customer`;

CREATE TABLE `t_customer` (
  `customerid` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `role` int(20) NOT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `t_customer` */

insert  into `t_customer`(`customerid`,`name`,`password`,`role`) values (1,'admin','123',0),(2,'hq','123',1),(3,'zhz','123',1),(4,'yyl','123',2);

/*Table structure for table `t_food` */

DROP TABLE IF EXISTS `t_food`;

CREATE TABLE `t_food` (
  `foodid` int(20) NOT NULL AUTO_INCREMENT,
  `foodname` varchar(40) NOT NULL,
  `price` int(40) NOT NULL,
  `filepath` varchar(100) NOT NULL,
  `vipprice` int(40) NOT NULL,
  PRIMARY KEY (`foodid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `t_food` */

insert  into `t_food`(`foodid`,`foodname`,`price`,`filepath`,`vipprice`) values (1,'鸡腿',50,'upload/f5f535bb-417b-414d-974f-78bfddac3072.jpg',20),(2,'牛排',100,'upload/beef.jpg',80);

/*Table structure for table `t_order` */

DROP TABLE IF EXISTS `t_order`;

CREATE TABLE `t_order` (
  `orderid` int(40) NOT NULL,
  `shop` int(40) NOT NULL,
  `total` int(80) NOT NULL,
  PRIMARY KEY (`orderid`),
  KEY `FKA0C0C3C397E82D4` (`shop`),
  CONSTRAINT `t_order_ibfk_1` FOREIGN KEY (`shop`) REFERENCES `t_shop` (`shopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_order` */

insert  into `t_order`(`orderid`,`shop`,`total`) values (1,1,20),(2,2,100),(3,3,120),(4,4,140),(5,5,160),(6,6,180),(7,7,200),(8,8,220),(9,8,220),(20,8,220),(48,8,220),(56,1,20),(96,1,220),(97,9,320),(98,10,320);

/*Table structure for table `t_shop` */

DROP TABLE IF EXISTS `t_shop`;

CREATE TABLE `t_shop` (
  `shopid` int(40) NOT NULL AUTO_INCREMENT,
  `food` int(40) NOT NULL,
  `customer` int(40) NOT NULL,
  `foodnum` int(40) NOT NULL,
  `unitprice` int(80) NOT NULL,
  PRIMARY KEY (`shopid`),
  KEY `FKCB62BBE1972E5A4` (`food`),
  KEY `FKCB62BBE1BFD518A4` (`customer`),
  CONSTRAINT `FKCB62BBE1972E5A4` FOREIGN KEY (`food`) REFERENCES `t_food` (`foodid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKCB62BBE1BFD518A4` FOREIGN KEY (`customer`) REFERENCES `t_customer` (`customerid`) ON UPDATE CASCADE,
  CONSTRAINT `t_shop_ibfk_1` FOREIGN KEY (`food`) REFERENCES `t_food` (`foodid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_shop_ibfk_2` FOREIGN KEY (`customer`) REFERENCES `t_customer` (`customerid`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `t_shop` */

insert  into `t_shop`(`shopid`,`food`,`customer`,`foodnum`,`unitprice`) values (1,1,2,1,20),(2,2,2,1,80),(3,1,2,1,20),(4,1,2,1,20),(5,1,2,1,20),(6,1,2,1,20),(7,1,2,1,20),(8,1,2,1,20),(9,2,3,3,80),(10,2,3,2,80);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
