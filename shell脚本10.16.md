# <font color = '#FF0000'>**10.16**</font>

### 一、shell的基本语法

#### **1.脚本：它是一个可以直接被执行/运行的文件；**

#### 2.shell脚本：利用shell语言编写的一个可执行文件；

#### 3.shell终端界面窗口：提供shell技术/语言进行编辑脚本的窗口命令行--->右键选择--->【打开终端】---->不仅能执行命令，还能在里面编写shell脚本；

#### 4.shell脚本的**编写和执行**可以借助vi编辑器，编写脚本，也可以借助**bash解析**运行脚本：/bin/bash

例：shell环境 = vi编辑器 + bash解析器

#### 5.编写第一个shell脚本；

#####            1>语法：vi  脚本文件名.sh

​     案例：新建一个脚本：file01.sh,输出"hello world!"

#####            2>脚本文件第一行：

​    #!/bin/bash :通过#!来指定该脚本编写完成后，是由/bin/bash解析器进行解析执行操作；

#####            3>shell脚本能够做的事情：

​     将许多命令连在一起，用户只需要执行该脚本一次，就可以把脚本中所有的命令全部被执行，后期还可以继续利用该脚本；

#####            4>脚本的运行/执行方式：

​               方式一：

​                           首先给脚本文件赋予可执行权限：chmod +x 文件名.sh

​                           最后再执行：./脚本名字.sh

​               方式二：直接交给bash解析器：/bin/bash 脚本名字.sh

​                             案例：创建一个脚本文件file02.sh,实现以下操作：

#### 6.shell变量的使用

​           **6.1>变量：指的是用来接受shell脚本在执行过程中会发生改变的数据；**

​           **6.2>声明(创建)变量**

​                  格式：变量名 = 值

​                       例：

​           **6.3>变量名的命名规则**

​                              1)首个字母必须是字母(Aa---Zz)；

​                              2)不能有空格，但是可以使用下划线'_'做连接，例：class_name="testing2304"；

​                              3)不能出现标点符号；

​                              4)不能出现关键词(指的是在Linux系统中已经有特殊含义的词语，比如ls,cp,mv...);

​          **6.4>调用变量：获取变量中储存的值**

​                 格式一:$变量名

​                 格式二:${变量名}    注：大括号的作用是为了明确变量名，告诉$具体要调用的变量；

​          **6.5>shell注释：**

​                           只起到解释说明的作用，不参加基本的执行，类似于备注

​                           格式：#注释的内容

​          **6.6>只读变量的设置：只允许读取变量中的值，不能进行修改；**

​                   格式：readonly    变量名

​          **6.7>删除变量**

​                  格式：unset   变量名

​                  备注：**只读变量**无法删除；

#### 7.shell字符串的操作；

​           **7.1>字符串：一般是由引号包裹起来的任意个字符；**

​           **7.2>字符串的拼接：把仁义的字符串数据，拼凑在一起；**

​                 格式：直接写在一起即可；

​          **7.3>获取字符串的长度：统计字符串中字符的总个数；**

​                格式：${#变量名}

```
          #!/bin/bash
          
          #声明两个变量
          s01="test"
          s02="testing_2304"
          
          #分别输出s01和 s02的长度
          echo "s01的字符串长度是:${#s01}"  #4
          echo "s02的字符串长度是:${#s02}"  #12
```

​          **7.4>字符串的截取操作；**

​                 格式：${变量名:开始位置的下标:截取字符的长度}；

​                 下标=位置-1 ；

​                 例：从第三个位置开始截取，下标：2 ；

```
          #!/bin/bash
          
          #声明一个变量
          s="this is testing2304'
          
          #请大家从第四个位置开始截取，长度6个字符
          echo"新的数据是:${s:3:6}"
          #请大家截取第七个位置到第十三个位置上的字符
          echo"结果是:${s:6:7}"
```

​                 备注：在字符串中，如果有空格，标点符号，数字都算一个字符；

 

#### 8.shell数组的使用

​          **8.1>数组:等同于数学上的集合用来存储多个相同类型的数据**

​          **8.2>声明(创建)数组**

​                格式:数组名=(值1 值2 值3 值4.....) 

​                备注:数组是不限制大小(数据个数);

​                         数组使用()来声明

​          8.3>关于数组的操作：

​                         1)获取数组中某个位置上的值：${数组[下标数]}

​                         2)获取数组中所有的值：${数组名[@]}

# <font color = '#FF0000'>**10.17**</font>

​          8.4>获取数组的长度操作：

​                          1)获取数组中所有值(存储值)的总个数：${#数组名[@]}

```
           #!/bin/bash
           #声明两个数组
           s01=(87 90 256 892 34 12 65)
           s02=("test" "test2304" "testing" "testing2304")
           #分别统计s01和s02两个数组中值的总个数(长度)
           echo  ${#s01[@]}    #7
           echo  ${#s02[@]}    #4
```

​                          2)获取数组中某个位置上的值的长度(值中字符的总个数)：${#数组名[下标]}

```
           #!/bin/bash
           #声明一个数组
           s02=("test" "test2304" "testing" "testing2304")
           #统计s02数组中第三个位置上的值的长度
           echo  ${#s02[2]}   #7
```

​         8.5>数组第二种创建方式：下标；

​                  格式：数组名[下标]=值

```
       #!/bin/bash

       #创建一个数组  arr=(35 12 80 83 95)
       arr[0]=35
       arr[1]=12
       arr[2]=80
       arr[3]=83
       arr[4]=95

       #输出arr数组中的所有值
       echo  "arr数组中所有的值是：${arr[@]}"

       #输出arr数组的长度(值的总个数)
       echo "arr数组的长度是：${#arr[@]}"
```



#### 9.shell其他的操作

​         9.1>' read '    把终端中用户输入的内容，读取到，传递到脚本中的变量；

​                  格式：read   变量名

```
       #!/bin/bash

       #声明一个变量 i=89  i=90
       read i
       read j

       #输出
       echo  "读取到的数据是:$i"
       echo  "读取到的数据是:$j"
```

​         9.2>定向符' > '   将操作的结果定向输入到指定的文件；

​                  例：Linux命令   >   文件名       将Linux命令执行的结果报存到指定的文件(**覆盖**)；

```
          [root@bogon shello2]# touch 1.txt 2.txt
          [rootabogon shello2]# echo"hello,world"> 1.txt
          [root@bogon shello2]# ls al /etc > 2.txt
          [root@bogon shell02]# echo"testing2304”> 2.txt
```

​                双重定向符' >> '   将操作的结果定向输入到指定的文件； 

​                  例：Linux命令   >>   文件名       将Linux命令执行的结果报存到指定的文件(**追加**)；

```
           [root@bogon shello2]# echo"test2304">> 2.txt
```

​         9.3>echo   ``    将Linux命令的执行将结果，看成是普通的字符串进行输出(了解)；        

```
       [root@bogon ~]# cal
       十月 2023     
       日 一 二 三 四 五 六
       1  2  3  4  5  6  7
       8  9 10 11 12 13 14
       15 16 17 18 19 20 21
       22 23 24 25 26 27 28
       29 30 31

       [root@bogon ~]# echo `cal`
       十月 2023 日 一 二 三 四 五 六 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17        18 19 20 21 22 23 24 25 26 27 28 29 30 31
```

### 二、shell运算符的使用

##### 1.运算符：用来进行计算，判断，比较等等相关操作；

##### 2.算术运算符

​          ' + '   ' - '   ' * '   ' / '     加减乘除

​          ' / '   除法   取商(不会做除尽的行为)   7/2=3

​          ' % '   除法   取余   7%2=1   6%2=0

备注：shell中如果想要进行计算的操作，需要借助于计算表达式$((计算公式))，$(3+2))--->5

```
#!/bin/bash
#声明两个变量
X=7
y=2
#加法 7+2
echo $(( $x+$y))
#乘法
echo $((10*3))
#取商s=7/2=3
s=$(( $x/$y))
echo $s
#取余数yu=7%2=1
yu=$(( $x%$y))
echo $yu
```

​          ' = '   赋值符号：将等号右边的值，赋值给等号左边的变量。

​          判断两个数值是否相等：

​          ' == '   恒等，判相等，如果两个数字相等，会返回一个Ture(成立，真)的结果，否则会返回一                 个false(不成立，假)的结果；

```
例:10==10判断结果: true    10==20 判断结果: false
```

​          ' != ' 不等于，判不相等，如果两个数字不相等，会返回一个true的结果，否则返回一个false的结果

```
例: 10!=10 判断结果: false   10!=20 判断结果: true
```

##### 3.判断条件语句/条件判断语句：if语句

格式一：if语句

**思想：只关注条件成立后的操作；**

​        if  [  判断条件  ]

​        then

​                语句块

​        fi

套路：如果条件成立，然后执行语句块

格式二：if...else语句

**思想：不管条件成立与否，都有对应的操作；**

​        if [ 判断条件 ]

​        then

​               语句块1(条件成立后要做的事情)

​        else

​               语句块2(条件不成立要做的事情)

​        fi

##### 4.关系运算符

​          ' -eq '   判等于；

​          ' -ne '   判不等于；

​          ' -gt '    判大于右边；

​          ' -lt '     判小于右边；

​          ' -ge '   判大于等于右边；

​          ' -le '    判小于等于右边；

# <font color = '#FF0000'>**10.18**</font>

##### 5.布尔运算符

​          主要连接多个判断表达式，操作结果只有**true**或**false**;

​       5.1>' ! '   非运算； **思想**：取反； ！true=false    !false=true

```
                 例：！90 -gt 75 ---> ! 90 > 75 --->true --->false
```

​       5.2>' -a '   与运算符；**思想**：连接多个判断表达式，只要有一个判断表达式结果为false，整体与出来的结果就是false(只要有false，结果就是false)

```
                 例：78>60 -a 12<90 -a 80>=100--->true -a true -a false ---> false
```

​       5.3>' -o '   或运算；<font color = '#FF0000'>**思想**：连接多个判断表达式，只要有一个判断表达式结果为true，整体或出来的结果就是true(只要有true，结果就是true)</font>

```
                  #!/bin/bash
                  #定义一个变量
                  x=82
                  #非取反!82>=100! false ---> true
                  if[ ! $x -ge 100 ]
                  then
                     echo "A"
                  fi
                  #与 82>90-a82<=100false -a---> false true
                  if[ $x -gt 90 -a $x -le 100 ]
                  then
                     echo "B"
                  else
                     echo "C"
                  fi
                  #或82<200false -o true82==90---> true
                  if [ $x -eg 90 -o $x -lt  200 ]
                  then
                     echo "D"
                  else
                     echo "E"
                  fi
```

##### 6.逻辑运算符：连接多个判断表达式，判断表达式需要用[[]]

​      6.1>' && '   逻辑与；只要有false，结果就是false;

​      6.2>' || '   逻辑或； 只要结果有true,结果就是true;

##### 7.文件测试运算符

​            用来检测文件的各种属性；

​      7.1>' -d '   判目录/文件夹；

​             ' -f '    判文件；

​             ' -r '    判可读；

​             ' -w '   判可写；

​             ' -x '    判可执行；

​             ' -s '    判文件内容是否为空，有内容返回true;

​             ' -e '    判文件是否存在；

##### 8.字符串运算符

​     8.1>判断字符串是否相等：

​            ' = '   判相等；

​            ' != '  判不相等/不等于；

​     8.2>判断字符串长度是否为0：

​            ' -z '   为0返回true;

​            ' -n '   不为0返回true;

​     8.3>判断字符串是否为空：

​            [  $变量名  ]   判断该变量中有没有存在字符串，不为空返回true；

##### 9.' test '   用来修饰判断条件 ---[]

   格式一：if   test   判断条件

​                   then

​                         语句块

​                  fi

  格式二：if   test   判断条件

​                  then

​                         语句块1

​                  else

​                         语句块2

​                  fi

### 三、shell语句的应用

##### 1.if语句格式三：

​              <font color = '#FF0000'>思想：多条件的判定/判断操作；</font>

```
               if   [  判断条件一  ]
​              then
​                 语句块1
​              elif [  判断条件二  ]
​              then
​                 语句块2
​              elif [  判断条件三  ]
​              then
​                 语句块3
​              elif [  判断条件四  ]
​              then
​                 语句块4
​              else
​                 语句块n
​              fi
```

##### 2.循环语句；

​           <font color = '#FF0000'>思想：只要循环判断条件成立，程序/语句就会一直做操作/执行；</font>

​           2.1while语句

​                格式：

```
      while((判断条件))
      do
        语句块(只要条件成立，就要一直被执行)
      done
```

​                备注：当条件成立时，就要一直执行do和done之间的语句块；当条件不成立，循环语句就**终止循环**；

​                注意：1)在循环语句中，对于判断的运算符，使用的是：' > ' ' < ' ' >= ' ' <= '

​                            2)let命令：让...操作：let  "变量的计算操作"

​                                                ' ++ '   自增运算符 ' +1 ';   let " n++ "

​                                                ' -- '     自减运算符 ' -1 ';   let " m-- "   

​           2.2>for循环语句

​                  格式：

```
       for((定义循环变量;判断条件;变量的计算操作))
       do
         语句块(只要条件成立，就要一直被执行)
       done 
```

# <font color = '#FF0000'>**10.19**</font>

##### 3.跳出循环的关键词

​           3.1>' break '   **强制终止循环**：只要循环体(do-done)中遇到break，无条件强制终止；

​           3.2>' continue '   **跳转到循环开始**的地方：

​           死循环：指的是判断条件永远成立，程序执行根本停不下来；

##### 4.语句之间的结合使用

​           判断条件语句+循环条件；

------

### 一、Linux其他操作命令的使用：

1.' free '   查看**系统内存**的使用情况；

​    ' Mem ' 行(第二行)是**内存的使用**情况。

​    ' Swap ' 行(第三行)是**交换空间的使用**情况

​    ' total ' 列显示系统**总的可用**物理内存和交换空间大小

​    ' used ' 列显示**已经被使用**的物理内存和交换空间。

​    ' free ' 列**显示**还有**多少**物理内存和交换**空间可用**使用

​    ' shared ' 列显示被**共享**使用的物理**内存大小**。

​    ' buff/cache ' 列显示被 buffer 和 cache **使用**的物理**内存大小**

​    ' available ' 列显示还可以被应用程序使用的物理内存大小

以不同的单位显示内存大小:-b 字节; 

​                                                -k    KB;

​                                                -m  MB;

​                                                -h 合适的

```
[root@localhost ~]# free -b
total        used        free      shared  buff/cache   available
Mem:     1019793408   649756672    89378816    44773376   280657920 104747008
Swap:    2147479552   171966464  1975513088
[root@localhost ~]# free -k
              total        used        free      shared  buff/cache   available
Mem:         995892      634696       82944       43724      278252    102128
Swap:       2097148      167936     1929212
[root@localhost ~]# free -m
              total        used        free      shared  buff/cache   available
Mem:            972         619          77          42         275        99
Swap:          2047         163        1884
[root@localhost ~]# free -h
              total        used        free      shared  buff/cache   available
Mem:           972M        619M         77M         42M        275M       99M
Swap:          2.0G        163M        1.8G
```

​      free -s  秒数    动态刷新内存的使用情况；

​      free -t    显示内存每列的总和；

2.find   查找文件

​         2.1>根据**文件名字**来查找

​                格式：find   路径    -name/-iname   文件名字关键词

​                 注意：-name :**区分大小写**；

​                            -iname :忽略大小写；

​                             如果不指定路径，默认是当前目录/路径下；

​                             *任意，所有的；

​                 find查找时，不仅查看当前目录，如果有子目录，也一并查看；

​          2.2>根据**文件大小**来查找   -size

​                  -size   大小值k    恰好等于

​                  -size   -大小值k   小于

​                  -size   +大小值k  大于

​                  格式：find   路径   -size   大小值k

​          2.3>根据**文件权限**来查找；

​                 -perm   权限文字

​                  格式：-perm  三个数字(ugo)        恰好等于该权限

​                             -prem   -三个数字(ugo)       且的关系：大于等于该权限

```
         例：-perm 644 文件权限要求: u至少包含rw，g至少包含r，o至少包含r
```

​                             -prem   /三个数字(ugo)       或的关系:ugo只要满足三个数字任意一个就会出来；

             例:-perm 644    3.txt 114--->会出来

3.yum   安装，卸载，更新应用程序软件包；

​           **3.1>yum install  软件名称     安装；**

​           **3.2>yum remove  软件名称    卸载；**

​           **3.3>yum  update      更新；**

​           3.4>yum  list   all     列出所有软件名称；

​           3.5>yum  clear  all   清除yum缓存；

​           3.6>yum check-update    列出可以更新的软件名称；

​           3.7>yum  info  软件名称   查看软件的介绍/描述；

​            **注： -y : yes  当遇到友好提示，默认直接代表yes;** 

### 二、LAMP环境的部署

面试点:问大家在工作中有搭建过测试环境/测试项目的部署环境?

##### 1.LAMP环境概述：

​    L：**Linux操作系统**，代表了WEB端应用程序部署的操作系统环境；

   A：**Apache服务器**，提供了WEB端应用程序的访问(我们可以把项目的源文件放入到服务器，开放的端口和地址)；

   M：**MySQL/MariaDB数据库**，提供了WEB端应用程序相关数据的存储和管理操作；

   P:  **PHP/Python环境**，给WEB端应用程序提供一系列的开发语言环境的支持；

<font color = '#FF0000'>**LAMP环境**给**WEB端应用程序**提供一个部署安装，运行使用的平台，搭建**动态网站**</font>----**>网站类型项目**；

2.LAMP环境搭建的流程

​             2.1>Linux操作系统：CentOS7

​                    **查看系统版本信息:  cat /etc/redhat-release**

```
       [root@bogon ~]# cat /etc/redhat-release
       CentOS Linux release 7.6.1810 (Core) 
```

​             2.2>安装Apache服务器：httpd

​                  1)安装apache服务器，以及相关的开发工具包(组件)

```
       yum  -y   install   httpd    httpd-devel
```

​                  2)启动apache服务器：把软件运行在系统中；

​                  systemctl:  在系统中管理各种软件的服务；

```
       systemctl   start   httpd
```

​                 例：开启某个软件服务：systemctl   start    软件名称

​                  3)设置Apache开机自启动

```
       systemctl   enable   httpd
```

```
       [root@bogon ~]# systemctl  start httpd
       [root@bogon ~]# systemctl enable httpd
       Created symlink from /etc/systemd/system/multi-user.target.wants/httpd.service to /usr/lib/systemd/system/httpd.service.
       [root@bogon ~]# 
```

​                   4)查看Apache服务器状态：看看有没有在运行(验证)；

```
        systemctl  status  httpd
```

# <font color = '#FF0000'>**10.20**</font>

​                    5)开放Apache服务器的访问设置

```
        firewall-cmd  --permanent  --zone=public  --add-service=http/https
```

​                     解释：通过防火墙设置，开放访问区域空间，并添加访问协议方法；

```
[root@bogon ~]# firewall-cmd  --permanent  --zone=public  --add-service=http
success
[root@bogon ~]# firewall-cmd  --permanent  --zone=public  --add-service=https
success
```

​                      6)设置完毕后，将防火墙重新加载

```
         firewall-cmd --reload
```

```
         [root@bogon ~]# firewall-cmd --reload
         success
```

​                     7)验证apache服务器能够正常访问:

​                        打开浏览器，输入本机的ip地址，看是否能够访问到apache服务器的测试页面

```
          查看本机IP地址(Linux虚拟机)：ifconfig或ip addr
```

​                         [验证apache服务器](https://note.youdao.com/s/8HxbzWUP)

​                2.3>安装MySQL/MariaDB数据库

​                     1)安装mariadb数据库、服务、库文件、工具包组件

```
yum -y install mariadb mariadb-server mariadb-libs mariadb-devel
```

```
         已安装:
           mariadb.x86 64 1:5.5.68- 1.el7
           mariadb- devel.x86 64 1:5.5.68- 1.el7
           mariadb- server.x86 64 1:5.5.68- 1.el7
```

​                     2)开启数据库的服务

```
         systemctl  start  mariadb
```

​                     3)设置数据库为开机自启动

```
         systemctl  enable  mariadb
```

```
[root@bogon -]# systemctl start mariadb
[root@bogon -]# systemctl enable mariadb                           Createdsymlinkfrometc/systemd/system/multiuser.target.wants/mariadb.service to usr/ib/systemd/system/mariadb.service
```

​                 2.4>安装php

​                      1)安装php: **yum -y install php**

​                      2)安装php和mysql关联的组件：**yum -y install php-mysql**

​                      3)安装其他组件：[参考文档](https://www.kdocs.cn/l/cmU1glcXt7BU?from=pwa)

​                2.5>在LAMP环境中，apache服务器提供WEB端应用程序源文件的存放地：**/var/www/html**

​                       1)验证：cd   /var/www/html

​                       2)生成一个页面：vi  info.php

​                          内容：调用php相关的信息描述

```
           <?php
                phpinfo();
           ?>
```

​                          最后，可以通过浏览器访问php页面：ip地址/info.php

​                 2.6>重启apache服务器：    

------

### 一、云服务器的配置

1.概述：服务器----->看成是一台电脑(计算机)----->没有显示器，只有一台主机----->也需要操作系统环境配合

2.阿里云服务器：看成是一台没有显示器的电脑；

3.配置：集中在【控制台】；

​                3.1>更改云服务器的操作系统

​                        1)先停止云服务器的运行；

​                        2)点击【更换操作系统】；

​                3.2>重置云服务器系统的实例密码；

​                        实例密码：指的是云服务器系统的帐号匹配的密码，例：centos系统：账号：root---->密码

​                3.3>finalshell工具：连接服务器/云服务器环境()

### 二.Docker容器技术概述

1.docker是基于**操作系统层面**(安装在操作系统中使用)的一项**虚拟化容器技术**(类似于虚拟机)该工具给使用者**提供了一个平台**，在平台上**有很多的容器**(集装箱)，在每一个容器中可以**单独封装不同的项目和它所需要的使用环境**，每个容器之间是相互独立，互不影响。

2.logo:鲸鱼货轮---->docker------>货轮上的集装箱---->docker提供的容器--->集装箱用来装货物---->容器封装项目环境

### 三、Docker和虚拟机的异同点；

1.相同点：基于操作系统层面的工具(安装)；

   不同点：虚拟机的使用，需要借助于第三方的软件，比如VM Player;

​                  虚拟机软件有了之后，还需要在软件中进行操作系统的安装，比如centos7；

​                  虚拟机操作系统环境部署完成后，才能进行程序运行时所需环境的搭建，比如lamp环境，最后再把项目放入环境中进行访问操作，整个过程稍显繁琐。对于docker来说，只需要安装完成，直接把项目和所需的环境封装在容器中。

​                  目标:简化部署流程，提供生产效率，使工作变得更加简单

2.docker  ce: 社区版     免费；

​                  ee:企业版     收费；

# <font color = '#FF0000'>**10.21**</font>

### 四、Docker容器技术项目部署操作

##### 1.验证：查看当前系统操作(centos7+)

```
cat   /etc/redhat-release
```

##### 2.建议：更新系统的软件包；

```
yum -y update
```

##### 3.重启：reboot

```
reboot
```

##### 4.安装docker

```
yum -y install docker
```

##### 5.查看docker版本信息

```
docker version
```

##### 6.开启docker服务

```
systemctl start docker
```

##### 7.设置docker开机自启动

```
systemctl enable docker
```

```
[root@VM-8-4-centos ~]# systemctl start docker
[root@VM-8-4-centos ~]# systemctl enable docker
Created symlink from /etc/systemd/system/multi-user.target.wants/docker.service to /usr/lib/systemd/system/docker.service.
```

8.docker工具安装完成后，就可以借助该工具提供的容器，来封装应应用程序和所需要的环境；

```
练习：docker容器封装LAMP环境，部署一个WEB端应用程序项目
LAMP环境：搭建动态网站
```

9.docker容器**封装LAMP环境**：一键部署

​               9.1>可以先获取一个打包好(封装好)的lamp环境的镜像文件();

```
         docker  search  -s  下载量(数字)  lamp   #查找/搜索下载量排名靠前的lamp镜像;
```

​               9.2>**拉取**(下载)合适的LAMP镜像文件到系统

```
         docker pull docker.io/tutum/lamp(镜像文件名字)
```

```
[root@VM-8-4-centos ~]# docker pull docker.io/tutum/lamp
Using default tag: latest
Trying to pull repository docker.io/tutum/lamp ... 
latest: Pulling from docker.io/tutum/lamp
8387d9ff0016: Pull complete 
3b52deaaf0ed: Pull complete 
4bd501fad6de: Pull complete 
a3ed95caeb02: Pull complete 
790f0e8363b9: Pull complete 
11f87572ad81: Pull complete 
341e06373981: Pull complete 
709079cecfb8: Pull complete 
55bf9bbb788a: Pull complete 
b41f3cfd3d47: Pull complete 
70789ae370c5: Pull complete 
43f2fd9a6779: Pull complete 
6a0b3a1558bd: Pull complete 
934438c9af31: Pull complete 
1cfba20318ab: Pull complete 
de7f3e54c21c: Pull complete 
596da16c3b16: Pull complete 
e94007c4319f: Pull complete 
3c013e645156: Pull complete 
Digest: sha256:d332e7e97606ac6407b0ba9ae9e9383c89d7e04c6f4853332e98f7d326408329
Status: Downloaded newer image for docker.io/tutum/lamp:latest
```

​               9.3>**查看镜像文件**

```
         docker  images
```

```
[root@VM-8-4-centos ~]# docker  images
REPOSITORY             TAG                 IMAGE ID            CREATED             SIZE
docker.io/tutum/lamp   latest              3d49e175ec00        7 years ago         427 MB
```

​               9.4>**把LAMP环境运行在Docker容器**(一键部署)

​                      1)在根目录下创建一个空白的文件夹(名字自定义)：把LAMP镜像文件中关于mysql数据库的一些配置参数，映射到该目录下；

```
          mkdir /mysql_data
```

```
[root@VM-8-4-centos /]# ls /
bin  boot  data  dev  etc  home  lib  lib64  lost+found  media  mnt  mysql_data  opt  proc  root  run  sbin  srv  sys  tmp  usr  var

[root@VM-8-4-centos /]# ls -l
total 76
lrwxrwxrwx.   1 root root     7 Mar  7  2019 bin -> usr/bin
dr-xr-xr-x.   5 root root  4096 Oct 21 10:04 boot
drwxr-xr-x    2 root root  4096 Nov  5  2019 data
drwxr-xr-x   19 root root  2980 Oct 21 10:03 dev
drwxr-xr-x.  95 root root 12288 Oct 21 10:07 etc
drwxr-xr-x.   4 root root  4096 Feb 17  2023 home
lrwxrwxrwx.   1 root root     7 Mar  7  2019 lib -> usr/lib
lrwxrwxrwx.   1 root root     9 Mar  7  2019 lib64 -> usr/lib64
drwx------.   2 root root 16384 Mar  7  2019 lost+found
drwxr-xr-x.   2 root root  4096 Apr 11  2018 media
drwxr-xr-x.   2 root root  4096 Apr 11  2018 mnt
drwxr-xr-x    4  102 root  4096 Oct 21 12:04 mysql_data
drwxr-xr-x.   3 root root  4096 Mar  7  2019 opt
dr-xr-xr-x  151 root root     0 Oct 21 10:03 proc
dr-xr-x---.   7 root root  4096 Oct 21 13:38 root
drwxr-xr-x   32 root root  1060 Oct 21 12:03 run
lrwxrwxrwx.   1 root root     8 Mar  7  2019 sbin -> usr/sbin
drwxr-xr-x.   2 root root  4096 Apr 11  2018 srv
dr-xr-xr-x   13 root root     0 Oct 21 10:54 sys
drwxrwxrwt.  15 root root  4096 Oct 21 11:30 tmp
drwxr-xr-x.  13 root root  4096 Mar  7  2019 usr
drwxr-xr-x.  20 root root  4096 Oct 20 11:31 var
```

​                      2)运行LAMP环境到容器

```
          docker run -d --name=lamp(容器名字,自定义) -p 8080:80 -p 3306:3306 -v /mysql_data:/var/lib/mysql docker.io/tutum/lamp
```

扩展：端口号(port)：每个软件都会有一个【唯一】的端口号，软件的名字是为了方便用户来识别，端口号，端口号是为了方便计算机系统和网络来识别；

```
[root@VM-8-4-centos ~]# docker run -d --name=lamp -p 8080:80 -p 3306:3306 -v /mysql_data:/var/lib/mysql docker.io/tutum/lamp
71d667ca9e90c7438962011906c7b2f442571261e349f90dbe4dec3557703358
```

删除容器：docker   rm     lamp(容器名字)

删除mysql配置参数文件夹：rm -rf  /mysql_data

10.**进入容器**(还是以命令行的形式进行操作)

```
docker  exec -it  lamp(容器名字)       /bin/bash
```

```
[root@VM-8-4-centos ~]# docker exec  -it  lamp  /bin/bash
root@590c0db8921d:/# 
```

11.对mysql进行安全设置

```
Setting the root password ensures that nobody can log into the MySQL
root user without the proper authorisation.

Set root password? [Y/n] y
New password: 
Re-enter new password: 
Password updated successfully!
Reloading privilege tables..
 ... Success!

By default, a MySQL installation has an anonymous user, allowing anyone
to log into MySQL without having to have a user account created for
them.  This is intended only for testing, and to make the installation
go a bit smoother.  You should remove them before moving into a
production environment.

Remove anonymous users? [Y/n] 
 ... Success!

Normally, root should only be allowed to connect from 'localhost'.  This
ensures that someone cannot guess at the root password from the network.

Disallow root login remotely? [Y/n] 
 ... Success!

By default, MySQL comes with a database named 'test' that anyone can
access.  This is also intended only for testing, and should be removed
before moving into a production environment.

Remove test database and access to it? [Y/n] 
 - Dropping test database...
ERROR 1008 (HY000) at line 1: Can't drop database 'test'; database doesn't exist
 ... Failed!  Not critical, keep moving...
 - Removing privileges on test database...
 ... Success!

Reloading the privilege tables will ensure that all changes made so far
will take effect immediately.

Reload privilege tables now? [Y/n] 
 ... Success!

Cleaning up...



All done!  If you've completed all of the above steps, your MySQL
installation should now be secure.

Thanks for using MySQL!


root@590c0db8921d:/# mysql -uroot -p123456
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 5.5.47-0ubuntu0.14.04.1 (Ubuntu)

Copyright (c) 2000, 2015, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> exit
Bye
```

12.到此位置，已经在docker容器中把lamp环境全部封装，设置完毕，只剩下放入网站项目进行搭建即可(WEB端应用程序)

13.解压出chanzhieps系统项目的源文件包【www】,把项目的源文件包，上传到docke容器；

**上传流程**:源文件包--->本地系统--->云服务器centos系统---->docker容器lamp环境搞定+WEB网站项目? )

​           1)源文件包上传到源服务器centos系统(上传到任意一个目录)

​            [finalshell工具](https://note.youdao.com/s/QjlaE1RU)

​            方式一:直接把软件包[拖拽]到对应的目录      

​            方式二:利用finalshell工具的上传功能

​            [利用finalshell工具的上传功能](https://note.youdao.com/s/QjlaE1RU)

​           2)上传完毕后，再从centos系统把源程序包放入docker容器:

```
    docker cp源程序包位置(/mnt/www或/home/www)   容器名字(lamp):/var/www/html
​   例: docker cp /mnt/wwwlamp:/var/www/html
​   注意: LAMP环境中项目源文件存放位置: var/www/html
```

​           3)更改www源程序包的权限：

```
    chmod 777 www
```

​             [源程序包的权限](https://note.youdao.com/s/TkHTgVB5)

14.来到云服务器控制台，开放项目的访问端口: 8080，80

​     掌握:设置安全组规则

​            [设置安全组规则](https://note.youdao.com/s/S7qcG5nu)

15.进行项目访问操作
http://云服务器公网的IP地址:8080/www/install.php
例:http://49.232.228.91:8080/www/install.php

[进行项目访问操作](https://note.youdao.com/s/KuEsAxVq)

