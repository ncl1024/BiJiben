--创建数据库
CREATE DATABASE testdb02;
--切换数据库
use testdb02;
--创建学生表
CREATE TABLE 学生表(
   学号  int(10),
   姓名  varchar(15),
   性别  varchar(2),
   年龄  smallint(2),
   入学年份 year(4)
);
--创建考勤表
CREATE TABLE 考勤表(
   员工编号 varchar(10),
   员工姓名 varchar(10),
   上班时间 datetime,
   下班时间 datetime,
   时长 smallint
);
-- teacher表添加籍贯(字符串)、手机号(字符串)列
ALTER TABLE  teacher add (籍贯 varchar(20),手机号 varchar(11));
-- 删除teacher表的入职日期
ALTER TABLE teacher DROP 入职日期;
-- 修改考勤表的时长的数据类型
ALTER TABLE 考勤表 modify 时长 int;
-- 修改teacher表的籍贯为家庭住址
ALTER TABLE teacher change 籍贯 家庭住址 varchar(16);
-- 查看teacher表的表结构
DESC teacher;
-- 查看考勤表的表结构
DESC 考勤表; 
-- 创建商品表并添加主键
CREATE TABLE 商品表(
   货品编号 varchar(20) primary key,
   名称 varchar(10),
   价格 decimal(5,2),
   库存量 tinyint
);

create DATABASE 出版社系统;

USE 出版社系统;

create table 书本表(
   书本编号 varchar(20) primary key,
   书本名字 varchar(20),
   价格 decimal(5,2),
   书本简介 varchar(15),
   出版社 varchar(10),
   出版时间 datetime
);

alter table 书本表 add 销量列 int;

alter table 书本表 modify 书本名字 varchar(40);

alter table 书本表 change 书本简介 详情描述 varchar(200);

alter table 书本表 drop 出版社;

create database QF_Company;

USE QF_Company;

create table 学生表(
   学号 int,
   姓名 varchar(10),
   性别 char(2),
   年龄 int
);

 create table 学科表(
   学科号 varchar(13),
   学科名 varchar(15),
   学习时长 int
);

create table 阶段考试表(
   学号 varchar(13),
   课程号 varchar(10),
   成绩 decimal(4,1)
);

create table 员工表(
   员工号 varchar(10) primary key,
   姓名 varchar(13),
   性别 char(2),
   出生年月 datetime,
   系部 varchar(18),
   职称 varchar(16),
   地址 varchar(18)
);

 create table 工资表(
   员工号 varchar(14),
   基本工资 decimal(6,2),
   奖金 decimal(6,2),
   合计 decimal(7,2)
);

alter table 学生表 add 专业 varchar(12);

alter table 学生表 modify 姓名 varchar(10);

DESC 员工表;

drop table 阶段考试表;
















