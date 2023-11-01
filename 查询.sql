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


USE testdb02

create table 会员表(
会员编号 varchar(14),
姓名 varchar(10),
手机号 varchar(11),
constraint PK_会员号 primary key(会员编号)
);

CREATE TABLE 充值表(
   身份证号 VARCHAR(18),
   姓名 VARCHAR(10),
   充值金额 INT,
   充值时间 DATETIME,
   PRIMARY KEY(身份证号)
);

ALTER TABLE 会员表 DROP PRIMARY KEY;

ALTER TABLE 充值表 DROP PRIMARY KEY;



create table 电影表(
   电影编号 varchar(14),
   电影名称 varchar(16) not null,
   电影类型 varchar(10) default '戏剧',
   电影时长 int,
   上映时间 datetime not null,
   constraint PK_电影编号 primary key(电影编号),
   constraint UN_时长 unique(电影时长)
);

alter table 电影表 add 价格 decimal(5,2);

alter table 电影表 modify 价格 decimal(5,2) not NULL;

alter table 电影表 modify 电影名称 varchar(14);

-- 10.24
/*1.创建数据库【出版社系统】,在出版社系统中创建数据库表【书本表】
字段名	   数据类型	
书本编号  	字符串类型长度20   PK_书本编号	 主键约束 
书本名字  字符串类型长度20
价格  小数类型，长度自定义
书本简介  字符串类型长度15
出版社   字符串类型长度10
出版时间  日期时间类型*/

-- 创建数据库【出版社系统】
CREATE  DATABASE  出版社系统;

-- 创建书本表
CREATE TABLE 书本表(
	书本编号  VARCHAR(20),
	书本名字  VARCHAR(20),
	价格  DECIMAL(3,1),
	书本简介  VARCHAR(15),
	出版社  VARCHAR(10),
	出版时间  DATETIME,
	CONSTRAINT PK_书本编号 PRIMARY KEY(书本编号)
);

-- 学生表（学号  主键，姓名，性别，年龄）；
CREATE  TABLE  学生表(
	学号  VARCHAR(20),
	姓名  VARCHAR(20),
	性别  CHAR(2),
	年龄  INT,
	PRIMARY KEY(学号)
);

-- 切换到testdb02
USE  testdb02;


-- 给成绩表的学号添加主键约束
ALTER  TABLE  成绩表  ADD  PRIMARY KEY(学号);

-- 给学生表学号添加主键约束
ALTER  TABLE  学生表  MODIFY 学号  VARCHAR(18)  PRIMARY KEY;


--删除学生表的学号主键约束
ALTER  TABLE  学生表  DROP  PRIMARY KEY;

-- 学科表（学科号、学科名  设置为联合主键  PK_学科，学习时长）  
CREATE  TABLE  学科表(
	学科号  VARCHAR(10),
	学科名  VARCHAR(10),
	学习时长  INT,
	CONSTRAINT PK_学科  PRIMARY KEY(学科号,学科名)
);

-- 阶段考试表（学号、课程号  联合主键，成绩） 
CREATE  TABLE  阶段考试表(
	学号  VARCHAR(10),
	课程号  VARCHAR(10),
	成绩  INT,
	PRIMARY KEY(学号,课程号)
);


-- 把学生表的学号和姓名设置为联合主键
ALTER  TABLE  学生表   ADD  PRIMARY KEY(学号,姓名);


-- 删除阶段考试表的联合主键
ALTER  TABLE  阶段考试表  DROP  PRIMARY KEY;


-- 员工表（员工号  主键约束，姓名  唯一约束，性别，出生年月，系部，职称 ，地址 唯一约束）
CREATE  TABLE 员工表(
	员工号  VARCHAR(10)  PRIMARY KEY,
	姓名  VARCHAR(10)  UNIQUE,
	性别  CHAR(2),
	出生年月   DATE,
	系部  VARCHAR(10),
	职称  VARCHAR(10),
	地址  VARCHAR(10)  UNIQUE
);


-- 工资表（员工号  主键约束  PK_员工号，基本工资  唯一约束  UN_工资，奖金  唯一约束  UN_奖金，合计）
CREATE  TABLE  工资表(
	员工号  VARCHAR(10),
	基本工资  INT,
	奖金  INT,
	合计  INT,
	CONSTRAINT  PK_员工号  PRIMARY KEY(员工号),
	CONSTRAINT  UN_工资   UNIQUE(基本工资),
	CONSTRAINT  UN_奖金   UNIQUE(奖金)
);


-- 给职称添加一个唯一约束
ALTER  TABLE  员工表  ADD  UNIQUE(职称);

-- 给工资表的合计添加唯一约束
ALTER TABLE  工资表  ADD  UNIQUE(合计);


-- 删除工资表中合计的唯一约束
ALTER  TABLE  工资表  DROP  INDEX  合计;

-- 删除工资表的奖金唯一约束
ALTER  TABLE  工资表  DROP  INDEX  UN_奖金;

-- 创建会员表(会员编号 主键约束，姓名，年龄 默认 23，性别  默认 男，手机号  唯一约束)
CREATE  TABLE  会员表(
	会员编号  VARCHAR(20)  PRIMARY KEY,
	姓名   VARCHAR(20),
	年龄  INT  DEFAULT  23,
	性别  VARCHAR(10)  DEFAULT '男',
	手机号  VARCHAR(11)  unique
);

-- 给员工表的系部添加默认约束，默认是测试部门
ALTER  TABLE  员工表   MODIFY  系部  VARCHAR(10)  DEFAULT  '测试';

-- 删除员工表系部的默认约束
ALTER  TABLE  员工表  MODIFY  系部  VARCHAR(10);

-- 删除会员表年龄的默认约束
ALTER  TABLE  会员表  MODIFY  年龄  INT;


-- 创建一张表tempStudent，包括sno，sname，sdept，sage四列，
-- 为sno添加主键、sname 非空约束、sdept默认”软件测试”，sage 非空
CREATE  TABLE  tempstudent(
	sno  VARCHAR(10)  PRIMARY KEY,
	sname  VARCHAR(10)  NOT  NULL,
	sdept  VARCHAR(10)  DEFAULT '软件测试',
	sage  INT  NOT  NULL
);


-- 给成绩表的课程名称添加非空约束
ALTER  TABLE  成绩表  MODIFY  课程名称  VARCHAR(10)  NOT  NULL;

-- 删除成绩表的课程名称的非空约束
ALTER  TABLE  成绩表  MODIFY  课程名称  VARCHAR(10);

-- 删除tempstudent表年龄的非空约束
ALTER  TABLE  tempstudent  MODIFY  sage  INT;



-- 创建一个选课表(学号  主键约束，课程号，课程名称，课时)

CREATE  TABLE  选课表(
	学号   VARCHAR(10)  PRIMARY KEY,
	课程号   VARCHAR(10),
	课程名称   VARCHAR(10),
	课时  int
);


-- 创建一个月考成绩表(学号 外键约束，课程号，成绩，让学号参照引用选课表的学号)
-- 主表：选课表   从表：月考成绩表
CREATE  TABLE  月考成绩表(
	学号  VARCHAR(15),
	课程号  VARCHAR(10),
	成绩  INT,
	CONSTRAINT   FK_学号  FOREIGN  KEY(学号)   REFERENCES  选课表(学号)
);

-- 对从表插入数据，首先会询问主表的意见：如果主表中有相关的记录，才会做插入
--  选课表  ----->  学号   <------月考成绩表

-- 创建一个员工审计表
-- 员工编号  设置外键约束 参照引用员工表的员工号，基本工资  设置外键约束  参照引用工资表的基本工资
-- 审计结果  不为空

CREATE  TABLE  员工审计表(
	员工编号  VARCHAR(20),
	基本工资  INT,
	审计结果  VARCHAR(20) NOT  NULL,
	CONSTRAINT  FK_员工编号  FOREIGN KEY(员工编号)  REFERENCES  员工表(员工号),
	CONSTRAINT  FK_基本工资  FOREIGN KEY(基本工资)  REFERENCES  工资表(基本工资)
);


-- 给学生表的学号添加外键约束，参照引用成绩表的学号

-- 主表：成绩表    从表： 学生表
ALTER  TABLE  学生表  ADD  CONSTRAINT  FK_号  FOREIGN KEY(学号)  REFERENCES  成绩表(学号);


-- 删除员工审计表中基本工资的外键约束
ALTER  TABLE  员工审计表  DROP  FOREIGN KEY  FK_基本工资;

-- 删除学生表中学号的外键约束
ALTER  TABLE  学生表  DROP  FOREIGN KEY FK_号;


create table Teacher(
   Tno varchar(7) primary key,
   Tname varchar(10) not null,
   Tesx varchar(2) default '男',
   Birthday date,
   Dept varchar(20),
   Sid varchar(18)
);

create table Course(
   Cno varchar(10) primary key,
   Cname varchar(20) not null,
   Credit decimal(3,1) not null,
   Category varchar(10) default '必修' NOT NULL 
);

create table TC(
   Tno varchar(7),
   Cno varchar(10),
   Hours smallint default 4,
   constraint FK_Tno foreign key(Tno) references Teacher(Tno),
   constraint FK_Cno foreign key(Cno) references Course(Cno)
);

alter table Teacher add unique(Sid);

alter table TC add primary key(Tno,Cno);

alter table Course modify Category varchar(10);



CREATE DATABASE tsgl;

USE tsgl;

create table 图书表(
   书号 varchar(10) primary key,
   书名 varchar(14),
   出版社 varchar(16),
   类别 varchar(10),
   作者 varchar(10),
   出版时间 date,
   价格 decimal(5,2) default 10
);

create table 读者表(
   编号 varchar(12) primary key,
   姓名 varchar(10),
   单位 varchar(16) default '千锋教育',
   性别 varchar(2) unique
);

create table 借阅表(
   书号 varchar(16),
   编号 varchar(18),
   借阅日期 date,
   还书日期 date,
   还书标识 varchar(2),
   primary key(书号,编号),
   constraint PK_书号 foreign key(书号) REFERENCES 图书表(书号),
   constraint PK_编号 foreign key(编号) references 读者表(编号)
);

create table 员工表(
   id int primary key,
   name varchar(20) unique,
   gender varchar(2) not null,
   birthday date,
   email varchar(10),
   remark varchar(50)
);

alter table 员工表 add age INT;

alter table 员工表 modify email varchar(50);

alter table 员工表 drop remark;

alter table 员工表 change name username varchar(10);





-- 10.25
-- 分别利用格式一和格式二给会员表插入数据

-- 格式一：
INSERT  INTO  会员表(会员编号,姓名,年龄,性别,手机号)  VALUES('qf103','王五',24,'男','15110678916');

INSERT  INTO  会员表(年龄,手机号,会员编号,性别,姓名)  VALUES(21,'15210678917','qf104','男','赵六');

INSERT INTO  会员表(会员编号,姓名,手机号)  VALUES('qf105','孙七','15310678918');

-- 格式二：
INSERT  INTO  会员表   VALUES('qf106','孙八',30,'女','15410678919');

-- 格式三：一次性插入多条数据
INSERT INTO  会员表   VALUES('qf107','孙九',19,'女','15510678910'),('qf108','孙十',34,'男','15610678910'),('qf109','孙十一',28,'男','15910678910');

-- 注意：使用insert语句插入数据时，注意是否有外键约束的影响

-- 向月考成绩表中插入一条数据  
-- INSERT  INTO  月考成绩表   VALUES('110','c01',90);

-- 删除会员表中所有的数据
DELETE  FROM  会员表;

-- 删除会员编号为qf108的人员信息
DELETE  FROM  会员表  WHERE  会员编号='qf108';

-- 删除会员表中年龄大于等于25的人员信息
DELETE  FROM  会员表  WHERE  年龄>=25;

-- 删除会员表中年龄大于20，且是男生的人员信息
DELETE  FROM  会员表  WHERE  年龄>20  AND  性别='男';

-- 删除会员表中年龄小于等于25，或是女生的人员信息
DELETE  FROM  会员表  WHERE  年龄<=25  OR  性别='女';

-- 练习：大家找到存在的任意一张表，插入10行数据；再结合删除的语句，进行一波操作练习(把刚才讲的点全部覆盖操作一遍)

-- 创建一个testselect库
CREATE  DATABASE  testselect;


-- 将人员的年龄改为40
UPDATE  会员表  SET  年龄=40;

-- 将人员的性别改为男，年龄改为18
UPDATE  会员表  SET  性别='男',年龄=18;

-- 将会员编号为qf106的人员的年龄改为25，性别改为女
UPDATE  会员表   SET  年龄=25,性别='女'  WHERE  会员编号='qf106';

-- 将会员编号为qf107的员工，或年龄大于等于18的员工的性别改为女
UPDATE  会员表   SET  性别='女'  WHERE  会员编号='qf107'  OR   年龄>=18;

-- 场景：在更新的过程中，也可以对列的数据进行计算的操作
-- 将会员编号为qf105的员工的年龄添加10岁
UPDATE  会员表   SET  年龄=年龄+10   WHERE 会员编号='qf105';


CREATE DATABASE qf_school;

USE qf_school;

create table 学生表(
   学号 varchar(10) primary key,
   姓名 varchar(12) not null,
   性别 char(2) default '男',
   班号 varchar(8),
   生源地 varchar(16),
   出生日期 year
);

CREATE TABLE 系(
   系号 VARCHAR(10) PRIMARY KEY,
   系名 VARCHAR(10) UNIQUE AND NOT NULL
);
create table 班级表(
   系号 varchar(10) primary key,
   专业名 varchar(14),
   班号 varchar(8),
   入学年份 year,
   constraint PK_系号 foreign key(系号) references 系(系号)
);

-- 插入如下数据,SC（101,英语；102，计算机；103，数学；104，化学）  
insert INTO sc VALUES('101','英语'),('102','计算机'),('103','数学'),('104','化学');

-- CALSS（101，软件，02，2003；102，微电子，02，2004）    
INSERT INTO 班级表 VALUES('101','软件',02,'2003'),('102','微电子',02,'2004');

-- STUDENT（8101，张三，男，101，山东，1984；8102，钱四，女，121，济南，1984；8103，王玲，女，131，福建，1985；8105，李飞，男，102，河北，1985）
insert into 学生表 values('8101','张三','男','101','山东','1984'),('8102','钱四','女','121','济南','1984'),('8103','王玲','女','131','福建','1985'),('8105','李飞','男','102','河北','1985');

-- 通过对学生信息表的查询，查询出所有学生的学号，姓名和性别
select 学号,姓名,性别 FROM 学生表;

-- 通过对学生信息表的查询，查询来自福建的学生的记录
select * from 学生表 WHERE 生源地='福建';

-- 更新学号为8103的这位学生的姓名为张玲
update 学生表 set 姓名='张玲' where 学号='8103';

-- 删除姓名为李飞的学生记录
delete from 学生表 where 姓名='李飞';

-- 
DELETE FROM student;




CREATE DATABASE school;

USE school;

create table student(
   Sno char(6) primary key,
   Sname varchar(8),
   Ssex char(2),
   Sage smallint,
   Sdept varchar(15)
); 

create table course(
   Cno char(4) primary key,
   Cname varchar(20),
   Cpno char(4),
   Ccredit tinyint
);

create table SC(
   Sno char(6) primary key,
   Cno char(4),
   Grade decimal(12,2),
   constraint FK_sno foreign key(sno) references Student(sno)
);



insert into Student values('4001','赵茵','男',20,'SX');

insert into Student values('4002','杨华','女',21,'JSJ');

update student set Sdept='JSJ' where sno='4001';

update Student set sage=30,Ssex='女' where Sname='陈小明';

delete from STUDENT where Ssex='男' and Sdept='JSJ';



alter table SC add UNIQUE(cno);

alter table SC drop index cno;




-- 10.26

-- (1)从sc表中查看修了c02课程，且成绩不及格的学生信息
select * from SC where cno = 'c02' and grade<60;

-- (2)从sc表中查看修了c01，c02，c05课程，且成绩大于70分的学生信息（两种写法）
select * from SC where cno not in('c04','c06') and grade>70;

select * from SC where cno in('c01','c02','c05') and grade>70;

select * from SC where cno in('c01','c02','c05') and grade between 70 and 100;

select * from SC where cno in('c01','c02','c05') and grade>70 and grade<=100;
-- (3)从student表中查看年龄在18-25之间学生的学号，姓名，性别，年龄
select sno '学号',sname '姓名',ssex '性别', sage '年龄' from Student where sage between 18 and 25;
-- (4)从sc表中查看修了c01，c02课程，且成绩不在80-100之间的学生信息
select * from SC where cno!='c04' and cno!='c05' and cno!='c06' and grade not between 80 and 100;
-- (5)从student表中查看不是计算机系和信息系学生的信息数据
select * from Student where sdept!='计算机系' and sdept!='信息系';

-- (1)从student表中查看姓张的男生的个人信息
select * from Student where ssex='男' and sname like '张%';
-- (2)从student表中查看计算机系除了姓王的学生的个人信息
select * from Student where sdept='计算机系' and sname not like '王%';
-- (3)从sc表中查看修了c02且成绩不为空的学生选课情况
select * from SC where cno='c02' and grade is not null;
-- (4)从student表中查看年龄在20-25之间姓王和姓张的学生信息
select * from student where sage between 20 and 25 and sname like '王%' or sname LIKE '张%';





-- (1)从sc表中查看修了c01课程学生的最高分，最低分，平均成绩
select max(grade) 最高分,min(grade) 最低分,avg(grade) 平均分 from sc where cno='c01';
-- (2)从sc表中统计修了c02课程的总人数
select count(cno) c02课程的总人数 from Sc where cno='c02';
-- (3)从student表中统计男生的总人数
select count(ssex) 男生的总人数 from student where ssex='男';
-- (4)从sc表中统计修了c01、c02、c05课程学生的总成绩
select sum(grade) from SC where cno='c01' or cno='c02' or cno='c05';
-- (5)查看sc表中前十行的数据
select * from SC limit 0,9;
-- (6)查看sc表中第六行到第十一行的数据
select * from SC limit 5,6;
-- (7)从sc表中统计修课学生的总人数(会有一个学生选多门课情况，记得去重统计)
select count(distinct sno)  from SC;


-- (1)从student表中统计男生和女生的各自的总人数
select ssex,count(*) from student group by ssex;
-- (2)从sc表中统计每一门课的平均成绩
select cno,avg(grade) from SC group by cno;
-- (3)从sc表中统计每一门课的最高分和最低分
select cno,max(grade) 最高分,min(grade) 最低分 from SC group by cno;
-- (4)从sc表中统计每个学生的选课门数
select sno 学号,count(cno) 选课门数 from SC group by sno;



-- (1)从student表中查看每个专业超过2人的专业名称，总人数记录
select sdept,count(*) from student group by sdept having count(*)>2;
-- (2)从sc表中查看总成绩超过150分的学生的学号，总成绩
select sno,sum(grade) from sc group by sno having sum(grade)>150;
-- (3)查看student表中的内容，分别按照年龄进行升序和降序查看
select * from student order by sage asc;
select * from student order by sage desc;


SELECT * FROM student;

-- 1.查询学生选课表中的全部数据
SELECT * FROM sc;
-- 2.查询全体学生的姓名、学号和所在系。
SELECT sname,sno,sdept FROM student;
-- 3.查询全体学生的姓名及其出生年份。
SELECT sname,2023-sage FROM student;
-- 4.查询计算机系全体学生的姓名。
SELECT sname,sdept FROM student WHERE sdept='计算机系';
-- 5.查询年龄在20岁以下的学生的姓名及年龄。
select sname,sage FROM student WHERE sage<20;
-- 6.查询考试成绩有不及格的学生的学号
SELECT sno '学号',grade '成绩' FROM sc WHERE grade<60;
-- 7.查询成绩在70~80分之间的学生，包括学号，课程号和成绩
SELECT sno,cno,grade FROM sc WHERE grade BETWEEN 70 AND 80;
-- 8.查询年龄在20～23岁之间的学生的姓名、所在系和年龄。
SELECT sname,sdept,sage FROM student where sage BETWEEN 20 AND 23;
-- 9.查询年龄不在20～23之间的学生姓名、所在系和年龄。
SELECT sname,sdept,sage FROM student where sage not BETWEEN 20 AND 23; 
-- 10.查询信息系和计算机系学生的姓名和性别。
SELECT sname,ssex,sdept FROM student WHERE sdept='信息系' OR sdept='计算机系';
-- 11.查询既不是信息系，也不是计算机系学生的姓名和性别。
SELECT sname,ssex,sdept FROM student WHERE sdept!='信息系' and sdept!='计算机系';
-- 12.查询姓‘张’的学生的详细信息。
SELECT * FROM student where sname LIKE '张%';
-- 13.查询所有不姓“刘”的学生。
SELECT * FROM student where sname not LIKE '刘%';
-- 14.查询无考试成绩的学生的学号和相应的课程号。
SELECT  sno,cno,grade FROM sc WHERE grade IS NULL;
-- 15.查询所有有考试成绩的学生的学号和课程号。
SELECT  sno,cno,grade FROM sc WHERE grade IS not NULL;
-- 16.查询计算机系年龄在18~20之间，且性别为男的学生，包括姓名和年龄
SELECT sname,sage FROM  student WHERE sdept='计算机系' and sage BETWEEN 18 AND 20 and  ssex='男';

-- 17.统计学生总人数。
SELECT COUNT(*) '总人数' FROM student;
-- 18.统计选修了课程的学生的人数。
SELECT category,COUNT(*) 总人数 FROM sc WHERE category='选修';
-- 19.计算9512101号学生的考试总成绩之和。
SELECT sno,SUM(grade) FROM sc WHERE sno='9512101';
-- 20.计算’C01’号课程学生的考试平均成绩。
SELECT cno,AVG(grade) 平均成绩 FROM sc WHERE cno='c01';
-- 21.查询选修了’C01’号课程的学生的最高分和最低分。
SELECT MAX(grade) 最高分,MIN(grade) 最低分 FROM sc WHERE cno='c01';
-- 22.查询计算机系学生的最大年龄和最小年龄
SELECT MAX(sage) 最大年龄,MIN(sage) 最小年龄 FROM student WHERE sdept='计算机系';
-- 23.统计每个系的学生人数
SELECT sdept,COUNT(*) FROM student GROUP BY sdept;
-- 24.统计每门课程的选课人数和考试最高分
SELECT cno,COUNT(*),MAX(grade) FROM sc GROUP BY cno;
-- 25.统计每名学生的选课门数和平均成绩。 
SELECT sno,count(cno),AVG(grade) FROM sc GROUP BY sno;
-- 26.查询修课门数等于或大于4门的学生的平均成绩和选课门数。
SELECT sno,COUNT(*) 修课门数,AVG(grade) 平均成绩 FROM sc GROUP BY sno HAVING COUNT(*)>=4;
-- 27.查询总成绩超过200分的学生，要求列出学号，总成绩
SELECT sno,SUM(grade) 总成绩 FROM sc GROUP BY sno HAVING SUM(grade)>200;


-- 10.27

qf_school`学生表`
-- (1)查看学生的学号sno，姓名sname，性别ssex，课程号cno，成绩grade
SELECT s.sno,sname,ssex,cno,grade from student s,sc c where s.sno=c.sno;

SELECT s.sno,sname,ssex,cno,grade FROM student s join sc c ON s.sno=c.sno;

-- (2)查看修了c01课程的学生sno，sname，sex，sdept，cno，grade
SELECT s.sno,cno,sname,ssex,sdept,grade FROM student s,sc c WHERE s.sno=c.sno AND  cno='c01'; 

SELECT s.sno,cno,sname,ssex,sdept,grade FROM student s join sc c on s.sno=c.sno AND  cno='c01';

-- (3)查看修了c02课程，且是计算机专业的学生的sno，sname，sage，sdept，cno，grade
SELECT s.sno,sname,sage,sdept,cno,grade FROM student s JOIN sc c ON s.sno=c.sno where cno='c02' AND sdept='计算机系';

SELECT s.sno,sname,sage,sdept,cno,grade FROM student s,sc c WHERE s.sno=c.sno AND cno='c02' AND sdept='计算机系';

-- (4)查看计算机系、信息系学生的sno，sname，sage，sdept，cno，grade，结果按照成绩降序排列
SELECT s.sno,sname,sage,sdept,cno,grade FROM student s,sc c WHERE s.sno=c.sno AND (sdept='计算机系' or sdept='信息系') ORDER BY grade desc;



-- (5)查询籍贯是beijing，班级是以'pu'开头的学生的学号，姓名，性别，以及所在的班级名称和年级






USE testselect;

-- (1)根据成绩表查询出学生所对应的个人信息：学号，姓名，课程编号，成绩
SELECT 学生信息.学号,姓名,课程编号,成绩 FROM 成绩表 RIGHT OUTER JOIN 学生信息 ON 成绩表.学号=学生信息.学号;
-- (2)以sc和course表做结合，查询出哪一门课没有人选？列出这门课的课程号cno、课程名字cname
SELECT course.cno,cname FROM course LEFT OUTER join sc ON sc.cno=course.cno WHERE sno IS NULL;


SELECT * FROM course LEFT OUTER join sc ON course.cno=sc.cno;

-- 1.将学生按年龄的升序排序。
SELECT * FROM student ORDER BY sage ASC;
-- 2.查询选修了‘c02’号课程的学生的学号及其成绩，查询结果按成绩降序排列
SELECT sno,grade FROM sc WHERE cno='c02' ORDER BY grade DESC;
-- 3.查询全体学生的信息，查询结果按所在系的系名升序排列，同一系的学生按年龄降序排列。
SELECT * FROM student ORDER BY sdept ASC , sage DESC; 
-- 4.统计每个学生的选课门数和考试总成绩，并按选课门数升序显示结果
SELECT COUNT(cno),SUM(grade) FROM sc group by sno ORDER BY  COUNT(cno) ASC;

or ORDER BY sage DESC;GROUP BY sdept 
练习二：表连接操作：
1.查询选修”c02”课程的学生的姓名和所在院系
SELECT sname,sdept FROM student LEFT OUTER JOIN sc ON student.sno=sc.sno WHERE cno='c02'; 
2.查询成绩80分以上学生的姓名、课程号和成绩，并按成绩降序排列结果
SELECT sname,cno,grade FROM sc LEFT OUTER JOIN student ON student.sno=sc.sno WHERE grade>80 ORDER BY grade DESC;
3.查询所有修了VB课程的学生的修课情况，要求列出学生姓名和所在的系。
SELECT sname,sdept FROM course join sc ON course.cno=sc.cno join student on sc.sno=student.sno where cname='VB';
4.查询信息系修了VB课程的学生的修课成绩，要求列出学生姓名、课程名和成绩。
SELECT sname,cname,grade FROM student JOIN sc ON student.sno=sc.sno JOIN course ON sc.cno=course.cno WHERE cname='VB';




-- 10.28

CREATE DATABASE 自习题;

USE 自习题;

CREATE TABLE student(
   id INT(10) PRIMARY KEY,
   NAME VARCHAR(10),
   sex VARCHAR(4) NOT NULL,
   birth YEAR NOT NULL,
   department VARCHAR(20),
   address VARCHAR(50) NOT NULL,
   CONSTRAINT UN_id UNIQUE(id)
);

CREATE TABLE score(
   id INT(10) PRIMARY KEY,
   stuid INT(10),
   cname VARCHAR(20) NOT NULL,
   grade INT(10) NOT NULL
);

INSERT INTO student VALUES('901','张老大','男','1985','计算机系','北京市海淀区'),
                          ('902','张老二','男','1986','中文系','北京市昌平区'),
                          ('903','张三','女','1990','中文系','湖南省永州市'),
                          ('904','李四','男','1990','英语系','辽宁省阜新市'),
                          ('905','王五','女','1991','英语系','福建省厦门市'),
                          ('906','王六','男','1988','计算机系','湖南省衡阳市');

INSERT INTO score VALUES(1,'901','计算机',98),
                        (2,'901','英语',80),
								(3,'902','计算机',65),
								(4,'902','中文',88),
								(5,'903','中文',95),
								(6,'904','计算机',70),
								(7,'904','英语',92),
								(8,'905','英语',94),
								(9,'906','计算机',90),
								(10,'906','英语',85); 
-- 查询student表的所有记录
SELECT * FROM student;
-- 查询student表第2条到第4条
SELECT * FROM student LIMIT 1,3;
-- 从student表查询所有学生的学号（id）、姓名（name）和院系（department）的信息
SELECT id,NAME,department FROM student;
-- 从student表中查询计算机系和英语系的学生的信息
SELECT * FROM student WHERE department='计算机系' or department='英语系';
-- 从score表中查询成绩在60-80岁之间的学生信息
SELECT * FROM score WHERE grade BETWEEN 60 AND 80;
-- 从student表中查询每个院系有多少人
SELECT department,count(department) FROM student GROUP BY department; 
-- 从score表中查询每个科目的最高分
SELECT cname,max(grade) FROM score GROUP BY cname; 
-- 查询李四的考试科目和考试成绩
SELECT student.id,cname,grade FROM student,score WHERE student.id=score.stuid and NAME='李四';
-- 用连接方式查询所有学生的信息和考试信息
SELECT * FROM student,score WHERE student.id=score.stuid;

SELECT * FROM student JOIN score ON student.id=score.stuid;
-- 计算每个学生的总成绩
SELECT name,cname,sum(grade) FROM student JOIN score ON student.id=score.stuid GROUP BY name;
-- 计算每个考试科目的平均成绩
SELECT cname,avg(grade) FROM score GROUP BY cname;
-- 查询计算机成绩低于95的学生信息
SELECT * FROM student JOIN score ON student.id=score.stuid WHERE cname='计算机' AND grade<95;
-- 查询同时参加计算机或英语考试的学生信息
SELECT * FROM student,score where student.id=score.stuid AND cname='计算机' OR cname='英语';
-- 将计算机考试成绩按从高到低进行排序
SELECT * FROM score WHERE cname='计算机' ORDER BY grade DESC;
-- 查询姓张或者姓王的同学的姓名、院系和考试科目及成绩
SELECT NAME,department,cname,grade FROM student JOIN score ON student.id=score.stuid WHERE NAME LIKE '张%' or NAME LIKE '王%';
-- 查询都是湖南的学生姓名、院系和考试科目及成绩
SELECT NAME,department,cname,grade FROM student JOIN score ON student.id=score.stuid WHERE address LIKE '湖南%';


CREATE TABLE 学生表(
   学号 VARCHAR(10),
   姓名 varchar(12),
   班级 VARCHAR(4),
   生日 date,
   成绩 INT
);

CREATE TABLE 地址表(
   学号 VARCHAR(10),
   地址 VARCHAR(50)
);

INSERT INTO 学生表 VALUES('1011','帐一','三班',null,67),
                         ('1010','曹十','二班','1990-01-10',84),
                         ('1009','裴九',null,'1997-09-09',67),
                         ('1008','卫八','一班','1970-04-08',89),
                         ('1007','朱七',null,'1989-08-07',67),
                         ('1006','陈六','一班','1994-12-06',99),
                         ('1005','冯五','一班','1986-11-06',67),
                         ('1004','赵四','二班','1996-10-04',42),
                         ('1003','李三','二班','1980-05-03',46),
                         ('1002','王二','三班','1993-01-02',68),
                         ('1001','张一','三班','1990-01-01',67);

INSERT INTO 地址表 VALUES('1011','湖北省武汉市'),
                         ('1010','江苏省南京市'),
                         ('1009','中国香港'),
                         ('1008','山东省济南市'),
                         ('1007','山东省青岛市'),
                         ('1006','黑龙江省哈尔滨市'),
                         ('1005','北京市'),
                         ('1004','河南省平顶山市'),
                         ('1003','河北省衡水市'),
                         ('1002','江西省南昌市'),
                         ('1001','黑龙江省齐齐哈尔市');


SELECT * FROM 学生表 WHERE 班级 is NULL;

SELECT * FROM 学生表 ORDER BY 成绩 DESC;

SELECT 班级,COUNT(班级) 班级总共和 FROM 学生表 WHERE 班级='三班' GROUP BY 班级;

SELECT 姓名,地址 FROM 学生表,地址表 WHERE 学生表.学号=地址表.学号 AND 姓名='赵四';

SELECT * FROM 学生表 JOIN 地址表 ON 学生表.`学号`=地址表.`学号`  WHERE 生日='1990-01-01';

CREATE TABLE 学生表1(
   id VARCHAR(10) PRIMARY KEY,
   sname VARCHAR(12),
   ssex CHAR(2),
   class VARCHAR(10),
   sage INT,
   grade DECIMAL(4,2)
);

INSERT INTO 学生表1 VALUES('T011','张小王','男','Test','23',67),
                         ('J010','曹明达','男','Java','22',84),
                         ('C009','裴小虎','男','C语言','23',67),
                         ('W008','卫嘉刚','男','网络安全','25',89),
                         ('W007','朱馨歆','女',NULL,'21',67),
                         ('P006','陈黎','女','Python数据分析','20',99),
                         ('A005','冯刚','男','AI测试','19',67),
                         ('R004','赵刚','男','软考','28',42),
                         ('Q003','李刚','男','前端架构师','26',46),
                         ('W002','王星','女','UI设计','25',68),
                         ('Y001','张明欣','女','云计算','28',67);

SELECT sname,class FROM 学生表1 WHERE class='Java' OR class='Test' GROUP BY class;
-- 查询所有java的男生
SELECT * FROM 学生表1 WHERE class='Java' AND ssex='男';

-- update 学生表1 set grade=78 WHERE id='Q003';
-- 查询出年龄小于22岁且考试成绩高于80的所有男生
SELECT * FROM 学生表1 WHERE sage<22 AND grade>80 AND ssex='男';
-- 使用成绩来排序
SELECT * FROM 学生表1 order BY grade DESC ;
-- 取出所有学生前三名
SELECT * FROM 学生表1 ORDER BY grade DESC LIMIT 3;

-- SELECT DISTINCT grade FROM 学生表1 ORDER BY grade DESC LIMIT 3;

SELECT * FROM 学生表1 WHERE  sname LIKE '王%';

SELECT * FROM 学生表1 WHERE sname LIKE '_刚' OR '刚_';

CREATE TABLE score1(
   sname VARCHAR(10),
   course VARCHAR(10),
	grade DECIMAL(4,1)
); 

INSERT INTO score1 VALUES('张三','语文',81),
                         ('张三','数学',72),
                         ('李四','语文',76);
                         
SELECT * from score1 WHERE grade>80 GROUP BY course;

CREATE TABLE Store_information(
   store VARCHAR(16),
   sales int,
   dates DATE
);
  
INSERT INTO Store_information values('Los_Angeles','10980','1999-01-05'),
                                    ('San_Diego','1830','1999-01-07'),
									         ('Los_Angeles','2190','1999-01-08'),
									         ('Boston','5124','1999-01-08');

SELECT store,SUM(sales)/7.32 FROM store_information GROUP BY store; 



CREATE DATABASE students;

USE students;

CREATE TABLE student(
   Sno VARCHAR(20) NOT NULL,
   Sname VARCHAR(20) NOT NULL,
   Ssex VARCHAR(20) NOT NULL,
   Sbirthday DATETIME,
   Sage INT,
   Class VARCHAR(20),
   CONSTRAINT PK_Sno PRIMARY KEY(Sno)
);

CREATE TABLE Teacher(
   Tno VARCHAR(20) NOT NULL,
   Tname VARCHAR(20) NOT NULL,
   Tsex VARCHAR(20) NOT NULL,
   Tbirthday DATETIME,
   Prof VARCHAR(20),
   Depart VARCHAR(20) NOT null,
   PRIMARY KEY(Tno)
);

CREATE TABLE Course(
   Cno VARCHAR(20) NOT NULL,
   Cname VARCHAR(20) NOT NULL,
   Tno VARCHAR(20) NOT NULL,
   CONSTRAINT PK_Cno PRIMARY KEY(Cno),
   CONSTRAINT FK_Tno FOREIGN KEY(Tno) REFERENCES Teacher(Tno)
);



CREATE TABLE Score(
   Sno VARCHAR(20) NOT NULL,
   Cno VARCHAR(20) NOT NULL,
   Degree DECIMAL(4,1),
   PRIMARY KEY(sno,cno),
	CONSTRAINT FK_Sno FOREIGN KEY(Sno) REFERENCES Student(Sno),
   CONSTRAINT FK_cno FOREIGN KEY(cno) REFERENCES course(cno)
);

INSERT INTO student VALUES('108','曾华','男','1977-09-01','46','95033'),
                          ('105','匡明','男','1975-10-02','48','95031'),
                          ('107','王丽','女','1976-01-23','47','95033'),
                          ('101','李军','男','1976-02-20','47','95033'),
                          ('109','王芳','女','1975-02-10','48','95031'),
                          ('103','陆君','男','1974-06-03','49','95031');



INSERT INTO teacher VALUES('804','李诚','男','1958-12-02','副教授','计算机系'),
                          ('856','张旭','男','1969-03-12','讲师','电子工程系'),
                          ('825','王萍','女','1972-05-05','助教','计算机系'),
                          ('831','刘冰','女','1977-08-14','助教','电子工程系');
                          
INSERT INTO course VALUES('3-105','计算机导论','825'),
                         ('3-245','操作系统','804'),
                         ('6-166','数字电路','856'),
                         ('9-888','高等数学','831');
                          

INSERT INTO score VALUES('103','3-245','86'),
                        ('105','3-245','75'),
                        ('109','3-245','68'),
                        ('103','3-105','92'),
                        ('105','3-105','88'),
                        ('109','3-105','76'),
                        ('101','3-105','64'),
                        ('107','3-105','91'),
                        ('108','3-105','78'),
                        ('101','6-166','85'),
                        ('107','6-166','79'),
                        ('108','6-166','81');

alter table course add CONSTRAINT FK_Tno FOREIGN KEY(Tno) REFERENCES Teacher(Tno);

-- 1查询Student表中的所有记录的Sname、Ssex和Class列。
SELECT Sname,Ssex,Class FROM student;
-- 2查询教师所有的单位即不重复的Depart列
SELECT DISTINCT Depart FROM teacher;
-- 3查询Student表的所有记录。
SELECT * FROM student;
-- 4查询Score表中成绩在60到80之间的所有记录
SELECT * FROM score WHERE Degree BETWEEN 60 AND 80;
-- 5查询Score表中成绩为85，86或88的记录
SELECT * FROM score WHERE Degree='85' or Degree='86' OR Degree='88';
-- 6查询Student表中“95031”班或性别为“女”的同学记录。
SELECT * FROM student WHERE class='95031' OR Ssex='女';
-- 7以Class降序查询Student表的所有记录。
SELECT * FROM student ORDER BY Class DESC;
-- 8以Cno升序、Degree降序查询Score表的所有记录。
SELECT * FROM score ORDER BY Cno asc,Degree DESC;
-- 9查询“95031”班的学生人数。
SELECT class,COUNT(class) 人数 FROM student WHERE class='95031' GROUP BY class;
-- 10查询Score表中的最高分
SELECT MAX(Degree) 最高分 FROM score;
-- 11查询每门课的平均成绩。
SELECT course.cno 课程号,AVG(Degree) 平均成绩 from course join score on course.Cno=score.Cno group BY course.Cno;
-- 12查询所有学生的Sname、Cname和Degree列。
SELECT sname 姓名,cname 课程名,Degree 分数 FROM student LEFT outer JOIN score ON student.Sno=score.sno LEFT outer JOIN course ON score.Cno=course.cno;
-- 13查询分数大于70，小于90的Sno列
select sname 姓名 FROM student LEFT OUTER JOIN score ON student.Sno=score.Sno WHERE Degree BETWEEN 70 AND 90;
-- 查询分数大于70，小于90的Sno列，并显示Degree列
select sname 姓名,Degree 分数 FROM student LEFT OUTER JOIN score ON student.Sno=score.Sno WHERE Degree BETWEEN 70 AND 90;
-- 查询分数大于70，小于90的Sno列，并显示Degree列，输出分数降序排列
select sname 姓名,Degree 分数 FROM student LEFT OUTER JOIN score ON student.Sno=score.Sno WHERE Degree BETWEEN 70 AND 90 order BY Degree DESC;
-- 14查询所有学生的Sname、Cno和Degree列。
SELECT Sname 姓名,Cno 课程名,Degree 分数 FROM student,score WHERE student.Sno=score.sno;
-- 15查询所有学生的Sno、Cname和Degree列。
SELECT Sno 学号,Cname 课程名,Degree 分数 FROM score JOIN course ON score.Cno=course.cno;
-- 16查询存在有85分以上成绩的课程Cno.
SELECT cno 课程号 FROM score WHERE Degree>85;
-- 17查询至少有2名男生的班号
SELECT class,COUNT(Ssex) FROM student WHERE Ssex='男';
SELECT class,COUNT(Ssex) FROM student WHERE Ssex='男' COUNT(Ssex)>2;
-- 查询Student表中不姓“王”的同学记录
SELECT * FROM student WHERE sname NOT LIKE '王%';
-- 查询Student表中每个学生的姓名和年龄。
SELECT sname 姓名,Sage 年龄 from student;
-- 查询Student表中最大和最小的Sbirthday日期值。
SELECT max(Sbirthday) 最大,MIN(Sbirthday) 最小 FROM student;
-- 以班号和年龄从大到小的顺序查询Student表中的全部记录。
SELECT * FROM student ORDER BY class DESC,Sbirthday DESC;
-- 查询“男”教师及其所上的课程。
SELECT Tname 教师,Tsex 性别,Cname 课程名 FROM teacher JOIN course ON teacher.Tno=course.Tno WHERE Tsex='男';





CREATE DATABASE 电影资料库;

USE 电影资料库;

CREATE TABLE 电影信息表(
   影片编号 INT PRIMARY KEY,
   片名 VARCHAR(50) UNIQUE,
   发行公司 varchar(50),
   发行时间 SMALLINT DEFAULT 90,
   片长 CHAR(4),
   影片类型 CHAR(4)
);

CREATE TABLE 演员信息表(
   演员编号 INT PRIMARY KEY,
   姓名 varchar(50),
   性别 CHAR(2),
   出生地 varchar(50)
);

CREATE TABLE 电影_演员信息(
   影片编号 INT,
   演员编号 INT,
   演员类型 CHAR(4),
   CONSTRAINT FK_影片编号 FOREIGN KEY(影片编号) REFERENCES 电影信息表(影片编号),
   CONSTRAINT FK_演员编号 FOREIGN KEY(演员编号) REFERENCES 演员信息表(演员编号)
);

INSERT INTO 电影信息表 VALUES(17507018,'消失的她','北京壹同传奇影视文化有限公司','2023','121','离奇'),
                             (10147382,'我和我的祖国','华夏电影发行有限责任公司','2019','158','剧情'),
                             (12568436,'我和我的家乡','北京京西文化旅游股份有限公司','2020','153','喜剧'),
                             (10195210,'银河补习班','天津橙子映像传媒有限公司','2018','147','剧情');

INSERT INTO 演员信息表 VALUES(101,'朱一龙','男','湖北省武汉市'),
                             (102,'倪妮','女','江苏省南京市'),
                             (103,'文咏珊','女','中国香港'),
                             (104,'杜江','男','山东省济南市'),
                             (111,'黄渤','男','山东省青岛市'),
                             (112,'张译','男','黑龙江省哈尔滨市'),
                             (113,'吴京','男','北京市'),
                             (114,'刘昊然','男','河南省平顶山市'),
                             (121,'葛优','男','河北省衡水市'),
                             (122,'黄渤','男','山东省青岛市'),
                             (123,'邓超','男','江西省南昌市'),
                             (124,'沈腾','男','黑龙江省齐齐哈尔市'),
                             (131,'邓超','男','江西省南昌市'),
                             (132,'白宇','男','陕西省榆林市'),
                             (133,'任素汐','女','山东省烟台市'),
                             (134,'李建义','男','北京市');

INSERT INTO 电影_演员信息 VALUES(17507018,101,'实力'),
                                (17507018,102,'实力'),
                                (17507018,103,'实力'),
                                (17507018,104,'实力'),
                                (10147382,111,'喜剧'),
                                (10147382,112,'实力'),
                                (10147382,113,'实力'),
                                (10147382,114,'实力'),
                                (12568436,121,'喜剧'),
                                (12568436,122,'实力'),
                                (12568436,123,'实力'),
                                (12568436,124,'实力'),
                                (10195210,131,'实力'),
                                (10195210,132,'实力'),
                                (10195210,133,'实力'),
                                (10195210,134,'演绎');
                                
ALTER TABLE 电影_演员信息 ADD PRIMARY KEY(影片编号,演员编号);

SELECT 影片编号,发行公司,影片类型 FROM 电影信息表 WHERE 片名 LIKE '我和我的%';

-- 
SELECT TO_DAYS(NOW()) 天数;
-- 
SELECT DAYOFYEAR('2023-10-30') 天数;
-- 
SELECT WEEK('2023-10-30') 周数;

SELECT 片名,CHAR_LENGTH(片名) FROM 电影信息表;

SELECT 发行公司,LENGTH(发行公司) FROM 电影信息表;

SELECT 发行公司,MID(发行公司,2,8) 截取信息 FROM 电影信息表;

SELECT 影片编号,LENGTH(影片编号) FROM 电影信息表;

SELECT 影片编号,MID(影片编号,2,6) 截取编号 FROM 电影信息表;


-- (1)从student表中查看修了c01课程学生的sno，sname，sage，sdept
SELECT sno,sname,sage,sdept FROM student where sno in(SELECT sno FROM sc WHERE cno='c01');
-- (2)从sc表中查看计算机系、信息系、男生的选课情况
SELECT category FROM sc WHERE sno IN(select sno FROM student WHERE sdept='计算机系' AND '信息系' or Ssex='男');   
-- (3)从student表中查看修了c02课程，且成绩及格的学生所在的系别
SELECT sdept FROM student WHERE sno IN(SELECT sno FROM sc WHERE cno='c02' AND grade>60);
-- (4)查看修了数据库基础课程的学生的sname，sage，sdept
SELECT sname,sage,sdept FROM student WHERE sno IN(SELECT sno FROM sc WHERE cno IN(SELECT cno FROM course WHERE cname='数据库基础'));

-- (1)创建选课表(学号，课程号，成绩)
CREATE TABLE 选课表(
   学号 varchar(10),
   课程号 VARCHAR(10),student
   成绩 INT
);
-- (2)从sc表中查看修了c01、c02，且成绩及格的学生选课情况，插入到选课表
INSERT INTO 选课表 SELECT sno,cno,grade FROM sc WHERE cno='c01' OR cno='c02' AND grade>60;
-- (3)将sc表中修了数据库基础课程的学生的成绩添加20分
UPDATE sc SET grade=grade+20 WHERE cno IN(SELECT cno FROM course WHERE cname='数据库基础');
-- (4)将sc表中信息系的学生成绩减10分
UPDATE sc SET grade=grade-10 WHERE sno IN(SELECT sno FROM student WHERE sdept='信息系');
-- (5)从sc表中删除修了数据库基础课程的学生选课记录
UPDATE sc WHERE cno IN(SELECT cno FROM course WHERE cname='数据库基础');



-- 一．根据课堂七张表完成下列子查询：
-- 1.查询成绩为大于90分的学生的学号、姓名。
SELECT sno,sname FROM student WHERE sno IN(SELECT sno FROM sc WHERE grade>90);
-- 2.查询数学系成绩80分以上的学生的学号、姓名
SELECT sno,sname FROM student WHERE sdept='数学系' AND sno IN(SELECT sno FROM sc WHERE grade>80);
-- 3.查询选修了“数据库基础”课程的学生的学号、姓名。
SELECT sno,sname FROM student where sno in(select sno from sc where cno IN(SELECT cno FROM course WHERE cname='数据库基础'));
-- 4.查询计算机系考试成绩最高的学生的姓名
select sname FROM student WHERE sdept='计算机系' and sno IN(SELECT sno FROM sc having  MAX(grade)); 
-- 5.从sc表中查看考试成绩低于c02课程平均成绩的选课信息
SELECT * FROM sc WHERE cno='c02' and grade <(SELECT avg(grade) from sc WHERE cno='c02'); 


SELECT avg(grade) from sc WHERE cno='c02';


-- 为管理业务培训信息，建立3个表:
-- S(S#,SN,SD,SA)S#,SN,SD,SA 分别代表学号，学员姓名，所属单位，学员年龄
-- c(C#,CN)C#,CN 分别代表课程编号，课程名称
-- sc(S#,C#,G)s#,C#,G 分别代表学号，所选的课程偏号，学习成绩

CREATE DATABASE 业务培训;
USE 业务培训;
CREATE TABLE s(
   sm VARCHAR(10),
   sn VARCHAR(10),
   sd VARCHAR(10),
   sa INT
);
CREATE TABLE c(
   cla VARCHAR(10),
   cna VARCHAR(10)
);
CREATE TABLE sc(
   sm VARCHAR(10),
   cla VARCHAR(10),
   ge DECIMAL(3,1)
);

INSERT INTO s VALUES('1010236','楚黎明','轨道交通',32),
                    ('1010358','千歆琳','铁路运维',36),
                    ('1156872','辛佳琳','交通运输',42),
                    ('1056874','龙骁庬','航空乘务',28);

INSERT INTO c VALUES('s1-101','税收基础'),
                    ('k1-194','空乘礼仪'),
                    ('y1-183','运维管理'),
                    ('y2-156','运输管理'),
                    ('s2-000','思想教育'),
                    ('g1-123','行政管理');

INSERT INTO sc VALUES('1010236','s1-101',80),
                     ('1010358','k1-194',86),
                     ('1156872','y2-156',76),
                     ('1056874',null,79),
                     ('1010236','k1-194',82),
                     ('1010358','y1-183',84),
                     ('1156872','g1-123',72),
                     ('1056874','k1-194',76),
                     ('1010236','y1-183',84),
                     ('1010358',null,63),
                     ('1156872','s2-000',76),
                     ('1056874','y1-183',70),
                     ('1010236','y2-156',73),
                     ('1010358','y2-156',82),
                     ('1156872',null,81),
                     ('1056874','s1-101',92),
                     ('1010236','s2-000',96),
                     ('1010358',null,56),
                     ('1156872','y1-183',67),
                     ('1056874','g1-123',97),
                     ('1010236','g1-123',79),
                     ('1010358','g1-123',58),
                     ('1156872','s1-101',89),
                     ('1056874','s2-000',99);
                    


-- (1)使用标准 SQL 套语句查询选修课程名称为’税收基础’的学员学号和姓名?
SELECT sm,sn FROM s WHERE sm IN(SELECT sm FROM sc WHERE cla IN(SELECT cla FROM c WHERE cna='税收基础'));
-- (2)使用标准 SQL 语查询选修课程编号为’y2-156’的学员姓名和所属单位?
SELECT sn,sd FROM s WHERE sm IN(SELECT sm FROM sc WHERE cla IN(SELECT cla FROM c WHERE cla='y2-156'));
-- (3)使用标准SQL套语查询不选修课程编号为’s1-101’的学员姓名和所属单位?
SELECT sn,sd FROM s JOIN sc ON s.sm=sc.sm JOIN c ON sc.cla=c.cla WHERE sc.cla not IN(SELECT cla FROM c WHERE cla='y2-156');
-- (4)查询选修了课程的学员人数
SELECT count(cla) FROM c WHERE cna is not NULL;
-- (5)查询选修课程超过 5门的学员学号和所属单位?
SELECT sn,sd FROM s WHERE sm IN(SELECT sm FROM sc WHERE cla IN(SELECT cla FROM c group BY cna having count(cna)>5));


CREATE DATABASE student;
USE student;
CREATE TABLE Student(
   stuld VARCHAR(10),
   stuname VARCHAR(10),
   stuage int,
   stusex CHAR(2)
);
CREATE TABLE Teacher(
   Teald VARCHAR(10),
   Teaname VARCHAR(10)
);
CREATE TABLE course(
   Courseld VARCHAR(10),
   Coursename VARCHAR(10),
   Teald VARCHAR(10)
);

CREATE TABLE score(
   Stuld VARCHAR(10),
   Courseld VARCHAR(10),
   StuScore int
);

INSERT INTO student VALUES('0001','赵雷','18','男'),
                          ('0002','钱电','18','男'),
                          ('0003','季云','18','男'),
                          ('0004','周梅','18','男'),
                          ('0005','吴兰','20','女'),
								  ('0006','郑竹','20','女'),
                          ('0007','孙峰','20','女');

INSERT INTO teacher VALUES('0001','张三'),
                          ('0002','李四'),
                          ('0003','王五');

INSERT INTO course VALUES('0001','语文','0002'),
                         ('0002','数学','0001'),
                         ('0003','英语','0003');

INSERT INTO score VALUES('0001','0001','80'),
                        ('0001','0002','90'),
                        ('0001','0003','99'),
                        ('0002','0002','60'),
                        ('0002','0003','80'),
                        ('0003','0001','80'),
                        ('0003','0002','80'),
                        ('0003','0003','80'),
                        ('0004','0001','50'),
                        ('0004','0002','30'),
                        ('0004','0003','20'),
                        ('0005','0001','76'),
                        ('0005','0002','87'),
                        ('0006','0001','31'),
                        ('0006','0003','34'),
                        ('0007','0002','89'),
                        ('0007','0003','98');
                        
                        
-- 1.查询平均成绩大于60分的同学的学生编号和学生姓名和平均成绩
SELECT student.stuld,stuname,AVG(stuscore) FROM student JOIN score ON student.stuld=score.stuld GROUP BY stuld having avg(stuscore)>60;
-- 2查询所有学生的学号、姓名、选课数、总成绩
SELECT student.stuld,stuname,COUNT(courseld),SUM(stuscore) FROM student JOIN score ON student.stuld=score.stuld GROUP BY stuld;
-- 3.查询姓“张”的老师的个数
SELECT COUNT(teaname) 个数 FROM teacher WHERE teaname LIKE '张%';
-- 4.查询学过“张三”老师所教的所有课的同学的学号、姓名
SELECT stuld,stuname FROM student WHERE stuld IN(SELECT stuld FROM score WHERE courseld IN(SELECT courseld FROM course WHERE teald in(select teald from teacher where teaname='张三')));
-- 5.查询学过编号为“0001”的课程并且也学过编号为“0002”的课程的学生的学号、姓名
SELECT s.stuld, s.stuname
FROM student s
JOIN score c1 ON s.stuld = c1.stuld AND c1.courseld = '0001' 
JOIN score c2 ON s.stuld = c2.stuld AND c2.courseld = '0002';
-- 6查询所有课程成绩小于等于60分的学生的学号、姓名
SELECT student.stuld,stuname FROM student JOIN score ON student.stuld=score.Stuld WHERE stuscore<60 GROUP BY student.stuld;
select Student.Stuld,Student.StuName from student where Student.Stuld not in (select Student.Stuld from student,score where Student.Stuld = Score.Stuld and StuScore > 60);
-- 7.查询至少有一门课与学号为“0001”的学生所学课程相同的学生的学号和姓名
SELECT stuld,stuname FROM student WHERE stuld='0001' AND stuld IN(SELECT stuld FROM score WHERE courseld IN(SELECT courseld FROM course;
SELECT stuld FROM student WHERE stuld='0001';
SELECT courseld FROM score WHERE stuld IN(SELECT stuld FROM student WHERE stuld='0001');
SELECT stuld FROM score WHERE courseld IN(SELECT courseld FROM score WHERE stuld IN(SELECT stuld FROM student WHERE stuld='0001'));

SELECT stuname,stuld FROM student WHERE stuld IN(
SELECT stuld FROM score WHERE courseld IN(
SELECT courseld FROM score WHERE stuld IN(
SELECT stuld FROM student WHERE stuld='0001')));
-- 8.查询每门课程被选修的学生数
-- SELECT COUNT(stuld) FROM student WHERE stuld IN(SELECT stuld FROM score WHERE courseld IN(SELECT courseld FROM course WHERE coursename in(SELECT coursename FROM course GROUP BY courseld)));
SELECT coursename,count(course.courseld) FROM score left outer join course on score.courseld=course.courseld GROUP BY course.courseld;
SELECT coursename FROM course;
SELECT count(courseld) FROM score  GROUP BY courseld;
-- 9.查询平均成绩大于85的所有学生的学号、姓名和平均成绩
SELECT stuld,stuname FROM 


select Course.courseName,count(Score.courseld) from Score,Course where Score.courseld = Course.courseld group by Score.courseld;

-- (1)创建一个视图view_s01，包含计算机系和信息系学生的个人数据
CREATE VIEW view_s01 AS SELECT * FROM student WHERE sdept='计算机系' OR sdept='信息系';
-- (2)创建一个视图view_s02，包含每一门课的选课人数，以及课程号
CREATE VIEW view_s02 AS SELECT COUNT(cname),course.cno FROM course,sc WHERE course.cno=sc.cno GROUP BY sno;
-- (3)创建一个视图view_s03，包含成绩在70-90之间，且修了数据库基础的学生的学号，姓名，年龄，课程号，课程名，成绩
CREATE VIEW view_s03 AS SELECT student.sno,sname,sage,sc.cno,cname,grade FROM student JOIN sc ON student.sno=sc.sno JOIN course ON sc.cno=course.cno WHERE grade BETWEEN 70 AND 90 and cname='数据库基础';
-- (4)修改view_s01视图结构，包含所有学生的个人信息
ALTER VIEW view_s01 AS SELECT sno,sname,ssex,sage,sdept FROM student;
-- (5)向view_s01中插入任意三条数据，进行查看验证(视图+原表都查看)
INSERT INTO view_s01 VALUES('9531202','李刚','男','23','英语系'),
                           ('9531203','冯刚','男','26','英语系'),
                           ('9531205','奎六','男','25','语文系');
-- (6)修改view_s01视图中计算机系和信息系年龄加10岁
UPDATE view_s01 SET sage=sage+10 WHERE sdept='计算机系' or sdept='信息系';
-- (7)删除view_s03
DROP VIEW view_s03;
-- (8)删除view_s01中新插入的三条数据








ALTER TABLE course ADD UNIQUE(cname);

CREATE UNIQUE INDEX index_cname ON course(cname);

DROP INDEX index_cname ON course;

CREATE  INDEX index_cname ON course(cname);

INSERT INTO course value('c07','VB','3','2');




-- 1. 使用上课用到的七张表，创建满足以下条件的视图
-- 1) 查询学生的学号，姓名，所在院系，课程号，课程名，课程学分
CREATE VIEW view_01 AS SELECT student.sno,sname,sdept,sc.cno,cname,semester FROM student JOIN sc ON student.sno=sc.sno JOIN course ON sc.cno=course.cno;
-- 2) 查询学生的学号，姓名，选修课程名，成绩
CREATE VIEW view_02 AS SELECT student.sno,sname,cname,grade FROM student JOIN sc ON student.sno=sc.sno JOIN course ON sc.cno=course.cno;
-- 3) 查询每个学生的选课门数的视图，要求列出学生学号及选课门数
CREATE VIEW view_03 AS SELECT student.sno,COUNT(cname) 选课门数 FROM student JOIN sc ON student.sno=sc.sno JOIN course ON sc.cno=course.cno GROUP BY student.sno;
-- 4) 查询每个学生的选课学分的视图，要求列出学生学号及总学分
create view view_04 AS SELECT student.sno,SUM(semester) 总分数 FROM student JOIN sc ON student.sno=sc.sno JOIN course ON sc.cno=course.cno GROUP BY student.sno;
-- 注意事项：创建视图时，如果有遇到聚合函数，记得起别名
-- 2. 利用以上视图，完成如下查询
-- 1) 查询全部考试成绩大于等于90分的学生姓名，课程名和成绩
SELECT sno,cname,grade FROM view_02 WHERE grade>90;
-- 2) 查询选课门数超过3门的学生学号和选课门数
SELECT sno,选课门数 FROM view_03 WHERE 选课门数>3;
-- 3) 查询选课学分超过10分的学生的学号，姓名，所在系和选课总学分
SELECT view_01.sno,sname,sdept,总分数 from view_01 JOIN view_04 ON view_01.sno=view_04.sno WHERE 总分数>10;
-- 3. 建立信息系学生的视图IS_Student
CREATE VIEW IS_Student AS SELECT student.sno,sname,sage,cno,sdept  FROM student join sc on student.sno=sc.sno where sdept='信息系';
-- 4. 建立信息系选修了‘c01’号课程的学生的视图V_IS_S1。
CREATE VIEW V_IS_S1 AS SELECT * FROM view_01 WHERE sdept='信息系' and cno='c01';
-- 5. 建立信息系选修了‘c01’号课程且成绩在90分以上的学生的视图V_IS_S2。
CREATE VIEW v_is_s2 AS SELECT student.sno,sname FROM student JOIN sc ON student.sno=sc.sno WHERE sdept='信息系' and cno='c01' or grade>90;
-- 6. 定义一个反映学生出生年份的视图Birth_S。
CREATE VIEW birth_s AS SELECT YEAR(CURRENT_DATE()) - sage AS 出生年份 FROM student;
-- 7. 定义一个存放每个学生的学号及平均成绩的视图S_G
CREATE VIEW S_G AS SELECT sno,AVG(grade) 平均成绩 FROM sc GROUP BY sno;
-- 8. 利用IS_Student视图，查询信息系年龄小于20岁的学生。
SELECT sage FROM is_student WHERE sage<20;
-- 9. 利用IS_Student视图，查询信息系选修了‘C01’课程的学生的学号和姓名。
SELECT sno,sname FROM is_student WHERE sdept='信息系' AND cno='c01';
-- 10. 利用S_G视图，查询平均成绩90分以上的学生的学号和平均成绩。
SELECT sno,平均成绩 FROM s_g WHERE 平均成绩>90 GROUP BY sno;
-- 11. 删除前边定义的IS_Student视图
DROP VIEW is_student;



CREATE DATABASE testing;
USE testing;
CREATE TABLE student(
   sno varchar(10),
   Sname varchar(10),
   sage DATETIME,
   Ssex varchar(10)
);

INSERT INTO student VALUES('01','赵雷','1990-01-01','男'),
                          ('02','钱电','1990-12-21','男'),
                          ('03','孙1','1990-05-20','男'),
                          ('04','李','1990-08-06','男'),
                          ('05','周','1991-12-01','女'),
                          ('06','吴','1992-03-01','女'),
                          ('07','郑','1989-07-01','女'),
                          ('08','王','1990-01-20','女');
                          
CREATE TABLE 


-- 1)查询出只有两门课程的全部学生的学号和姓名。
select
-- 2)查询男生，女生人数。
SELECT stusex,COUNT(stusex) FROM student GROUP BY stusex;
-- 3)查询“李”姓老师的数量
SELECT teaname,COUNT(teaname) FROM teacher WHERE teaname LIKE '李%';
-- 4)检索“01”课程分数小于60，按分数降序排列的学生信息。
CREATE INDEX 学生信息 ON score(stuscore) WHERE cno='0001' AND stuscore<60 ORDER BY stuscore DESC;