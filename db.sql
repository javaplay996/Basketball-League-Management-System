/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - lanqiulianmengguanlxitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`lanqiulianmengguanlxitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `lanqiulianmengguanlxitong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-07 09:06:04'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-07 09:06:04'),(3,'gonggao_types','篮球资讯类型',1,'篮球资讯类型1',NULL,NULL,'2023-04-07 09:06:04'),(4,'gonggao_types','篮球资讯类型',2,'篮球资讯类型2',NULL,NULL,'2023-04-07 09:06:04'),(5,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-04-07 09:06:04'),(6,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-04-07 09:06:04'),(7,'qiudui_types','球队类型',1,'男篮',NULL,NULL,'2023-04-07 09:06:04'),(8,'qiudui_types','球队类型',2,'女篮',NULL,NULL,'2023-04-07 09:06:04'),(9,'qiudui_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-07 09:06:04'),(10,'qiudui_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-04-07 09:06:04'),(11,'qiudui_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-04-07 09:06:04'),(12,'qiuyuan_types','球员位置',1,'球员位置1',NULL,NULL,'2023-04-07 09:06:04'),(13,'qiuyuan_types','球员位置',2,'球员位置2',NULL,NULL,'2023-04-07 09:06:04'),(14,'qiuyuan_types','球员位置',3,'球员位置3',NULL,NULL,'2023-04-07 09:06:04'),(15,'qiuyuan_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-07 09:06:04'),(16,'qiuyuan_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-04-07 09:06:04'),(17,'qiuyuan_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-04-07 09:06:04');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',2,NULL,'发布内容1',422,1,'2023-04-07 09:06:18','2023-04-07 09:06:18','2023-04-07 09:06:18'),(2,'帖子标题2',3,NULL,'发布内容2',72,1,'2023-04-07 09:06:18','2023-04-07 09:06:18','2023-04-07 09:06:18'),(3,'帖子标题3',2,NULL,'发布内容3',94,1,'2023-04-07 09:06:18','2023-04-07 09:06:18','2023-04-07 09:06:18'),(4,'帖子标题4',3,NULL,'发布内容4',146,1,'2023-04-07 09:06:18','2023-04-07 09:06:18','2023-04-07 09:06:18'),(5,'帖子标题5',1,NULL,'发布内容5',94,1,'2023-04-07 09:06:18','2023-04-07 09:06:18','2023-04-07 09:06:18'),(6,'帖子标题6',3,NULL,'发布内容6',63,1,'2023-04-07 09:06:18','2023-04-07 09:06:18','2023-04-07 09:06:18'),(7,'帖子标题7',3,NULL,'发布内容7',204,1,'2023-04-07 09:06:18','2023-04-07 09:06:18','2023-04-07 09:06:18'),(8,'帖子标题8',2,NULL,'发布内容8',330,1,'2023-04-07 09:06:18','2023-04-07 09:06:18','2023-04-07 09:06:18'),(9,'帖子标题9',1,NULL,'发布内容9',86,1,'2023-04-07 09:06:18','2023-04-07 09:06:18','2023-04-07 09:06:18'),(10,'帖子标题10',1,NULL,'发布内容10',494,1,'2023-04-07 09:06:18','2023-04-07 09:06:18','2023-04-07 09:06:18'),(11,'帖子标题11',1,NULL,'发布内容11',391,1,'2023-04-07 09:06:18','2023-04-07 09:06:18','2023-04-07 09:06:18'),(12,'帖子标题12',1,NULL,'发布内容12',394,1,'2023-04-07 09:06:18','2023-04-07 09:06:18','2023-04-07 09:06:18'),(13,'帖子标题13',3,NULL,'发布内容13',303,1,'2023-04-07 09:06:18','2023-04-07 09:06:18','2023-04-07 09:06:18'),(14,'帖子标题14',2,NULL,'发布内容14',188,1,'2023-04-07 09:06:18','2023-04-07 09:06:18','2023-04-07 09:06:18'),(15,'帖子',1,NULL,'<p>帖子1111</p>',NULL,1,'2023-04-07 09:24:39',NULL,'2023-04-07 09:24:39'),(16,NULL,NULL,1,'手打撒',15,2,'2023-04-07 09:27:56',NULL,'2023-04-07 09:27:56');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '篮球资讯名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '篮球资讯图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '篮球资讯类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '篮球资讯详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='篮球资讯';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'篮球资讯名称1','upload/gonggao1.jpg',1,'2023-04-07 09:06:18','篮球资讯详情1','2023-04-07 09:06:18'),(2,'篮球资讯名称2','upload/gonggao2.jpg',1,'2023-04-07 09:06:18','篮球资讯详情2','2023-04-07 09:06:18'),(3,'篮球资讯名称3','upload/gonggao3.jpg',2,'2023-04-07 09:06:18','篮球资讯详情3','2023-04-07 09:06:18'),(4,'篮球资讯名称4','upload/gonggao4.jpg',1,'2023-04-07 09:06:18','篮球资讯详情4','2023-04-07 09:06:18'),(5,'篮球资讯名称5','upload/gonggao5.jpg',1,'2023-04-07 09:06:18','篮球资讯详情5','2023-04-07 09:06:18'),(6,'篮球资讯名称6','upload/gonggao6.jpg',1,'2023-04-07 09:06:18','篮球资讯详情6','2023-04-07 09:06:18'),(7,'篮球资讯名称7','upload/gonggao7.jpg',1,'2023-04-07 09:06:18','篮球资讯详情7','2023-04-07 09:06:18'),(8,'篮球资讯名称8','upload/gonggao8.jpg',2,'2023-04-07 09:06:18','篮球资讯详情8','2023-04-07 09:06:18'),(9,'篮球资讯名称9','upload/gonggao9.jpg',1,'2023-04-07 09:06:18','篮球资讯详情9','2023-04-07 09:06:18'),(10,'篮球资讯名称10','upload/gonggao10.jpg',1,'2023-04-07 09:06:18','篮球资讯详情10','2023-04-07 09:06:18'),(11,'篮球资讯名称11','upload/gonggao11.jpg',1,'2023-04-07 09:06:18','篮球资讯详情11','2023-04-07 09:06:18'),(12,'篮球资讯名称12','upload/gonggao12.jpg',2,'2023-04-07 09:06:18','篮球资讯详情12','2023-04-07 09:06:18'),(13,'篮球资讯名称13','upload/gonggao13.jpg',1,'2023-04-07 09:06:18','篮球资讯详情13','2023-04-07 09:06:18'),(14,'篮球资讯名称14','upload/gonggao14.jpg',1,'2023-04-07 09:06:18','篮球资讯详情14','2023-04-07 09:06:18');

/*Table structure for table `qiudui` */

DROP TABLE IF EXISTS `qiudui`;

CREATE TABLE `qiudui` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `qiudui_name` varchar(200) DEFAULT NULL COMMENT '球队名称  Search111 ',
  `qiudui_uuid_number` varchar(200) DEFAULT NULL COMMENT '球队编号',
  `qiudui_photo` varchar(200) DEFAULT NULL COMMENT '球队照片',
  `qiudui_jiaiolian` varchar(200) DEFAULT NULL COMMENT '球队主教练',
  `qiudui_guojia` varchar(200) DEFAULT NULL COMMENT '所属国家',
  `qiudui_address` varchar(200) DEFAULT NULL COMMENT '球队地点',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `chuangjian_time` date DEFAULT NULL COMMENT '球队创建时间',
  `qiudui_types` int(11) DEFAULT NULL COMMENT '球队类型 Search111',
  `qiudui_clicknum` int(11) DEFAULT NULL COMMENT '球队热度',
  `qiudui_content` longtext COMMENT '球队介绍 ',
  `qiudui_rongyu_content` longtext COMMENT '球队荣誉 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='球队';

/*Data for the table `qiudui` */

insert  into `qiudui`(`id`,`qiudui_name`,`qiudui_uuid_number`,`qiudui_photo`,`qiudui_jiaiolian`,`qiudui_guojia`,`qiudui_address`,`zan_number`,`cai_number`,`chuangjian_time`,`qiudui_types`,`qiudui_clicknum`,`qiudui_content`,`qiudui_rongyu_content`,`insert_time`,`create_time`) values (1,'球队名称1','1680829578264','/upload/1680830202881.jpg','球队主教练1','所属国家1','球队地点1',93,270,'2023-04-07',2,370,'球队介绍1','球队荣誉1','2023-04-07 09:06:18','2023-04-07 09:06:18'),(2,'球队名称2','1680829578267','/upload/1680830186912.jpg','球队主教练2','所属国家2','球队地点2',76,14,'2023-04-07',2,395,'球队介绍2','球队荣誉2','2023-04-07 09:06:18','2023-04-07 09:06:18'),(3,'球队名称3','1680829578286','/upload/1680830162189.jpg','球队主教练3','所属国家3','球队地点3',124,260,'2023-04-07',1,32,'球队介绍3','球队荣誉3','2023-04-07 09:06:18','2023-04-07 09:06:18'),(4,'球队名称4','1680829578322','/upload/1680830145489.jpg','球队主教练4','所属国家4','球队地点4',123,246,'2023-04-07',1,355,'球队介绍4','球队荣誉4','2023-04-07 09:06:18','2023-04-07 09:06:18'),(5,'球队名称5','1680829578235','/upload/1680830131905.jpg','球队主教练5','所属国家5','球队地点5',368,126,'2023-04-07',1,220,'球队介绍5','球队荣誉5','2023-04-07 09:06:18','2023-04-07 09:06:18'),(6,'球队名称6','1680829578258','/upload/1680830112386.jpg','球队主教练6','所属国家6','球队地点6',100,120,'2023-04-07',2,437,'球队介绍6','球队荣誉6','2023-04-07 09:06:18','2023-04-07 09:06:18'),(7,'球队名称7','1680829578256','/upload/1680830202881.jpg','球队主教练7','所属国家7','球队地点7',399,424,'2023-04-07',1,500,'球队介绍7','球队荣誉7','2023-04-07 09:06:18','2023-04-07 09:06:18'),(8,'球队名称8','1680829578317','/upload/1680830186912.jpg','球队主教练8','所属国家8','球队地点8',242,464,'2023-04-07',1,49,'球队介绍8','球队荣誉8','2023-04-07 09:06:18','2023-04-07 09:06:18'),(9,'球队名称9','1680829578285','/upload/1680830202881.jpg','球队主教练9','所属国家9','球队地点9',45,387,'2023-04-07',1,209,'<p>球队介绍9</p>','<p>球队荣誉9</p>','2023-04-07 09:06:18','2023-04-07 09:06:18'),(10,'球队名称10','1680829578267','/upload/1680830186912.jpg','球队主教练10','所属国家10','球队地点10',126,145,'2023-04-07',1,28,'<p>球队介绍10</p>','<p>球队荣誉10</p>','2023-04-07 09:06:18','2023-04-07 09:06:18'),(11,'球队名称11','1680829578293','/upload/1680830162189.jpg','球队主教练11','所属国家11','球队地点11',271,8,'2023-04-07',2,353,'<p>球队介绍11</p>','<p>球队荣誉11</p>','2023-04-07 09:06:18','2023-04-07 09:06:18'),(12,'球队名称12','1680829578298','/upload/1680830145489.jpg','球队主教练12','所属国家12','球队地点12',74,339,'2023-04-07',2,92,'<p>球队介绍12</p>','<p>球队荣誉12</p>','2023-04-07 09:06:18','2023-04-07 09:06:18'),(13,'球队名称13','1680829578276','/upload/1680830131905.jpg','球队主教练13','所属国家13','球队地点13',342,442,'2023-04-07',1,239,'<p>球队介绍13</p>','<p>球队荣誉13</p>','2023-04-07 09:06:18','2023-04-07 09:06:18'),(14,'球队名称14','1680829578306','/upload/1680830112386.jpg','球队主教练14','所属国家14','球队地点14',362,255,'2023-04-07',2,409,'<p>球队介绍14</p>','<p>球队荣誉14</p>','2023-04-07 09:06:18','2023-04-07 09:06:18');

/*Table structure for table `qiudui_collection` */

DROP TABLE IF EXISTS `qiudui_collection`;

CREATE TABLE `qiudui_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qiudui_id` int(11) DEFAULT NULL COMMENT '球队',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `qiudui_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='球队收藏';

/*Data for the table `qiudui_collection` */

insert  into `qiudui_collection`(`id`,`qiudui_id`,`yonghu_id`,`qiudui_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-04-07 09:06:18','2023-04-07 09:06:18'),(2,2,1,1,'2023-04-07 09:06:18','2023-04-07 09:06:18'),(3,3,3,1,'2023-04-07 09:06:18','2023-04-07 09:06:18'),(4,4,2,1,'2023-04-07 09:06:18','2023-04-07 09:06:18'),(5,5,1,1,'2023-04-07 09:06:18','2023-04-07 09:06:18'),(6,6,2,1,'2023-04-07 09:06:18','2023-04-07 09:06:18'),(7,7,1,1,'2023-04-07 09:06:18','2023-04-07 09:06:18'),(8,8,1,1,'2023-04-07 09:06:18','2023-04-07 09:06:18'),(9,9,2,1,'2023-04-07 09:06:18','2023-04-07 09:06:18'),(10,10,3,1,'2023-04-07 09:06:18','2023-04-07 09:06:18'),(11,11,1,1,'2023-04-07 09:06:18','2023-04-07 09:06:18'),(12,12,2,1,'2023-04-07 09:06:18','2023-04-07 09:06:18'),(13,13,2,1,'2023-04-07 09:06:18','2023-04-07 09:06:18'),(15,14,1,1,'2023-04-07 09:25:21','2023-04-07 09:25:21'),(17,14,1,3,'2023-04-07 09:25:40','2023-04-07 09:25:40');

/*Table structure for table `qiudui_liuyan` */

DROP TABLE IF EXISTS `qiudui_liuyan`;

CREATE TABLE `qiudui_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qiudui_id` int(11) DEFAULT NULL COMMENT '球队',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `qiudui_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='球队留言';

/*Data for the table `qiudui_liuyan` */

insert  into `qiudui_liuyan`(`id`,`qiudui_id`,`yonghu_id`,`qiudui_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'留言内容1','2023-04-07 09:06:18','回复信息1','2023-04-07 09:06:18','2023-04-07 09:06:18'),(2,2,2,'留言内容2','2023-04-07 09:06:18','回复信息2','2023-04-07 09:06:18','2023-04-07 09:06:18'),(3,3,2,'留言内容3','2023-04-07 09:06:18','回复信息3','2023-04-07 09:06:18','2023-04-07 09:06:18'),(4,4,3,'留言内容4','2023-04-07 09:06:18','回复信息4','2023-04-07 09:06:18','2023-04-07 09:06:18'),(5,5,2,'留言内容5','2023-04-07 09:06:18','回复信息5','2023-04-07 09:06:18','2023-04-07 09:06:18'),(6,6,3,'留言内容6','2023-04-07 09:06:18','回复信息6','2023-04-07 09:06:18','2023-04-07 09:06:18'),(7,7,1,'留言内容7','2023-04-07 09:06:18','回复信息7','2023-04-07 09:06:18','2023-04-07 09:06:18'),(8,8,2,'留言内容8','2023-04-07 09:06:18','回复信息8','2023-04-07 09:06:18','2023-04-07 09:06:18'),(9,9,1,'留言内容9','2023-04-07 09:06:18','回复信息9','2023-04-07 09:06:18','2023-04-07 09:06:18'),(10,10,1,'留言内容10','2023-04-07 09:06:18','回复信息10','2023-04-07 09:06:18','2023-04-07 09:06:18'),(11,11,2,'留言内容11','2023-04-07 09:06:18','回复信息11','2023-04-07 09:06:18','2023-04-07 09:06:18'),(12,12,2,'留言内容12','2023-04-07 09:06:18','回复信息12','2023-04-07 09:06:18','2023-04-07 09:06:18'),(13,13,1,'留言内容13','2023-04-07 09:06:18','回复信息13','2023-04-07 09:06:18','2023-04-07 09:06:18'),(14,14,3,'留言内容14','2023-04-07 09:06:18','回复信息14','2023-04-07 09:06:18','2023-04-07 09:06:18'),(15,14,1,'留言','2023-04-07 09:25:32','好的撒爱我的','2023-04-07 09:27:06','2023-04-07 09:25:32');

/*Table structure for table `qiuyuan` */

DROP TABLE IF EXISTS `qiuyuan`;

CREATE TABLE `qiuyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qiuyuan_name` varchar(200) DEFAULT NULL COMMENT '球员姓名 Search111 ',
  `qiuyuan_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `qiuyuan_shengao` varchar(200) DEFAULT NULL COMMENT '身高',
  `qiuyuan_tizhong` varchar(200) DEFAULT NULL COMMENT '体重',
  `qiuyuan_age` varchar(200) DEFAULT NULL COMMENT '年龄',
  `qiuyuan_jinqiushu` int(11) DEFAULT NULL COMMENT '进球数',
  `qiuyuan_zhugong` int(11) DEFAULT NULL COMMENT '助攻数',
  `qiuyuan_jiangbei` int(11) DEFAULT NULL COMMENT '获得奖杯',
  `qiuyuan_types` int(11) DEFAULT NULL COMMENT '球员位置 Search111',
  `qiudui_id` int(11) DEFAULT NULL COMMENT '所属球队',
  `qiuyuan_content` text COMMENT '球员详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='球员';

/*Data for the table `qiuyuan` */

insert  into `qiuyuan`(`id`,`qiuyuan_name`,`qiuyuan_photo`,`sex_types`,`qiuyuan_shengao`,`qiuyuan_tizhong`,`qiuyuan_age`,`qiuyuan_jinqiushu`,`qiuyuan_zhugong`,`qiuyuan_jiangbei`,`qiuyuan_types`,`qiudui_id`,`qiuyuan_content`,`insert_time`,`create_time`) values (1,'球员姓名1','/upload/1680830322107.jpg',1,'身高1','体重1','年龄1',168,325,486,3,1,'球员详情1','2023-04-07 09:06:18','2023-04-07 09:06:18'),(2,'球员姓名2','/upload/1680830306595.jpg',2,'身高2','体重2','年龄2',246,387,41,1,2,'球员详情2','2023-04-07 09:06:18','2023-04-07 09:06:18'),(3,'球员姓名3','/upload/1680830292410.jpg',1,'身高3','体重3','年龄3',234,290,221,1,3,'球员详情3','2023-04-07 09:06:18','2023-04-07 09:06:18'),(4,'球员姓名4','/upload/1680830281861.jpg',2,'身高4','体重4','年龄4',18,466,185,1,4,'球员详情4','2023-04-07 09:06:18','2023-04-07 09:06:18'),(5,'球员姓名5','/upload/1680830270152.jpg',1,'身高5','体重5','年龄5',216,397,470,3,5,'球员详情5','2023-04-07 09:06:18','2023-04-07 09:06:18'),(6,'球员姓名6','/upload/1680830254486.jpg',1,'身高6','体重6','年龄6',133,60,144,1,6,'球员详情6','2023-04-07 09:06:18','2023-04-07 09:06:18'),(7,'球员姓名7','/upload/1680830322107.jpg',2,'身高7','体重7','年龄7',469,207,414,2,7,'球员详情7','2023-04-07 09:06:18','2023-04-07 09:06:18'),(8,'球员姓名8','/upload/1680830306595.jpg',2,'身高8','体重8','年龄8',243,474,92,2,8,'球员详情8','2023-04-07 09:06:18','2023-04-07 09:06:18'),(9,'球员姓名9','/upload/1680830322107.jpg',2,'身高9','体重9','年龄9',147,148,223,1,9,'<p>球员详情9</p>','2023-04-07 09:06:18','2023-04-07 09:06:18'),(10,'球员姓名10','/upload/1680830306595.jpg',1,'身高10','体重10','年龄10',170,218,394,3,10,'<p>球员详情10</p>','2023-04-07 09:06:18','2023-04-07 09:06:18'),(11,'球员姓名11','/upload/1680830292410.jpg',1,'身高11','体重11','年龄11',280,72,400,1,11,'<p>球员详情11</p>','2023-04-07 09:06:18','2023-04-07 09:06:18'),(12,'球员姓名12','/upload/1680830281861.jpg',1,'身高12','体重12','年龄12',149,82,267,3,12,'<p>球员详情12</p>','2023-04-07 09:06:18','2023-04-07 09:06:18'),(13,'球员姓名13','/upload/1680830270152.jpg',2,'身高13','体重13','年龄13',127,136,79,1,13,'<p>球员详情13</p>','2023-04-07 09:06:18','2023-04-07 09:06:18'),(14,'球员姓名14','/upload/1680830254486.jpg',2,'身高14','体重14','年龄14',480,37,276,3,14,'<p>球员详情14</p>','2023-04-07 09:06:18','2023-04-07 09:06:18');

/*Table structure for table `qiuyuan_collection` */

DROP TABLE IF EXISTS `qiuyuan_collection`;

CREATE TABLE `qiuyuan_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qiuyuan_id` int(11) DEFAULT NULL COMMENT '球员',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `qiuyuan_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='球员收藏';

/*Data for the table `qiuyuan_collection` */

insert  into `qiuyuan_collection`(`id`,`qiuyuan_id`,`yonghu_id`,`qiuyuan_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2023-04-07 09:06:18','2023-04-07 09:06:18'),(2,2,2,1,'2023-04-07 09:06:18','2023-04-07 09:06:18'),(3,3,1,1,'2023-04-07 09:06:18','2023-04-07 09:06:18'),(4,4,1,1,'2023-04-07 09:06:18','2023-04-07 09:06:18'),(5,5,2,1,'2023-04-07 09:06:18','2023-04-07 09:06:18'),(6,6,3,1,'2023-04-07 09:06:18','2023-04-07 09:06:18'),(7,7,3,1,'2023-04-07 09:06:18','2023-04-07 09:06:18'),(8,8,3,1,'2023-04-07 09:06:18','2023-04-07 09:06:18'),(9,9,2,1,'2023-04-07 09:06:18','2023-04-07 09:06:18'),(10,10,1,1,'2023-04-07 09:06:18','2023-04-07 09:06:18'),(12,12,1,1,'2023-04-07 09:06:18','2023-04-07 09:06:18'),(13,13,3,1,'2023-04-07 09:06:18','2023-04-07 09:06:18'),(14,14,2,1,'2023-04-07 09:06:18','2023-04-07 09:06:18'),(15,11,1,1,'2023-04-07 09:24:19','2023-04-07 09:24:19');

/*Table structure for table `qiuyuan_liuyan` */

DROP TABLE IF EXISTS `qiuyuan_liuyan`;

CREATE TABLE `qiuyuan_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qiuyuan_id` int(11) DEFAULT NULL COMMENT '球员',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `qiuyuan_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='球员留言';

/*Data for the table `qiuyuan_liuyan` */

insert  into `qiuyuan_liuyan`(`id`,`qiuyuan_id`,`yonghu_id`,`qiuyuan_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'留言内容1','2023-04-07 09:06:18','回复信息1','2023-04-07 09:06:18','2023-04-07 09:06:18'),(2,2,3,'留言内容2','2023-04-07 09:06:18','回复信息2','2023-04-07 09:06:18','2023-04-07 09:06:18'),(3,3,1,'留言内容3','2023-04-07 09:06:18','回复信息3','2023-04-07 09:06:18','2023-04-07 09:06:18'),(4,4,2,'留言内容4','2023-04-07 09:06:18','回复信息4','2023-04-07 09:06:18','2023-04-07 09:06:18'),(5,5,1,'留言内容5','2023-04-07 09:06:18','回复信息5','2023-04-07 09:06:18','2023-04-07 09:06:18'),(6,6,1,'留言内容6','2023-04-07 09:06:18','回复信息6','2023-04-07 09:06:18','2023-04-07 09:06:18'),(7,7,2,'留言内容7','2023-04-07 09:06:18','回复信息7','2023-04-07 09:06:18','2023-04-07 09:06:18'),(8,8,1,'留言内容8','2023-04-07 09:06:18','回复信息8','2023-04-07 09:06:18','2023-04-07 09:06:18'),(9,9,1,'留言内容9','2023-04-07 09:06:18','回复信息9','2023-04-07 09:06:18','2023-04-07 09:06:18'),(10,10,1,'留言内容10','2023-04-07 09:06:18','回复信息10','2023-04-07 09:06:18','2023-04-07 09:06:18'),(11,11,3,'留言内容11','2023-04-07 09:06:18','回复信息11','2023-04-07 09:06:18','2023-04-07 09:06:18'),(12,12,1,'留言内容12','2023-04-07 09:06:18','回复信息12','2023-04-07 09:06:18','2023-04-07 09:06:18'),(13,13,2,'留言内容13','2023-04-07 09:06:18','回复信息13','2023-04-07 09:06:18','2023-04-07 09:06:18'),(14,14,1,'留言内容14','2023-04-07 09:06:18','回复信息14','2023-04-07 09:06:18','2023-04-07 09:06:18');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','tzwptuzu722e75vq1qx3m55gqhyaleno','2023-04-07 09:08:02','2023-04-07 10:24:06'),(2,1,'admin','users','管理员','91ju9mihlhn3vwi4357xn17fy06lvqwe','2023-04-07 09:10:10','2023-04-07 10:26:12');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-07 09:06:04');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','2023-04-07 09:06:18'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','2023-04-07 09:06:18'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'3@qq.com','2023-04-07 09:06:18');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
