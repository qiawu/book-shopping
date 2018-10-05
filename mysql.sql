/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.7-rc-log : Database - shopping
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shopping` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shopping`;

/*Table structure for table `books` */

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `bookID` char(8) CHARACTER SET utf8mb4 NOT NULL,
  `title` varchar(25) CHARACTER SET utf8mb4 NOT NULL,
  `author` varchar(25) CHARACTER SET utf8mb4 NOT NULL,
  `press` varchar(25) CHARACTER SET utf8mb4 NOT NULL,
  `price` decimal(10,1) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` mediumblob NOT NULL,
  `seller` varchar(12) CHARACTER SET utf8mb4 NOT NULL,
  `importDate` date NOT NULL,
  PRIMARY KEY (`bookID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `books` */


/*Table structure for table `buyrecords` */

DROP TABLE IF EXISTS `buyrecords`;

CREATE TABLE `buyrecords` (
  `tradeID` char(10) NOT NULL COMMENT 'TD11111111',
  `tradeDate` date NOT NULL,
  `buyer` varchar(12) NOT NULL,
  `bookID` char(8) NOT NULL,
  `title` varchar(25) NOT NULL,
  `author` varchar(25) NOT NULL,
  `press` varchar(25) NOT NULL,
  `price` decimal(10,1) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` mediumblob NOT NULL,
  `seller` varchar(12) NOT NULL,
  PRIMARY KEY (`tradeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `buyrecords` */


/*Table structure for table `comments` */

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `username` varchar(12) NOT NULL,
  `bookID` char(8) DEFAULT NULL,
  `datetime` datetime NOT NULL,
  `content` text,
  PRIMARY KEY (`username`,`datetime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `comments` */

insert  into `comments`(`username`,`bookID`,`datetime`,`content`) values ('qqqqqq','BK267213','2016-06-19 12:04:30','# 输入 666 '),('qqqqqq','BK23469','2016-06-19 13:22:14','![ClipboardImage](https://cdn.wilddog.com/images/ads/oschina/oschina-250x250-x2-1.jpg)![ClipboardImage](http://172.21.59.162:3500/image/books/BK23469)');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `username` varchar(12) NOT NULL,
  `content` text,
  `datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `messages` */

insert  into `messages`(`username`,`content`,`datetime`) values ('moyuyc','# Node express4.x入门建站！！\r\n```\r\n/**\r\n * Created by Yc on 2016/6/9.\r\n */\r\n!function () {\r\n    hljs.initHighlightingOnLoad();\r\n    var i =document.getElementById(\'html-show\');\r\n    i.contentWindow.onload = function(){\r\n        var h= 30+i.contentDocument.body.clientHeight;\r\n        if(i.clientHeight<h)\r\n            i.style.height = h+\'px\';\r\n    };\r\n}()\r\n```','2016-06-18 17:41:48'),('moyuyc','# 输入xsssdwxsz','2016-06-19 10:04:14');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `username` varchar(12) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(12) DEFAULT NULL,
  `registerDate` date DEFAULT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`username`,`email`,`password`,`registerDate`) values ('moyuyc','492899414@qq.com','123456','2016-06-16'),('qqqqqq','4928994142@qq.com','123456','2016-06-18');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
