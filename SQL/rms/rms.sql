/*
SQLyog Ultimate v9.02 
MySQL - 5.0.24-community-nt : Database - demo_ors
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`demo_ors` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `demo_ors`;

/*Table structure for table `course_faculty` */

DROP TABLE IF EXISTS `course_faculty`;

CREATE TABLE `course_faculty` (
  `ID` bigint(20) NOT NULL auto_increment,
  `USER` bigint(50) default NULL,
  `COURSE` bigint(50) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_course_faculty` (`USER`),
  KEY `FK_course_faculty2` (`COURSE`),
  CONSTRAINT `FK_course_faculty` FOREIGN KEY (`USER`) REFERENCES `st_user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_course_faculty2` FOREIGN KEY (`COURSE`) REFERENCES `st_course` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `course_faculty` */

insert  into `course_faculty`(`ID`,`USER`,`COURSE`) values (1,59,6),(2,57,6),(3,58,6),(5,53,7);

/*Table structure for table `st_college` */

DROP TABLE IF EXISTS `st_college`;

CREATE TABLE `st_college` (
  `ID` bigint(20) NOT NULL,
  `NAME` varchar(255) default NULL,
  `ADDRESS` varchar(255) default NULL,
  `STATE` varchar(255) default NULL,
  `CITY` varchar(255) default NULL,
  `PHONE_NO` varchar(255) default NULL,
  `CREATED_BY` varchar(255) default NULL,
  `MODIFIED_BY` varchar(255) default NULL,
  `CREATED_DATETIME` datetime default NULL,
  `MODIFIED_DATETIME` datetime default NULL,
  PRIMARY KEY  (`ID`),
  KEY `NAME_IDX` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `st_college` */

insert  into `st_college`(`ID`,`NAME`,`ADDRESS`,`STATE`,`CITY`,`PHONE_NO`,`CREATED_BY`,`MODIFIED_BY`,`CREATED_DATETIME`,`MODIFIED_DATETIME`) values (1,'SVITS','Indore','MP','Indore','2555898989','nitesh.bhatia999@gmail.com','nitesh.bhatia999@gmail.com','2016-02-18 21:18:30','2016-02-18 21:18:30'),(3,'SVIM','Gumasta Nagar','Madhya Pradesh','Indore','9999999999','Rahul Sahu','rahul.sahu@nenosystems.com','2014-07-19 17:42:17','2014-07-22 13:44:40'),(6,'IPS','KHANDWA ROAD','mp','INDORE','12345678901','nitesh.bhatia999@gmail.com','nitesh.bhatia999@gmail.com','2016-02-18 14:07:27','2016-02-18 14:07:27'),(7,'Astral','Indore','MP','Indore','9999999999','rahul.sahu@nenosystems.com','rahul.sahu@nenosystems.com','2014-07-31 16:47:09','2014-07-31 16:47:09'),(8,'RGTU','Bhopal','mp','Bhopal','23584645',NULL,NULL,NULL,NULL),(10,'Rnjeet Sing','indo','m.p.','indore','1234567890','null','rahul.sahu@nenosystems.com','2014-08-23 11:52:24','2014-08-23 11:52:24'),(11,'NRI','raysen','mp','bhopal','966465689889','nitesh.bhatia999@gmail.com','nitesh.bhatia999@gmail.com','2016-02-17 21:46:27','2016-02-17 21:46:27'),(12,'test','pune','mh','opu','4567891234','rahul.sahu@nenosystems.com','rahul.sahu@nenosystems.com','2014-09-04 19:32:05','2014-09-04 19:32:05'),(13,'LNCT','INDORE','mp','Indore','9876543210','superadmin@gmail.com','superadmin@gmail.com','2014-09-29 19:22:28','2014-09-29 19:22:28'),(14,'GYAN GANGA','JABALPUR','MP','JABALPUR','9876543210','superadmin@gmail.com','superadmin@gmail.com','2014-09-29 19:23:29','2014-09-29 19:23:29'),(15,'jsp','borawan','mp','indore','073124244','Admin','Admin','2015-12-23 18:34:35','2015-12-23 18:34:35'),(16,'NM NM','1166 Sudama Nagar Sec a Indore','msdhya pradesh','indore indore','12345678901','nitesh.bhatia999@gmail.com','nitesh.bhatia999@gmail.com','2016-01-09 18:26:45','2016-01-09 18:29:15'),(17,'NI','7878','mo','mo','8989898989','nitesh.bhatia999@gmail.com','nitesh.bhatia999@gmail.com','2016-01-21 18:50:08','2016-01-21 18:50:08'),(18,'wwwww','wwww ww ww','mp','Indore','1234567890','nitesh.bhatia999@gmail.com','nitesh.bhatia999@gmail.com','2016-01-22 09:59:05','2016-01-22 10:02:02'),(19,'BGFGGV','gttgfg','imhbg','rtre','1234567890','nitesh.bhatia999@gmail.com','nitesh.bhatia999@gmail.com','2016-02-15 15:25:38','2016-02-15 15:25:38'),(20,'Nghgh','dhdh','dhdhdjhj','dhdh','1234567890','nitesh.bhatia999@gmail.com','nitesh.bhatia999@gmail.com','2016-02-18 21:14:19','2016-02-18 21:14:19'),(21,'fhfhf','ghghgh','fhfhf','ghgh','1234567890','nitesh.bhatia999@gmail.com','nitesh.bhatia999@gmail.com','2016-02-15 16:09:10','2016-02-15 16:09:10'),(22,'djfhds','jfjfj','fjfj','fjfjfj','1234567890','nitesh.bhatia999@gmail.com','nitesh.bhatia999@gmail.com','2016-02-15 16:11:35','2016-02-15 16:11:35'),(23,'sfkjds','sdkjf','sdkjf','sdjk','1234567890','nitesh.bhatia999@gmail.com','nitesh.bhatia999@gmail.com','2016-02-15 18:11:29','2016-02-15 18:11:29'),(24,'jsdjk','dsjdskj23','ghgh','ghgh','464646464646464','nitesh.bhatia999@gmail.com','nitesh.bhatia999@gmail.com','2016-02-17 21:46:50','2016-02-17 21:46:50'),(25,'kimt','mhow','mp','indore','5669589876','nitesh.bhatia999@gmail.com','nitesh.bhatia999@gmail.com','2016-02-18 14:38:56','2016-02-18 14:38:56'),(26,'hjhjh','ghghg','hg','hgh','8888888888','nitesh.bhatia999@gmail.com','nitesh.bhatia999@gmail.com','2016-02-18 21:11:43','2016-02-18 21:11:43');

/*Table structure for table `st_course` */

DROP TABLE IF EXISTS `st_course`;

CREATE TABLE `st_course` (
  `ID` bigint(20) NOT NULL,
  `COURSE_NAME` varchar(45) default NULL,
  `DESCRIPTION` varchar(45) default NULL,
  `CREATED_BY` varchar(45) default NULL,
  `MODIFIED_BY` timestamp NULL default NULL,
  `CREATED_DATETIME` timestamp NULL default NULL,
  `MODIFIED_DATETIME` varchar(45) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `st_course` */

insert  into `st_course`(`ID`,`COURSE_NAME`,`DESCRIPTION`,`CREATED_BY`,`MODIFIED_BY`,`CREATED_DATETIME`,`MODIFIED_DATETIME`) values (1,'Maths','HOWzatt',NULL,NULL,NULL,NULL),(6,'HJ','GH',NULL,NULL,NULL,NULL),(7,'Spring','Spring',NULL,NULL,NULL,NULL),(8,'java','java',NULL,NULL,NULL,NULL);

/*Table structure for table `st_marksheet` */

DROP TABLE IF EXISTS `st_marksheet`;

CREATE TABLE `st_marksheet` (
  `ID` bigint(20) NOT NULL,
  `ROLL_NO` varchar(255) default NULL,
  `STUDENT_ID` bigint(20) default NULL,
  `NAME` varchar(255) default NULL,
  `PHYSICS` int(11) default NULL,
  `CHEMISTRY` int(11) default NULL,
  `MATHS` int(11) default NULL,
  `CREATED_BY` varchar(255) default NULL,
  `MODIFIED_BY` varchar(255) default NULL,
  `CREATED_DATETIME` datetime default NULL,
  `MODIFIED_DATETIME` datetime default NULL,
  PRIMARY KEY  (`ID`),
  KEY `fk_STUDENT_ID_idx` (`STUDENT_ID`),
  CONSTRAINT `fk_STUDENT_ID` FOREIGN KEY (`STUDENT_ID`) REFERENCES `student` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `st_marksheet` */

insert  into `st_marksheet`(`ID`,`ROLL_NO`,`STUDENT_ID`,`NAME`,`PHYSICS`,`CHEMISTRY`,`MATHS`,`CREATED_BY`,`MODIFIED_BY`,`CREATED_DATETIME`,`MODIFIED_DATETIME`) values (51,'111111',1,'Rahul Sahu',12,13,32,NULL,NULL,NULL,NULL),(62,'0909',3,NULL,90,78,23,NULL,NULL,NULL,NULL),(63,'767676',1,'Rahul Sahu',9,87,78,NULL,NULL,NULL,NULL),(64,'0861EC091789',4,NULL,98,89,67,NULL,NULL,NULL,NULL),(65,'12',4,NULL,50,50,50,NULL,NULL,NULL,NULL),(66,'19',4,'4',50,50,50,NULL,NULL,NULL,NULL),(67,'1223',4,'Akshay',50,50,50,NULL,NULL,NULL,NULL);

/*Table structure for table `st_role` */

DROP TABLE IF EXISTS `st_role`;

CREATE TABLE `st_role` (
  `ID` bigint(20) NOT NULL,
  `NAME` varchar(255) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `CREATED_BY` varchar(255) default NULL,
  `MODIFIED_BY` varchar(255) default NULL,
  `CREATED_DATETIME` timestamp NULL default CURRENT_TIMESTAMP,
  `MODIFIED_DATETIME` timestamp NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`ID`),
  KEY `NAME_IDX` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `st_role` */

insert  into `st_role`(`ID`,`NAME`,`DESCRIPTION`,`CREATED_BY`,`MODIFIED_BY`,`CREATED_DATETIME`,`MODIFIED_DATETIME`) values (1,'Admin','Admin Work',NULL,NULL,NULL,NULL),(2,'Student','Student Role Test','Rahul Sahu','rahul.sahu@nenosystems.com','2014-07-19 17:19:09','2014-07-22 18:59:16'),(3,'College','hhj',NULL,NULL,NULL,NULL),(4,'Faculty','Faculty Role','Rahul Sahu','pankaj.sahu@nenosystems.com','2014-07-19 17:19:48','2014-09-02 17:04:22'),(5,'Kiosk','Kiosk',NULL,NULL,NULL,NULL);

/*Table structure for table `st_user` */

DROP TABLE IF EXISTS `st_user`;

CREATE TABLE `st_user` (
  `ID` bigint(20) NOT NULL,
  `FIRST_NAME` varchar(255) default NULL,
  `LAST_NAME` varchar(255) default NULL,
  `LOGIN` varchar(255) default NULL,
  `PASSWORD` varbinary(255) default NULL,
  `DOB` datetime default NULL,
  `MOBILE_NO` varchar(255) default NULL,
  `ROLE_ID` bigint(20) default NULL,
  `UNSUCCESSFUL_LOGIN` int(11) default NULL,
  `GENDER` varchar(255) default NULL,
  `LAST_LOGIN` datetime default NULL,
  `USER_LOCK` varchar(255) default NULL,
  `REGISTERED_IP` varchar(255) default NULL,
  `LAST_LOGIN_IP` varchar(255) default NULL,
  `CREATED_BY` varchar(255) default NULL,
  `MODIFIED_BY` varchar(255) default NULL,
  `CREATED_DATETIME` datetime default NULL,
  `MODIFIED_DATETIME` datetime default NULL,
  PRIMARY KEY  (`ID`),
  KEY `fk_ROLE_ID_idx` (`ROLE_ID`),
  KEY `MOBILE_NO_IDX` (`MOBILE_NO`),
  KEY `FIRST_LAST_NAME_IDX` (`FIRST_NAME`,`LAST_NAME`),
  CONSTRAINT `fk_ROLE_ID` FOREIGN KEY (`ROLE_ID`) REFERENCES `st_role` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `st_user` */

insert  into `st_user`(`ID`,`FIRST_NAME`,`LAST_NAME`,`LOGIN`,`PASSWORD`,`DOB`,`MOBILE_NO`,`ROLE_ID`,`UNSUCCESSFUL_LOGIN`,`GENDER`,`LAST_LOGIN`,`USER_LOCK`,`REGISTERED_IP`,`LAST_LOGIN_IP`,`CREATED_BY`,`MODIFIED_BY`,`CREATED_DATETIME`,`MODIFIED_DATETIME`) values (1,'Nitesh','Bhatia','nitesh.bhatia999@gmail.com','rrrrrr','1983-02-01 00:00:00','9685409408',1,0,'M','2014-09-29 19:30:52','Inactive','0:0:0:0:0:0:0:1','192.168.1.17','Rahul Sahu','Rahul Sahu','2014-07-19 17:39:20','2014-07-19 18:29:23'),(19,'rahukk','Sahu','abhu.sahu@nenosystems.com','tttttt','1996-02-06 00:00:00','12345678901',2,0,'M',NULL,'Inactive',NULL,NULL,'root','nitesh.bhatia999@gmail.com','2014-09-01 13:34:16','2016-02-18 21:11:12'),(20,'ranjit','choudhary','ranjitchoudhary20@gmail.com','rr','2014-09-18 00:00:00',NULL,1,0,'M',NULL,'Inactive',NULL,NULL,'root','rahul.sahu@nenosystems.com','2014-09-01 17:58:16','2014-09-01 18:41:20'),(21,'Pankaj','Sahu','pankaj.sahu@nenosystems.com','karisma123','1986-11-07 00:00:00',NULL,1,0,'M',NULL,'Inactive',NULL,NULL,'root','nitesh.bhatia999@gmail.com','2014-09-01 19:50:04','2016-02-18 14:21:56'),(24,'test','test','test@gmail.com','pass1234','2014-09-03 00:00:00',NULL,2,0,'M',NULL,'Inactive',NULL,NULL,'root','root','2014-09-04 19:17:46','2014-09-04 19:17:51'),(27,'richa','trivedi','trivedi.richa88@gmail.com','123456','1988-01-27 00:00:00',NULL,2,0,'F',NULL,'Inactive',NULL,NULL,'root','root','2014-09-22 08:29:50','2014-09-22 08:29:50'),(28,'HKh','RK','hkrk@yahoo.com','qazxsw','1986-10-27 00:00:00',NULL,2,0,'M',NULL,'Inactive',NULL,NULL,'root','nitesh.bhatia999@gmail.com','2014-09-23 15:48:47','2016-02-18 21:09:42'),(29,'AbhirajSingh','Chouhanh','abhiraj2201@gmail.com','abhiraj','1989-01-22 00:00:00',NULL,2,0,'M',NULL,'Inactive',NULL,NULL,'root','nitesh.bhatia999@gmail.com','2014-09-23 22:43:34','2016-02-18 21:09:18'),(30,'Deepak','Prajapat','deepak.prajapat99@gmail.com','deepak','1992-09-23 00:00:00','7878787878',2,0,'M',NULL,'Inactive',NULL,NULL,'root','nitesh.bhatia999@gmail.com','2014-09-24 16:07:16','2016-02-18 14:19:04'),(31,'Asheesh','Patel','asheesh.patel@gmail.com','123456789','1990-01-11 00:00:00',NULL,2,0,'M',NULL,'Inactive',NULL,NULL,'root','root','2014-09-26 12:19:03','2014-09-26 12:19:03'),(32,'shubham','tiwari','shubhamtiwari@gmail.com','justbitit','2014-07-27 00:00:00',NULL,2,0,'M',NULL,'Inactive',NULL,NULL,'root','root','2014-09-27 14:06:08','2014-09-27 14:06:08'),(33,'harsh','dubey','hdubey29@gmail.com','3456888','1993-07-29 00:00:00',NULL,2,0,'M',NULL,'Inactive',NULL,NULL,'root','root','2014-09-29 11:15:41','2014-09-29 11:15:41'),(35,'superadmin','superadmin','superadmin@gmail.com','pass1234','2000-09-24 00:00:00','9876543210',1,0,'Male','2014-09-29 19:42:47','Inactive','192.168.1.17','192.168.1.17','rahul.sahu@nenosystems.com','rahul.sahu@nenosystems.com','2014-09-29 19:14:10',NULL),(36,'admin','admin','admin@gmail.com','pass1234','2000-09-24 00:00:00','9876543210',1,0,'Male','2014-09-29 19:34:18','Inactive','192.168.1.17','192.168.1.17','rahul.sahu@nenosystems.com','rahul.sahu@nenosystems.com','2014-09-29 19:14:10',NULL),(37,'jay','jay','jay@gmail.com','pass1234','2014-09-03 00:00:00','9876543210',2,0,'Male',NULL,'Inactive','192.168.1.17','192.168.1.17','superadmin@gmail.com','superadmin@gmail.com','2014-09-29 19:40:35','2014-09-29 19:40:35'),(38,'dk','pandey','dk@gmail.com','pass1234','2000-09-09 00:00:00','9876543210',2,0,'Male',NULL,'Inactive','192.168.1.17','192.168.1.17','superadmin@gmail.com','superadmin@gmail.com','2014-09-29 19:41:43','2014-09-29 19:41:43'),(39,'niku','bhatia','niku@gmail.com','papa789','2015-12-09 00:00:00',NULL,2,0,'M',NULL,'Inactive',NULL,NULL,'root','root','2015-12-24 18:43:50','2015-12-24 18:43:50'),(40,'nmm','nnsns','djdd@gmail.com','123890765','2015-12-16 00:00:00',NULL,2,0,'M',NULL,'Inactive',NULL,NULL,'root','root','2015-12-24 18:45:24','2015-12-24 18:45:24'),(41,'me','me','me@gmail.com','aaadghun','2015-12-22 00:00:00',NULL,2,0,'M',NULL,'Inactive',NULL,NULL,'root','root','2015-12-24 18:54:50','2015-12-24 18:54:50'),(42,'papa','papa','papa@gmail.com','papagande','2015-12-02 00:00:00',NULL,2,0,'M',NULL,'Inactive',NULL,NULL,'root','root','2015-12-24 19:02:04','2015-12-24 19:02:04'),(43,'papa','papa','pa1pa@gmail.com','papagij','2015-12-08 00:00:00',NULL,2,0,'M',NULL,'Inactive',NULL,NULL,'root','root','2015-12-24 19:04:33','2015-12-24 19:04:44'),(44,'ravi','MIA','nitesh.bhatia@gmail.com','123467yhgt','1991-02-09 00:00:00',NULL,1,0,'M',NULL,'Inactive',NULL,NULL,'rahul.sahu@nenosystems.com','rahul.sahu@nenosystems.com','2016-01-03 10:08:48','2016-01-03 10:08:48'),(45,'Priyanka','Chauhan','priyanka.chouhan871@gmail.com','123juigg','2016-01-06 00:00:00',NULL,2,0,'F',NULL,'Inactive',NULL,NULL,'nitesh.bhatia999@gmail.com','nitesh.bhatia999@gmail.com','2016-01-05 19:15:41','2016-01-05 19:15:41'),(46,'Manish','Kumar','manish.mohade@gmail.com','123809i8','2016-01-05 00:00:00',NULL,3,0,'M',NULL,'Inactive',NULL,NULL,'nitesh.bhatia999@gmail.com','nitesh.bhatia999@gmail.com','2016-01-11 15:41:54','2016-01-11 15:41:54'),(47,'NIKU','Bhatia','gmgmgm@m.com','wwwwww98','2016-01-01 00:00:00',NULL,3,0,'F',NULL,'Inactive',NULL,NULL,'nitesh.bhatia999@gmail.com','nitesh.bhatia999@gmail.com','2016-01-16 15:49:27','2016-01-16 15:49:27'),(48,'OM','NO','NO@no.com','1234569','2016-01-05 00:00:00',NULL,1,0,'F',NULL,'Inactive',NULL,NULL,'nitesh.bhatia999@gmail.com','nitesh.bhatia999@gmail.com','2016-01-16 15:55:10','2016-01-16 15:55:22'),(49,'OM','NO','NO12@no.com','123456hj','2016-01-05 00:00:00',NULL,1,0,'F',NULL,'Inactive',NULL,NULL,'nitesh.bhatia999@gmail.com','nitesh.bhatia999@gmail.com','2016-01-16 15:55:10','2016-01-16 15:56:37'),(50,'Omni','Omni','Omni@gmi.com','1234567','2016-01-06 00:00:00',NULL,3,0,'F',NULL,'Inactive',NULL,NULL,'nitesh.bhatia999@gmail.com','nitesh.bhatia999@gmail.com','2016-01-16 15:58:47','2016-01-16 15:58:47'),(51,'OMNIU','OMNIU','OMNIU@gmail.com','wwwwwwgh','2016-01-15 00:00:00',NULL,1,0,'F',NULL,'Inactive',NULL,NULL,'nitesh.bhatia999@gmail.com','nitesh.bhatia999@gmail.com','2016-01-16 16:01:55','2016-01-16 16:01:55'),(52,'OMNIUww','OMNIUww','OMNIUww@f.com','1234567kl','2016-01-05 00:00:00',NULL,1,0,'F',NULL,'Inactive',NULL,NULL,'nitesh.bhatia999@gmail.com','nitesh.bhatia999@gmail.com','2016-01-16 16:06:51','2016-01-16 16:06:51'),(53,'db','bs','as@gmail.com','1234567','2016-01-05 00:00:00',NULL,4,0,'F',NULL,'Inactive',NULL,NULL,'root','root','2016-01-18 18:31:56','2016-01-18 18:52:18'),(57,'Arpit','Namdev','atongaria@gmail.com','123456','2016-01-03 00:00:00',NULL,4,0,'M',NULL,'Inactive',NULL,NULL,'root','root','2016-01-22 15:01:47','2016-01-22 15:01:47'),(58,'Megha','sharma','mg@gmail.com','0007','2016-02-11 00:00:00',NULL,4,0,'F',NULL,'Inactive',NULL,NULL,'nitesh.bhatia999@gmail.com','nitesh.bhatia999@gmail.com','2016-02-19 15:03:36','2016-02-19 15:03:36'),(59,'Anu','sharma','af@gmail.com','000000','2016-02-03 00:00:00',NULL,4,0,'F',NULL,'Inactive',NULL,NULL,'nitesh.bhatia999@gmail.com','nitesh.bhatia999@gmail.com','2016-02-19 15:06:12','2016-02-19 15:06:12'),(60,'Ravi','bhatia','rb@gmail.com','000000','1997-02-04 00:00:00',NULL,5,0,'M',NULL,'Inactive',NULL,NULL,'nitesh.bhatia999@gmail.com','nitesh.bhatia999@gmail.com','2016-02-19 15:09:03','2016-02-19 15:09:03'),(61,'amit','Deshmukh','amitdeshmukh1810@gmail.com','1234567','1997-02-06 00:00:00',NULL,2,0,'M',NULL,'Inactive',NULL,NULL,'root','root','2016-02-20 19:49:02','2016-02-20 19:49:02'),(62,'Vinay','Bhatia','vinaybhatia1997@gmail.com','1234567','1997-11-16 00:00:00',NULL,2,0,'M',NULL,'Inactive',NULL,NULL,'root','root','2016-02-21 16:07:38','2016-02-21 16:07:38'),(63,'Arpit','Tongaria','atongaria@gmail.com','pass12','1990-07-03 00:00:00',NULL,1,NULL,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(64,'Arjun','Kapoor','kapoor@gmail.com','123456','1997-02-06 00:00:00',NULL,4,NULL,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(65,'Sahil','Kapoor','kapoo@gmail.com','123456','1997-02-06 00:00:00',NULL,4,NULL,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(66,'Pinky','gupta','gupta@gmail.com','123456','1997-02-06 00:00:00',NULL,4,NULL,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(67,'Rizwaan','Khan','khan@gmail.com','123456',NULL,NULL,2,NULL,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(68,'Arjun','Kapoor','kapoora@gmail.com','123456','1989-03-07 00:00:00',NULL,4,0,'M',NULL,'Inactive',NULL,NULL,'atongaria@gmail.com','atongaria@gmail.com','2016-03-18 11:37:11','2016-03-18 11:37:11');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `ID` bigint(20) NOT NULL,
  `COLLEGE_ID` bigint(20) default NULL,
  `COLLEGE_NAME` varchar(255) default NULL,
  `FIRST_NAME` varchar(255) default NULL,
  `LAST_NAME` varchar(255) default NULL,
  `DATE_OF_BIRTH` datetime default NULL,
  `MOBILE_NO` varchar(255) default NULL,
  `EMAIL` varchar(255) default NULL,
  `CREATED_BY` varchar(255) default NULL,
  `MODIFIED_BY` varchar(255) default NULL,
  `CREATED_DATETIME` datetime default NULL,
  `MODIFIED_DATETIME` datetime default NULL,
  PRIMARY KEY  (`ID`),
  KEY `MOBILE_NO_IDX` (`MOBILE_NO`),
  KEY `fk_COLLEGE_ID_idx` (`COLLEGE_ID`),
  KEY `FIRST_LAST_NAME_IDX` (`FIRST_NAME`,`LAST_NAME`),
  CONSTRAINT `fk_COLLEGE_ID` FOREIGN KEY (`COLLEGE_ID`) REFERENCES `st_college` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `student` */

insert  into `student`(`ID`,`COLLEGE_ID`,`COLLEGE_NAME`,`FIRST_NAME`,`LAST_NAME`,`DATE_OF_BIRTH`,`MOBILE_NO`,`EMAIL`,`CREATED_BY`,`MODIFIED_BY`,`CREATED_DATETIME`,`MODIFIED_DATETIME`) values (1,1,'SVITS','Rahul','Sahu','2012-02-02 00:00:00','9998548564','rs@gmail.com',NULL,NULL,NULL,NULL),(3,6,'IPS','vaibhav','Trivedi','1997-12-03 00:00:00','1234567890','vt@gmail.com','nitesh.bhatia999@gmail.com','nitesh.bhatia999@gmail.com','2016-02-18 13:54:53','2016-02-18 13:54:53'),(4,10,'Rnjeet Sing','Akshay','Khana','1991-01-01 00:00:00','7685409408','akdja@sakak.com','nitesh.bhatia999@gmail.com','nitesh.bhatia999@gmail.com','2016-02-21 16:14:45','2016-02-21 16:14:45');

/*Table structure for table `time_table` */

DROP TABLE IF EXISTS `time_table`;

CREATE TABLE `time_table` (
  `ID` varchar(20) NOT NULL,
  `FACULTY_ID` bigint(20) default NULL,
  `COLLEGE_ID` bigint(20) default NULL,
  `COURSE_ID` bigint(20) default NULL,
  `START_DATE` datetime default NULL,
  `END_DATE` datetime default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_time_table2` (`FACULTY_ID`),
  KEY `FK_time_table` (`COLLEGE_ID`),
  KEY `FK_time_table4` (`COURSE_ID`),
  CONSTRAINT `FK_time_table` FOREIGN KEY (`COLLEGE_ID`) REFERENCES `st_college` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_time_table2` FOREIGN KEY (`FACULTY_ID`) REFERENCES `st_user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_time_table4` FOREIGN KEY (`COURSE_ID`) REFERENCES `st_course` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `time_table` */

insert  into `time_table`(`ID`,`FACULTY_ID`,`COLLEGE_ID`,`COURSE_ID`,`START_DATE`,`END_DATE`) values ('1',59,13,1,'2016-03-11 00:00:00','2016-03-20 00:00:00'),('2',58,17,7,'2016-02-03 00:00:00','2016-02-18 00:00:00'),('3',60,6,8,'2016-02-09 00:00:00','2016-02-18 00:00:00'),('4',57,1,6,'2016-02-09 00:00:00','2016-02-02 00:00:00');

/*Table structure for table `user_faculty` */

DROP TABLE IF EXISTS `user_faculty`;

CREATE TABLE `user_faculty` (
  `ID` bigint(20) NOT NULL,
  `COLLEGE_ID` bigint(45) default NULL,
  `USER_ID` bigint(45) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_user_faculty` (`COLLEGE_ID`),
  CONSTRAINT `FK_user_faculty` FOREIGN KEY (`COLLEGE_ID`) REFERENCES `st_college` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_faculty` */

insert  into `user_faculty`(`ID`,`COLLEGE_ID`,`USER_ID`) values (1,1,61),(2,1,60),(3,8,59),(4,17,57),(5,14,58),(6,1,53),(8,13,64),(9,8,68);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
