# <font color = '#FF0000'>**10.23**</font>

### 一、MySQL数据库的介绍

1.数据库：存放各种数据的仓库；数据技术所研究的对象/存储对象：数据data；

​                   主要集中在：科学的组织和存储数据，高效地获取和处理数据；

2.SQL:结构化查询语言，它是专为关系型数据库操作而建立的数据语言；

​           关系型数据库：这一类数据库对数据库存储和管理方式/组织形式：表，比如：mysql,oracle,sql  server,sqlite......

​           非关系型数据库：这一类数据库的组织形式不再是表，而是由非关系数据库的类别来决定，不同的非关系型数据库采用的数据组织方式不一样的，有文档、集合、键值对........，redis,mongdb.....

3.

4.MySQL数据库特征：

​                4.1>体积小：不需要占用过多的系统资源；

​                4.2>速度快：对于数据的处理速度基本上立即响应；

​                4.3>开源免费：成本低，技术支持是比较便宜的

### 二、MySQL数据库的安装与配置

1.mysql卸载:【控制面板】--->【MySQL组件】--->右键卸载

2.安装:

​          [参考安装文档](https://www.kdocs.cn/l/cbrPoddFqe6b?from=pwa)

3.MySQL工具: 连接mysql数据库

​          [自带的命令行](https://note.youdao.com/s/aOgvJW2j)

4.HeidiSQL工具: 连接MySQL数据库

​         [HeidiSQL工具](https://note.youdao.com/s/96kAwgSO)

### 三、MySQL数据库的创建、删除、查看

1.创建数据库

```
     语法: create database 数据库名字;
```

2.查看现有数据库

```
     语法: show databases;
```

3.删除数据库

```
     语法: drop database 数据库名字;
```

4.切换数据库

```
     语法: USE 数据库名字;
```

5.HeidiSQL工具的应用：点击【查询】--->新建一个SQL语句编辑区

​              [SQL语句编辑区](https://note.youdao.com/s/VlEjMqzf)

6.MySQL注释：解释说明，不参与执行(备注)

```
     单行注释：--  注释的内容
     多行注释：/*多行注释的内容*/
```

### 四.MySQL数据库中表的创建，修改，删除

#### 1.创建表：

```
        语法：
           create  table 表名(
              列名1 数据类型,
              列名2 数据类型,
              列名3 数据类型,
              ......
              列名n 数据类型
           );
```

```
       思想: 最后一列写完，不用加逗号;
```

2.mysql支持的数据类型：

```
               数值型,日期时间类型,字符串类型
```

​               2.1>数值型

```
               整数类型：tinyint    微整型    
                       smallint   小整型    
                       int        整型   默认  
                       bigint     大整型
               
               浮点型(浮点数)：小数
                       decimal(总位数,小数位)   默认
```

​               2.2>日期时间类型

```
              date      年月日      YYYY-MM-DD
              time      时分秒      HH:MM:SS
              year      年份        YYYY
              datetime  日期时间    YYYY-MM-DD HH:MM:SS   默认 
```

​               2.3>字符串类型

```
              char(字符长度)      定长字符串类型：给定的字符长度空间会全部占用，如果数据未占满，系统会自动补空格填充完毕;
              varchar(字符长度)   变长字符串类型：以实际的数据长度来占用空间，未被占有的，系统直接做释放;
          
          注意:在进行表的操作时，需要来到对应的库下。
```

3.删除表：

```
       语法: drop table 表名;
```

```
       删除多张表：drop  table  表名1,表名2,表名3....;
```

4.修改表结构：**alter table**系列的语句

​              4.1>添加列

```
              alter table 表名 add 列名 数据类型;
```

```
         扩展：添加多个列：alter table 表名 add (列名1 数据类型,列名2 数据类型....);
```

​              4.2>删除列

```
              alter table 表名 drop 列名;
```

​              4.3>修改列的数据类型

```
         语法: alter table 表名 modify 列名 新的数据类型;
```

​              4.4>修改列名(也可以同时修改数据类型)

```
         语法: alter table 表名 change 旧列名 新列名 数据类型;
```

5.显示表结构：

```
         语法: desc 表名;  
```

### **五.MySQL数据库中表约束的应用**

#### 1.约束：要求、限制：

```
           给表中的每一个列可以添加额外的要求/限制规则
```

#### 2.为了保证表中数据的完整性：

```
           指的是存储在数据库中的数据应该是准确的和可靠的，从而引入【约束技术】的操作
```

#### 3.约束的分类：

​               3.1>**实体**完整性约束

​               3.2>**域**完整性约束

​               3.3>**参照**完整性约束

# <font color = '#FF0000'>**10.24**</font>

#### **4.实体完整性约束：**

```
             思想：保证表中数据的唯一性(不能出现重复的数据)；
```

```
             提供了两个约束：
                         主键约束 primary key，
                         唯一约束  unique
```

​                   **4.1>主键约束  primary  key**

```
             思想：唯一，不重复，不为空，有且只能有一个
```

```
      解释：一旦表中的某个列被关联了主键约束，那么该列在存储值时，一定是唯一，不重复，不为空
```

​                         1)创建表的同时关联主键约束

```
      格式一:
            create table 表名(
               列名1 数据类型 primary key,
               列名2 数据类型
            );
```

```
      格式二:
            create table 表名(
              列名1 数据类型,
              列名2 数据类型,
              列名3 数据类型,
              constaint 主键约束 primary key(列名)
            );
```

```
        备注：主键约书名字,
```

```
      格式三:
             create table 表名(
              列名1 数据类型,
              列名2 数据类型,
              primary key(列名1)
             );
```

​                          2)针对已经存在的表关联主键约束

```
        前提:只有存在的列数据满足唯一,不重复、不为空的情况,才能把该列关联主键约束;
```

```
      格式一:
            alter table 表名 add primary key(列名);
```

```
      格式二:
            alter table 表名 add constraint 主键约束的名字 primary key(列名);
```

```
      格式三:
            alter table 表名 modify 数据类型 primary key;
```

​                       3)删除主键约束

```
      语法: alter table 表名 drop primary key;            
```

​                  **4.2>联合主键: 属于主键约束:**

```
           只不过对于primary key修饰的是多个列，相当于把多个列看成是个整体，形成一个特殊的"大列”，让这些列共同遵守”唯一，不重复，不为空"; 
```

​                      1)创建表的同时关联联合主键

```
      格式一:
            create table 表名(
               列名1 数据类型,
               列名2 数据类型,
               列名3 数据类型,
               constraint 主键约束名字 primary key(列名1,列名2)
            );
```

备注：主键约束的名字：如果题意/需求给了名字，我们直接照搬使用；如果名字自定义，则参考：PK_列名；constraint  约束

```
      格式二:
            create table 表名(
               列名1 数据类型,
               列名2 数据类型,
               primary key(列名1,列名2)
            );
```

​                      2)针对已经存在的表关联联合主键

```
      格式一:
            alter table 表名 add primary key(列名1,列名2);
```

```
      格式二：
            alter table 表名 add constraint 主键约束的名字 primary key(列名1,列名2);
```

```
      注意:一个表中不管是主键约束，还是联合主键，最多只能有一个(互斥)
```

​                      3)删除联合主键

```
       语法: alter table 表名 drop primary key; 
```

​                 **4.3>唯一约束：unique**

```
       思想:保证表中不会有重复的数据(唯一性);
           一个表中可以有多个唯一约束;
```

​                      1)创建表的同时关联唯一性约束

```
      格式一:
            create table 表名(
               列名1 数据类型 unique,
               列名2 数据类型 unique,
               列名3 数据类型
            );
```

```
      格式二:
            create table 表名(
               列名1 数据类型,
               列名2 数据类型,
               列名3 数据类型,
               constraint 唯一约束名字 unique(列名1),
               constraint 唯一约束名字2 unique(列名2)
            );
```

 备注: 唯一约束名字:如果题意/需求给了名字，大家照搬使用即可，如果名字自定义，参考写
法:UN 列名;                      

​                       2)针对已经存在的表关联唯一性

```
      格式:
           alter table 表名 add unique(列名);
```

​                       3)删除唯一约束

```
      格式:
           alter table 表名 drop index 唯一约束的名字;
```

#### 5.域完整性约束：

```
        思想:保证表中不会输入无效的值，提供了两个约束:
                                              默认约束  default
                                              非空约束  not null
```

​                 5.1> 默认约束default

```
        思想:会把默认的值自己填充在对应的列(用户不做输入时);默认约束在表中可以有多个;
```

​                        1)创建表的同时关联默认约束

```
           create table 表名(
               列名1 数据类型 default 默认值,
               列名2 数据类型 default '默认值',
               列名3 数据类型
           );
```

```
        默认值：如果是数值类型,直接写;
               字符串类型,日期时间类型的值,需要加引号;
```

​                        2)针对已经存在的表关联默认约束

```
        语法: alter table 表名 modify 列名 数据类型 default '默认值';
```

​                        3)删除默认约束

```
        语法: alter table 表名 modify 列名 数据类型;
```

​                 5.2>非空约束 not null

```
        思想:保证表中没有空的纪录;非空约束在表中也可以有多个;
```

​                        1)创建表的同时关联非空约束

```
            create table 表名(
               列名1 数据类型 not null,
               列名2 数据类型 nut null,
               列名3 数据类型
            );
```

​                       2)针对已经存在的表关联非空约束

``` 
       语法: alter table 表名 modify 列名 数据类型 not null;
```

​                       3)删除默认约束

```
       语法: alter table 表名 modify 列名 数据类型;
```

#### 6.参照完整性

```
       思想: 加强表与表之间的联系;
            提供约束:
                   外键约束 foreign key
```

​                  外键约束：

```
              1)针对两个表来说，外键约束把其中的一张表看成是主表(占据主导地位的表),
                              另外的一张表看成是从表(服从的表):从表参照引用主表;
              2)外键约束是建立在从表的列中:让从表的列,参照用主表的列,相当于通过列让两张表之间建立联系;
              3)建立联系的列:两个表中共有的列;列名可以不一致,但是列的数据类型和内容要保持一致;
              4)从表参照的列,要求主表中被参照的列,必须有主键约束或唯一约束;
              5)一但外键约束建立完成，对两张表就开始添加限制:
                 1>从表:从表如果想要插入/存储数据,必须要求主表中有相关记录,否则不允许插;
                 2>主表:如果主表的数据，被从表在参照引用，是不允许删除的;
              6)从表中是可以有多个外键约束的;
                一个从表可能会参照引用多个主表;
                不同的列参照主表的列也是不一样的;
```

​                       1)创建表的同时关联外键约束

```
            create table 主表表名(
               列名1 数据类型 primary key,
               列名2 数据类型
            );
```

```
            create table 从表表名(
               列名1 数据类型,
               列名2 数据类型,
               constraint 外键约束的名字 foreign key(从表列名1) references 主表表名(主表列名1)) 
               [constraint 外键约束的名字 foreign key(从表列名2) references 主表表名(主表列名2))]
            );
```

​                备注:外键约束名字:如果题意/需求给了,我们照搬使用即可;

​                        如果名字自定义:

​                                                  参考写法: FK_列名;references 参照用

​                        2)针对已经存在的表关联外键约束

```
           alter table 从表表名 add constraint 外键约束名字 foreign key(从表列名) referances 主表名字(主表列名);
```

​                       3)删除外键约束

```
           alter table 表名 drop foreign key 外键约束的名字;
```

# <font color = '#FF0000'>10.25</font>

### 一、SQL语句的分类

```
DDL语言: 数据定义语言，提供了create语句，
                         alter语句，
                         drop语句，
         实现对**数据库或表**的创建，修改，删除的操作；
```

```
DML语言:数据操纵语言/数据操作语言，提供了insert语句，
                                   delete语句，
                                   update语句，
                                   select语句，
       实现对**表中数据**的增删改查操作
```

### 二、插入数据的的操作：**insert语句**

​        格式一：

```
        insert into 表名(列名1,列名2,列名3,...) values(值1,值2,值3,...);
```

​        注意: 插入的值，和表中对应的列，必须是匹配的一一对应的

​        格式二:

```
        insert into 表名 values(值1,值2,值3,....);
```

​        格式三:

```
        insert into 表名 values(值1,值2,值3,....),(值1,值2,值3,....);
```

### 三、删除数据的操作：**delete语句**

​        格式一：删除整张表中所有的数据

```
        delete from 表名;
```

​        格式二：有条件的删除

```
        delete from 表名 where 条件;
```

​           补充：比较运算符: ' > ' 大于 ,

​                                            ' < '   小于, 

​                                            ' >= ' 大于(或)等于, 

​                                            ' <= ' 小于(或)等于,    

​                                            ' <>   != '     不等于;

​        格式三: 多条件的删除操作

​                      1)多条件同时满足：and

```
        delete from 表名 where 条件1 and 条件2 and 条件3....;
```

​                      2)多条件满足任意一个：or

```
        delete from 表名 where 条件1 or 条件2 or 条件3,....;
```

### 四、修改/更新数据的操作：**update**语句

​        格式一：

```
        update 表名 set 列名=值;
```

​        格式二:

```
        update 表名 set 列名1=值,列名2=值,列名3=值,...;
```

​        格式三:

```
        update 表名 set 列名1=值,列名2=值,列名3=值,... where 条件;
```

​           备注：在更新的过程中，也可以对列的数据进行计算的操作;

------

### 一、查询的基本操作：

1.查询：对存在于数据库中的数据按照特定的组合，条件，次序进行检索查看;

2.查询的基本语法：

```
        select 列名1,列名2,列名3,... from 表名;
```

​                    **select子句**: 体现的要**”查什么"**，写的是查询的**列**

​                    **from子句**: 体现的是**”从哪查”**，写的是查询的**表**

```
        '*'  任意,所有的意思;  select * from 表名;
```

3.去重复查询: distinct: 针对查询结果去重复后显示;

```
   格式: select distinct 列名 from 表名;
```

4.别名查询:

```
        针对查询的结果的列标题进行另起名字;
```

​       格式一：

```
        select 列名1 别名1,列名2 别名2,列名3 别名3,... from 表名;
```

​       格式二:   **as** 指定别名

```
        select 列名1 as 别名1,列名2 as 别名2,列名3 as 别名3,... from 表名;
```

5.场景: 在查询的过程中也可以对列进行计算的操作:

```

```

# <font color = '#FF0000'>10.26</font>

6.选择查询/条件查询：**where**子句

​       格式一：

```
        select 列名 from 表名 where 条件;
```

​                      1)比较运算符和逻辑运算符;

```
        比较运算符: ' > ' 大于 ,
​                 ' < '   小于, 
​                 ' >= ' 大于(或)等于, 
​                 ' <= ' 小于(或)等于,    
​                 ' <>   != '     不等于;
```

```
        逻辑运算符: ' and '  和
                  ' or ' 或
```

​                       2)范围搜索条件查询:

​                              eg1:满足范围区间内的数据: between 开始值 and 结束值;

​       格式一：

```
        select 列名 from 表名 where 列名 between 列名 and 结束值;
```

​                              eg2:排除范围区间内的数据: not between 开始值 and 结束值

​       格式二:

```
        select 列名 from 表名  where 列名 not between 列名 and 结束值;
```

​                       3)列表搜索查询

​                              eg1: 匹配列表中的任意一个值:**in**

​       格式一:

```
        select 列名 from 表名 where 列名 in(值1,值2,值3,...);
```

​                              eg2:排除列表中的任意一个值:**not  in**

​       格式二:

```
        select 列名 from 表名 where 列名 not in(值1,值2,值3,...);
```

​                      4)模糊查询/字符匹配查询：

```
           在条件中给定一个字符模板，只要能够以匹配字符模板，就会把相关的数据查询出来;
```

​                              eg1: 匹配字符模板相关的数据：**like**

​       格式一:

```
        select 列名 from 表名 where 列名 like '字符模板';
```

​                              eg2: 排除和匹配字符相关的数据：**not  like**

​       格式二:

```
        select 列名 from 表名 where 列名 not like '字符模板';
```

​                      字符模板：提供了两个通配符

```
        ' % ' 任意个字符(0或多个)
        ' _ ' 单个字符(1个)
```

​                     5)为空的查询:  

​                              eg1:为空记录的查询: **is null**

​       格式一：

```
        select 列名 from 表名 where 列名 is null;
```

​                              eg2: 不为空的记录查询: **not is null**

​       格式二: 

```
        select 列名 from 表名 where 列名 is not null;
```

7.聚合函数的使用：计算、统计

``` 
        sum(列名)   求和;
        avg(列名)   求平均值;
        max(列名)   求最大值;
        min(列名)   求最小值;
        
  格式:  select 聚合函数 from 表名;
  
  
        count(*)    统计总记录数(总行数);
        count(列名)  统计该列中的总个数; 
        
  备注:除count(*)之外，其他聚合函数操作时,均忽略null值;
       聚合函数(distinct 列名): 先对列中的数据进行去重复，再把数据交给聚合函数做计算、统计的操作;
```

8.行数限定查询: **limit**

​       格式一:

```
        select 列名 from 表名 limit 行数;        (默认从第一行开始查看)
```

​       格式二:

```
        select 列名 from 表名 limit 行数 指定位置的下标,行数;
```

9.分组查询: **group by**

```
  思想: 针对查询的结果，按照某个列来进行划分;
```

```
        select 聚合函数 from 表名 group by 列名;
```

10.针对分组后的数据，进行条件筛选，必须搭配**group by** :  <font color ='#FF0000'>**having**</font>

​        格式：

```
        select 聚合函数 from 表名 group by having 条件;    
```

​        注意：where后面的条件不能出现聚合函数(不能直接写聚合函数)，但是having支持聚合函数;

11.排序查询: **order by**

​        思想:  针对查询的结果，按照某个列进行升序/降序的操作;

​        格式一:

```
        select 列名 from 表名 order by  列名 asc/desc;
        
        asc  升序，默认;
        desc 降序;
```

小总结：

```
  select    列名
  from      表名
  where     条件
  group by  分组的列名
  having    聚合函数当条件
  order by  排列的列名
```

# <font color = '#FF0000'>10.27</font>

### 二、多表连接查询

1.在实际的操作中，我们操作的**数据往往来源于多张表，这个时候就可以进行多表查询，而实现多表查询的方式就是表连接**(表与表之间建立关系);

2.连接方式:

```
       内连接和外连接;
```

```
       内连接:只有表与表之间匹配到的数据,才会被查询出来;
```

​        格式一: **where** 实现多表连接;

```
        select 表名1.列名,表名2.列名 from 表名1,表名2 where 表名1.列名=表名2.列名 and 额外的条件;
```

​        格式二:**inner join on** 实现多表连接

```
        select 表名1.列名,表名2.列名 from 表名 [inner] join 表名2 on 表名1.列名=表名2.列名 where 额外的条件;
```

​        备注：inner  join  on的连接方式，如果有额外的条件，既可以放在on后来写，也可以单独关联where来写，建议放在where后面写入。**如果条件中的列，在多张表中存在，也是需要加上表名:表名.列名**

​        **都多张表的关联操作(表的数量>2)**

​        格式一:  **where**

```
        select 表名.列名 from 表名1,表名2,表名3,表名4 where 表名1.列名=表名2.列名 and 表名2.列名= 表名3.列名 and 表名3.列名=表名4.列名 and 额外条件;
```

​        格式二: **on**

```
        select 表名.列名 from 表名1 [inner] join 表名2 on 表名1.列名=表名2.列名 join 表名3 on 表名2.列名= 表名3.列名 join 表名4 on 表名3.列名=表名4.列名 表名4 where 额外条件;
```

​        针对**inner join on** 的连接方式，又可以划分为

​        **等值**连接:指的是条件中除了等号”=”，**没有其它**的比较运算符
​        **非等值**连接:指的是条件中除了等号”=”，**还有其它**的比较运算符

4.外连接：至少会返回一个表的所有内容；(思想)

​                   4.1>左外部连接：左外连接、左连接；

​                           思想：会返回左表的所有内容；

```
        left [outer] join on   如果左表的数据在右表中找不到匹配的信息，直接显示null
```

​                   4.2>右外部连接：右外连接、右连接；

​                          思想：会返回右表的所有内容；

```
        right [outer] join on  如果右表的数据在左表中找不到匹配的信息，直接显示null
```

​        **区分左右表:先写的表就是左表，后写的表就是右表**

​        格式一:

```
        select 表名.列名 from 表名1 left/right outer join 表名2 on 表名1.列名=表名2.列名 where 额外的条件;
```

# <font color = '#FF0000'>10.30</font>

### 三、MySQL常见的函数(了解)

#### 1.字符串函数

length():返回字符串的字节长度(一个汉字：？个字节；一个字母：？个字节)

char_length():返回字符串的长度(字符的总个数)

mid(原始字符,开始的位置,截取字符个数/长度):截取字符串

#### 2.数学函数

round():四舍五入

例：round(数字,保留的小数位)   指定保留的小数位

​        round(数字)   保留整数部分

least(值1,值2...)   求最小值

greatest(值1,值2...)   求最大值

#### 3.日期时间函数

now()   日期时间

courrent_date()   日期

courrent_time()   时间

to_days()   将日期转化为天数(从0开始)

dayofyear()   该年已过的天数

week()   当前时日所在的周数

#### 4.控制函数

if()  函数

if(判断条件,参数一,参数二)   判断表达式结果 True:执行参数一  ;   False: 执行参数二

if( null,参数一,参数二)   执行参数二



ifnull(参数一,参数二)   只要位置1上有值, 直接返回, 否者返回位置2

### 四、子查询的操作

1.子查询：指的是查询过程中，嵌套查询语句，一般放在**where子句中表示条件**；

**2.子查询应用的场景**：

​               2.1>看似题上给了条件，但条件的结果并没有明说，需要我们查询出来；

​               2.2>where 后面既然不能直接写聚合函数当条件，那么就可以利用子查询把聚合函数的结果(数插)查出来,拿上数据做即可;

**3.子查询的格式：**

​         格式一:   通过n匹配子查询的结果    **嵌套子查询** 

```
         select 列名 from 表名 where 列名 in(select 列名 from 表名 where 列名 in(select 列名 from 表名 where 条件));
```

​         延申：排除子查询结果相关的数据     not in(select 列名 from 表名 where 条件)

​         格式二:   通过=匹配子查询的结果      **相关/单子查询** 

```
         select 列名 from 表名 where 列名=(select 列名 from 表名 where 条件)
```

​         延申:1>' in '和' = ' 都可以匹配子查询:

​                       但是' = '匹图子查询时，要求子查询的结果只能有一个，如果出现多个就会报错;

​                       但是' in '匹配子查询时，不会限制子查询结果的个数，因为它是匹配任意一个值的，所以在不确定查询结果会返回多个值时，首选' in '

​                  2>有时候，条件中是需要和子查询的结果做比，那么也可以借助于比较运算符

```
         select 列名 from 表名 where 列名 比较运算符(select 列名 from 表名 where 条件);
```

# <font color = '#FF0000'>10.31</font>

### 一、视图描述

1.概述：

```
    视图是基于查询得到的一张虚表;   实表--->select--->虚表:视图;
    视图:如同真实的表一样，对表进行增删改查的操作,对视图同样成立,语法通用，只是把表写表名的地方换成视图的名字;
```

2.对视图进行增删改**insert,delete,update**的操作，原表(实表、基表)也会受到影响，反之也一样.

​           视图只能由实表进行查询创建；

3.**作用: 方便用户对数据进行操作**。例如，多表查询：所需要的数据会存在多张表中--->我们会频繁或使用--->放在一张视图(虚表)--->用到做些数据，只需要查询该视图即可;

### 二、视图的操作

1.创建视图：

```
    create view 视图的名字 as select 查询语句;
```

2.修改视图

​              2.1>修改视图结构

```
         alter view 视图的名字 as select 查询语句;
```

​                      例：ALTER VIEW view student AS SELECT sno,sname,sage,sdept FROM student;

​              2.2>修改视图的数据

```
         update 视图的名字 set 列名=值 where 条件;
```

​                      例：UPDATE view_student  SET  sage=sage+5  WHERE  sdept='计算机系';

3.删除视图

​              3.1>删除整个视图: 

```
         drop view 视图的名字;
```

​              3.2>删除视图中的数据：

```
         delete from 视图的名字 where 条件;
```

​                      例：DELETE FROM view student WHERE sdept='测试';

------

一、索引的概况 **index**

1.索引：

```
       索引是针对表中的列来进行设置的,能够快速定位数据,提高查询效率,索引的设置**没有个数限制**,默认情况下也能够对列中的数据进行**排序**;
```

2.作用：<font color = '#00FF00'>**优点**</font>

```
     1)加快数据的检索(最根本原因);
     2)保证数据的唯一性(唯一索引);
     3)实现表与表之间的参照完整性(设置有主键、外键、唯一约束的列,系统自动会给该列添加索引);
     4)在利用group by、order by进行分组和排序时，能够减少等待时间;
```

3.<font color = '#00FF00'>**缺点**</font>

```
     1)创建索引需要占用数据空间，花费时间;
     2)索引的存在会减慢增删改的操作速度;
     3)对于经常更新的表要保持索引较窄;
     4)对于小表建立索引，可能不会有优化的效果，一定是表中数据量越大，索引的优势就越明显;
```

4.<font color = '#FA8072'>**优先考虑建立索引的列**</font>

```
     1)建立有主键或外键约束的列;
     2)频繁查询或使用的列;
     3)连接中频繁使用的列;
     4)分组或排序操作时用到的列;
```

### 二、索引的操作

1.创建普通索引

```
     create index 索引的名字 on 表名(列名);
```

2.创建唯一索引：会保持数据的唯一性；

```
     create unique index 索引的名字 on 表名(列名);
```

​              例：DROP INDEX index_cname ON course;

​              **验证：唯一索引的限制：保证数据的唯一性**

3.删除索引

```
     drop index 索引的名字 on 表名;
```

​              例：DROP INDEX index_name ON student;

------

#### redis数据库的配置与连接：

1.解压redis数据库的软件包/工具包

2.启动redis数据库服务:dos命令行打开

```
     redis-server.exe  redis.windows.conf
```

3.连接redis数据库

```
     再重新进入DOS系统窗口,再次进入redis目录;
     
     redis-cli.exe
```

4.验证

```
     输入ping命令，得到PONG的结果值，就代表环境OK
```

