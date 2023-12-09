## 一、输入、输出方法

> input() : 是python内置的从==**键盘输入**==数据的方法，默认将输入的值转为字符串

> print()：是python内置的==控制台输出==的方法，可以输出指定的数据

```
# 定义变量a，初始化为1024
a = input("请输入一个字符串：")
# 在控制台打印输出a的值
print(a)
```



## 二  、标识符和关键字 :zzz:

### 1.关键字:deciduous_tree:

![关键字](https://img-blog.csdnimg.cn/direct/9a9534c0225e4ea09d388cd5a8010386.png#pic_center)

> 数值类型：False、True、None
>
> 控制语句：if、elif、else、for、while、break、continue
>
> 数据类型定义：def、class
>
> 异常处理：try、except、finally

- 关键字的==特点==：除了数值类型的关键字==首字母大写==；其他关键字都是小写的单词。

### 2、标识符:fast_forward:

给python中的==**变量、常量、方法、类**==取的名字就叫做==**标识符**==，是为了便于使用上述的数据类型。

1）标识符的组成==特点==：

- 由数字、字母、下划线组成：abc_129
- 数字是==**不能**==开头：12abc
- 大小写是==敏感==的：a、A
- 关键字==不能==作为标识符

```
"""
   # -*- conding:utf-8 -*-
   # @time       : 2023/12/9 15:23
   # @Author     : 咕咕
   # CSDN        :咕咕在测试
"""
abc_129 = 129
# 标识符不能数字开头
# 129abc = 129

a = 12
A = 9

print(a)
print(A)

# 关键字不能作为标识符，true不是标识符
true = 129

```

2）命名规范

> - 见名知义：name、xingMing、studentName、student_name
> - 驼峰式命名规范：python中没有强制要求使用驼峰式的命名规范
>   - 变量和方法：
>     - name、play()
>     - student**N**ame、get**N**ame()
>   - 类：
>     - Student()
>     - NorthStudent()
> - 下划线连接：所有单词都小写，用下划线连接所有单词
>   - student_name
>   - north_student()

```
studentName = "Smith"
name = "lucy"
student_name = "Tina"
```

## 三、注释

在python源文件中，不被解释器解释的内容，可以对当前的整个文档、某一行语句、一个方法进行解释说明的文字。

​        当然，有时候也会使用注释进行代码的调试。

### 1、多行注释

格式：

```
'''
xxx注释区域xxx
'''       

""" 
xxx注释区域xxx  

"""
```

```
"""
   # -*- conding:utf-8 -*-
   # @time       : 2023/12/9 15:23
   # @Author     : 咕咕
   # CSDN        :咕咕在测试
"""
```

作用：

> - 放在文档的最前端（最上面）：文档说明性注释，一般会有作者、该文档的版本、该文档的功能、最后修改的日期等
> - 放在方法、类中的第一行代码位置：就是文档注释了

### 2、单行注释

> 格式：#xxxx
>
> 作用：对一行代码、或者代码中的==某个变量的解释说明==，可以放在一行代码**上一行**、或者当前行的最后

```
# 该变量表示学生的姓名
studentName = "Smith" # 该变量表示学生的姓名
```

### 3、文档注释

格式：''' xxx ''' 或者 """ xxxx """

> - 要求：必须放在方法、类的第一行可执行代码位置，紧跟方法声明
>
> + 作用：可以作为对应一个方法的帮助文档使用

```
"""
   # -*- conding:utf-8 -*-
   # @time       : 2023/12/9 15:23
   # @Author     : 咕咕
   # CSDN        :咕咕在测试
"""

def play():
    '''该方法实现输出加法的求和运算'''
    a = 12
    b = 23
    print(a+b)


print(play.__doc__)
```

### 4、如何在pycharm中添加自动注释

> file--settings-->Editor-->File and Code Templates-->Python Script

![添加注释](https://img-blog.csdnimg.cn/direct/169815e1fa8445f881fa18449235259a.png#pic_center)

## 四、变量和常量:camera_flash:

### 1、行和缩进

> 行：在python中没有语句的结束符号，都是通过换行来起一行新的语句。

> 缩进：js中的代码块是==通过{}==来限制的，但是在python中==没有==大括号，是通过==相同的缩进==来表示，一般采用一个tab键（4个空格）

> 通过缩进可以==限制==相同作用域的代码快，一般格式**：==加缩进==**。

```
# 声明一个变量，并初始化赋值
a = int(input("请输入一个数："))
def play():
    '''该方法实现输出加法的求和运算'''
    b = 23
    if a >= 23:
        print(a + b)
        print(a - b)
    if a <= 23:
        print(a * b)
```

### 2、变量（重点）

> ==变量==：在代码运行过程中，其==值==会==发生改变==数据

> python中的变量定义的时候是==没有数据类型==的，其类型是初始化值的类型。

#### 1）变量的定义：==**变量名 = 初始化值**==

age = 18

age = 20

对这两条语句的理解：

- 浅：将age变量的值改为20
- 深：变量age其实是一个==引用==，只是指向了内存中的==实际对象==的==地址==

> 一行可以创建对个变量：a = b = c = 12

#### 2)变量的特点

- 变量定义的时候不需要==指定==数据类型
- 变量赋值什么数据，就是什么类型，可以通过==type()==查看

```
age = 23
# <class 'int'>
print(type(age))
```

- 变量==不初始化==不能使用
- 变量名是==标识符==，需要==符合命名==规范

### 3、常量

> ==常量==：在代码运行过程中，其值不发生变化的量。

#### 1）定义常量

其实这种数据在python没有相关的限制，但是可以==人为定义常量==。

**PI** = 3.1415926

看到==P==I是大写的，认为是==常量==，==不能改==他的值，但实际上你可以随便改。

#### 2）字面值的常量

- 整数常量：12
- 浮点数常量：12.12
- 字符串：==“==abc==”==

## 五、python中的数据类型

python中的变量定义不需要指定数据类型，但是赋值什么数据，就具备了什么数据类型。

### 1、支持的数据类型

#### 1）标准数据类型

> - 数值类型：整数、浮点数

> - 布尔类型：True、False

> - **字符串类型：''  或者""**

> - **列表类型**

> - **元组类型**

> - 集合类型

> - 字典类型

==注意==：

> - python中没有专门的字符类型概念，**一个字符的字符串:**'a'

> - 布尔类型和复数类型可以统一划归到数值类型中

#### 2）其他划分

**序列**类型：包括字符串、列表和元组三个，是个统称。**“aabcdefg”**

> - 数据有序

> - 可遍历

> - 可索引

> - 可重复

> - 有的可改变、有的不可改变

**映射**类型：数据都是由键值对组成，对应字典数据类型

### 2、数值类型（重点）

在语言编程中，所有的要素最终都要以**数值、字符串**的形式存储。

- 年龄：整数
- 薪资：浮点型数据
- 姓名：字符串
- 咱们班学生的成绩：[浮点型，浮点型，浮点型....]

#### 1）整数

==内存有多大，数据就可以存多少，而且整数永远是准确的==。

```
# 先输出2个整数类型
print(20)
print(123456789)
# 返回数据类型
print(type(20))
# 通过变量的形式存储，age在没初始化之前是没有数据类型的，初始化什么值，就是什么类型
age = 20 # 用age变量名表示年龄
print(type(age))
# python中整形数据的范围：内存有多大，数据就可以存多少，而且整数永远是准确的
print(123456789123456789123456789)
```

#### 2）浮点型数据

浮点型数据是有精度，默认保留==17位有效数字==，再高的就不准确了

```
# 输出2个浮点型数据
print(3.1415926)
print(3.1415926123456789)
# 查看浮点型数据的数据类型
print(type(3.1415926))
salary = 120900.99
# <class 'float'>
print(type(salary))
```

#### 3）布尔类型

布尔类型只有两个值，==True==和==False==。

```
# 输出布尔类型数据
print(True)
print(False)
flag = True
# <class 'bool'>
print(type(flag))
```

#### 4）整数的进制转换方法

进制的类型：

- 二进制：由0、1组成，以==0b==开头,bin()
- 八进制：由0、1、2、3、4、5、6、7组成，以==0o==开头,oct()
- 十进制：由0、1、2、3、4、5、6、7、8、9组成，==无前缀==
- 十六进制：由0、1、2、3、4、5、6、7、8、9、a、b、c、d、e、f组成，以==0x==开头,hex()

```
# 输出一个二进制类型数据,ob是二进制数据类型(bin())
print(0b10)
print(0b00)
print(0b11)
# 0o是八进制数据类型(oct())
print(0o10)
print(0o00)
print(0o77)
# 十进制是不用前缀
print(31)
# 0x是16进制数据类型(hex())
print(0x10)
print(0x00)
print(0xff)
```

> 进制转换的方法：

```
# 进制转换的方法
print(int(0b11))
print(oct(0b11))
print(oct(11))
print(hex(11))
print(int(0xf))
```

#### 5）常见是数学运算方法

```
# 数值类型数据的常用数学运算函数
# 大部分都数学运算方法都被定义一个math模块中（是python自带的）
# 导入模块（python自带的模块或者安装的第三方的模块）
import math

print(abs(-1))
print(math.ceil(3.14)) # 比这个浮点数大的最近的一个整数
print(math.floor(3.14)) #比这个浮点数小的最近的一个整数
print(math.sqrt(4)) # 开根方
print(math.pi)


# 生成一个随机的整数，会用到random模块
import random
print(random.randint(1000,10000))

```

> math模块中的常用方法的使用:

```
import math

# math模块中的常用方法的使用
"声明一个变量，初始化赋值"
y = 2
z = 16
# 返回x的绝对值
x = -5
print(abs(x))

# 返回x的5次方
print(pow(y, 5))

# 计算16的平方根
print(math.sqrt(z))

# 取不大于3.14的最大整数
print(math.floor(3.14))

# 取不小于3.14的最大整数
print(math.ceil(3.14))

print(round(3.14))

# 使用math模块中的sin方法计算正弦值
# 将角度转换为弧度
angle_in = math.radians(45)
print(math.sin(angle_in))

angle_log = math.log(100)
print(angle_log)
print(math.pi)

# 使用math模块中的exp方法计算指数值
print(math.exp(2))
```

> ==猜数字游戏==，随机产生一个100以内的整数，用户来猜，猜中终止

```
import random
# 生成随机数
number = random.randint(1, 100)

# 提示用户输入
print("猜一个1到100之间的整数，包括1和100。")
guess = int(input("请猜一下这个数字是多少："))

# 记录猜测次数
guess_count = 1

# 判断是否猜中
while guess != number:
    if guess < number:
        print("你猜的数字太小了，请再试一次。")
    else:
        print("你猜的数字太大了，请再试一次。")
    guess = int(input("请猜一下这个数字是多少："))
    guess_count += 1

# 猜中后输出结果
print("恭喜你，你猜对了！")
print("你一共猜了{}次。".format(guess_count))

```

### 3、字符串数据类型（重点中的重点）str

python中字符串默认是==unicode编码==的（支持中文等多国语言，==2个==直接==表示====一个==汉字）、拓展编码集utf-8（可变长度的==unicode编码==，==3个直接表示==一个汉字）

#### 1）字符串的定义

字符串是单引号或者双引号来表示。'abcd'    "abcdefg"   'a'  "a"

name = "gugu"

name = 'gugu'

- 字符串中的**\是有特殊含义的，是转义字符**

```
name = "我是 " gugu 测试"
# name = "我是 \" gugu 测试"
# name = "我是gugu测试\n,我去学习啦！！"
name = "我是gugu测试\t,我去学习啦！！"
print(name)
```

- 如果是涉及到字符串==嵌套==问题的处理：

```
# 字符串嵌套1:使用转义的方式实现了
# slogen = "六王毕\"四海一\""
# 字符串嵌套2：区分使用单引号和双引号，内单外双、内双外单
slogen = "六王毕'四海一'"
print(slogen)
```

- 自然字符串的定义（重点）：在字符串之前添加==r==或者==R==，取消了转义字符\作用的用法

```
# 自然字符串的使用，在字符串的前面加上r或者R来表示
# 现在的\t就是一个字符串，没有了特定的含义了
# 一般用于对路径的处理上
# name = r"我是gugu测试\t,我去学习啦！！"
# print(name)
paths = "D:\Program Files (x86)\Steam\steamapps\workshop\content\431960\888689688"
# 方法1：通过再加一个\,将之前的\的转义功能取消掉
paths = "D:\Program Files (x86)\\Steam\\steamapps\\workshop\\content\\431960\\888689688"
# 方法2：自然字符串表示
paths = R"D:\Program Files (x86)\Steam\steamapps\workshop\content\431960\888689688"
print(paths)
```

- 字符串的多行显示问题：一个字符串特别长，一行写不下了，怎么办，建议使用第一种写法。

```
# 声明一个变量，并初始化赋值字符串
longstring = r"长叹息以掩气兮,"\
             r"哀民生之多艰"
print(longstring)
#
longString1 = "长叹息以掩气兮,\n\
哀民生之多艰。"
print(longString1)
#
longstring3 = "长叹息以掩气兮,\
哀民生之多艰"
print(longstring3)
```

#### 2)字符串编码问题

> 在python语言中，每一个字符（字母、汉字、日文等）都会对应一个==**unicode字符集中的整数编码**==。

##### 1）字符和编码的转换

> ord() : 将一个字符转为整数编码

> chr()：将一个整数编码转为对应的字符

```
#转为整数编码格式
print(ord("犇"))
print(ord("森"))
print(ord("龘"))
#将整数编码转为字符
print(chr(29319))
print(chr(26862))
print(chr(40856))# 龘
# unicode编码是兼容ascii码的（只有128个字符）
print(chr(65))# A
print(chr(97))# a

print(chr(41000))
```

**看到这里的人都**：祝大家明年龙行==龘龘==

##### 2）编码、解码、乱码

> 编码：将字符串转为整数的过程叫做编码，**==encode()==**

> 解码：将整数转为字符串的过程，必须和编码的字符集要相同，**==decode()==**

> 乱码：**==编码==和==解码==用的==字符集不同==**，乱码不一定是出了==特殊符号==

```
# 1、将A字符串编码为ascii字符集中的整数形式（二进制、十进制、十六进制）
print("A".encode("ascii"))  # b'A'

# 2、好，按照gb2312字符集转为整数
print("好".encode("gb2312"))  #b'\xba\xc3'
print("好".encode("utf8"))    # b'\xe5\xa5\xbd'

# 3、b'\xba\xc3' 按照gb2312转为汉字（解码）
str1 = b'\xba\xc3'
print(str1.decode("gb2312"))
# print(str1.decode("utf8"))

# 3、b'\xd0\xa1 按照gb2312转为汉字（解码）
str1 = b'\xd0\xa1'  # 对应的小
print(str1.decode("gb2312"))
print(str1.decode("utf8"))  # С---->斯拉夫语言
```

#### 3）字符串的格式化输出

> print()可以输出数据到控制台的。

常见的占位符：

- %d：接收整数，不能接字符串
- %s：接字符串的，但是你给整数也行
- %f：接浮点数，不能接字符串
- %ms：m表示数据宽度

格式化数的方式：

- print("%s"%age)
- print("xx"+age)
- print("{}".format(age))

> 关于结尾字符的使用：==end参数==

```
"""
   # -*- conding:utf-8 -*-
   # @time       : 2023/12/9 17:27
   # @Author     : 咕咕
   # CSDN        :咕咕在测试
"""

# print("12")
# 格式化：按照设定的格式输出数据
# 需求：输出控制台信息：我的年龄是28/38/xx(自己改)岁。
# age = input("请输入年龄:")
# 直接输出字符串
# print(age)
# %s : 字符串占位符（数值）
# %d ：整数数据
# %f : 浮点型数据
# %m.nf : 浮点型数据，m和n指的的是整数和小数部分的长度
# %d format: a number is required, not str
# print("我的年龄是%d岁。"%age)
# 方式1
# print("我的年龄是%s岁。"%age)
# 方式2
# print("我的年龄是{}岁".format(age))

# 需求2：我的年龄是28/38/xx(自己改)岁，姓名是yy。
age = input("请输入年龄:")
name = input("请输入姓名：")
# 格式化输出
print("我的年龄是%s,我的姓名是%s."%(age,name))
print("我的年龄是{}，我的姓名是{}。".format(age,name))
print("我的年龄是{1}，我的姓名是{0}。".format(age,name))
print("我的年龄是{1}，我的姓名是{1}。".format(age,name))
print("我的年龄是"+age+",我的姓名是"+name+".")

# 关于输出数据的宽度问题
print("我的年龄是：%5s"%age)
print("我的薪资是%2.3f."%(12345.6789))

# 关于字符串的结尾符
print("我的年龄是{1}，我的姓名是{1}。".format(age,name),end="\t")
print("我的年龄是：%5s"%age)
```

#### 4）字符串处理的运算符

字符串是有序的、可索引的、可重复的、不可改变的、**可切片（重点）**。

- 索引的格式：字符串变量名[索引号]，索引号有两种正向和反向

```
# 定义一个字符串,吧字符串看作是一个由多个元素组成的数据结构
str1 = "abcdefg"
# 可索引的，正向和反向索引
# 索引的格式：字符串变量名[索引号]
print(str1[0])
print(str1[-1])
# string index out of range
# print(str1[7])  # 会报错
print(str1[-7])
```

- 切片：所有的==序列==类型==都能切片==，格式：**字符串变量名[start:end:step]**

通过切片可以得到一个子序列（子字符串），==左闭右开==，可以取到start==索引号==对应的元素，但是取不到end==索引号==对应的元素。

```
# 切片： 变量名[start:end:step]
# 默认的step都值都是1
print(str1[0:2])
print(str1[-7:-1])
# 0是正向索引、-7是反向索引，取不到值
print(str1[-7:0])
print(str1[-7:])
print(str1[:])

# 加上step参数，步调，隔几个取一个值
print(str1[0:4:2])
print(str1[::-1])
# 字符串是不变的，切片的只是一个副本
print(str1)
```

- 字符串可以使用+运算符进行==拼接==运算
- 字符串可以使用*运算符进行==复制==运算

```
# +运算符
str2 = "123456"
str3 = str1 + str2
str4 = "abc" \
       "123"
print(str3)
print(str4)

# *复制运算符
print(str2*2)
print(str2)
```

- 字符串支持==成员运算==：**in和not in**,判断某个数据**是否是**字符串的元素（子串）。

```
str2 = "123456"
print("234" in str2)
print("2346" in str2)
print("2346" not in str2)
```

#### 5）字符串处理的常用方法

- 获取字符串中某个元素的索引号的方法：==**index()**==，是序列类型的通用方法，查不到==子串会报错==

```
str2 = "123456"
print(str2.index("2"))
print(str2.index("234")) #返回到匹配上的第一个元素的索引号
# 报valueerror: substring not found
# print(str2.index("7")) 
print(str2.index("2",2,4))
```

- 获取字符串中某个元素的索引号的方法：==**find()**==，只能给字符串使用，查不到不报错，==会返回-1==

```
str2 = "123456"
print(str2.find("2"))
print(str2.find("234")) #返回到匹配上的第一个元素的索引号
print(str2.find("7")) # -1
print(str2.find("2",2,4))
```

- 获取==字符串的长度==（==元素的个数==）的方法：==**len()**==，是序列类型的通用方法

```
print(len(str2))
```

- 通过==相同子串出现次数==的方法：==**count()**==，是序列类型的通用方法

```
print(str2.count("2"))
```

- 返回==最大元素==和==最小元素==的方法：==**max()、min(),**==是序列类型的通用方法，比得是元素的==ascii==对应==整数==的大小

```
print(ord("6"))  # --54
print(ord("1"))  # --49
print(max(str2))
print(min(str2))
```

- 去除字符串==中的空格==，==左边==、==右边==和==两边==，lstrip()\rstrip()\strip()

```
str5 = "  abc 123 ef "
print(str5.lstrip())
print(str5.rstrip())
print(str5.strip())
```

- ==首==字母==大写==、==转全大==写、==全小写==的方法

```
# 首字母大写
str6 = "aBcDeF  allen"
print(str6.title())
# 全部转为大写、小写
print(str6.upper())
print(str6.lower())
```

- 字符串==分割==的方法

```
str7 = "186-2198-4010"
print(str7.split("-"))
```

- 字符串==替换==的方法

```
print(str7.replace("4010","8888"))
print(str7)
```

- 字符串判断以==xx开头==的方法

```
print(str7.startswith("1"))
```

### 4、列表数据类型（list）

列表也是一种序列类型，有序、可重复、可索引、可切片、可改变的数据类型。

#### 1）列表的定义

使用[]定义列表，多个元素用逗号分割，元素类型任意。可以把列表当做一个容器，什么数据都可以往里面放。

```
# 空列表的定义
list1 = []
print(type(list1))
# 定义多个元素，元素可以是数字
list2 = [12,21,14,41,41,100]
# 任意的数据类型都可以作为列表的元素
list3 = [12,"abc",[12,23],True]
# 列表是有序的\可重复
print(list3)
# 可索引、可切片
print(list2[0])
print(list2[-1])
# print(list2[-7])  #list index out of range
# print(list2[6])   #list index out of range
print(list2[-6])
print(list2[5])
# 切片：切出来的是子列表
print(list2[:])
print(list2[2:3])
print(list2[2:4])
print(list2[2:])
print(list2[2:4:2])
print(list2[4:2:-1])
print(list2[::-1])
print(list2)

# 可改变
list2[2] = 51
print(list2)
```

#### 2）列表支持的运算符

- +：序列拼接功能，把两个列表中的元素，拼接到一个列表中
- *： 序列复制功能
- in：成员运算，判断某个元素是否是列表的成员
- not in: 成员运算
- 切片：列表名[start:end:step] ， 返回到是列表
- 索引：列表名[索引号]，返回到元素

```
list3 = [12,"abc",[12,23],True]
print(list3[2])
print(list3[2][0])

print(list2+list3)
print(list3*2)
```

#### 3）列表（序列）的通用方法

- ==len()==: 求列表的元素个数的方法，序列的通用方法
- ==index()== : 求指定列表元素所对应的索引好的方法，序列的通用方法
- ==max()、min()==: 求列表中元素的最值得方法，序列的通用方法
- ==count("元素")==: 查询列表中元素重复的次数多方法，序列的通用方法
- ==find()== : 不能用，是字符串的一个方法，列表不能用

```
print(list3.index("abc"))
# 'list' object has no attribute 'find'
# print(list3.find("abc"))

print(list3.count(12))
print(len(list3))
```

#### 4）列表特有的方法

列表元素查询：索引、切片的方式

- **增加列表的元素**方法：
  - ==append()== : 向列表的**尾部追加**元素

```
# 给列表追加7元素
# print(list1.append(7))

# 给列表追加一个列表元素[7,8,9],作为一个整体元素追加
list2 = [7,8,9]
list1.append(list2)
# 列表是可变的
print(list1)
```

- ==insert()==：插入元素，要指定==插入元素==的位置（索引）

```
list1 = [1,2,3,4,5,6]
# 在list1的第4个位置插入一个7元素，从第四个及以后的都往后挪一位
# list1.insert(3,7)
# list1.insert(0, 7)
# list1.insert(-1, 7)
# 给列表追加一个列表元素[7,8,9],作为一个整体元素追加
list2 = [7,8,9]
list1.insert(3,list2)


print(list1)
```

- ==extend()==：而是把一个列表中的所有元素分别==追加==到另一个列表中

```
list1 = [1,2,3,4,5,6]
list2 = [7,8,9]
list1.extend(list2)
print(list1)
```

- ==reverse()== : 列表==逆==序

```
list1 = [1,2,3,4,5,6]
list2 = [7,8,9]
list1.reverse()
print(list1)
```

- 删除列表元素的方法
  - ==remove(元素)== : 直接从列表中删除指定的元素

```
list1 = [1,2,3,4,5,6]
list2 = [7,8,9]
list1.remove(2)
print(list1)
```

- ==pop()== :  不给参数，默认是==弹出最后一个元素==
- ==pop(index)==: 给参数-索引号index，==删除并返回该index==对应的元素

```
# 使用pop方法，弹出最后一个元素, 弹出的元素作为了方法的返回值了
# print(list1.pop())
# 也可以给参数
print(list1.pop(0))
print(list1)
```

- ==del== 列表名==[index]== : 删除==指定==索引的元素

```
del list1[0]
print(list1)
```

- ==切==片==实现删除==，实现一次性删除多个列表元素

```
# 把列表中的5、4、3这三个元素一次删除
list1[2:5] = []
print(list1)
```

- ==更新==列表元素
  - 通过索引==直接赋值==
  - 切片一次性==更改==多个元素

```
list1[-1] = 10
print(list1)

# 把列表中的6、2这两个元素更新为[8, 7, 6, 5, 4, 3, 2, 1]
list1[1:3] = [8, 7, 6, 5, 4, 3, 2, 1]
print(list1)
```

#### 5） 模拟栈数据结构特点

```
#堆栈：先进后出，后进先出
# 空列表
list2 = []
# 压栈
list2.append("1")
# 压栈
list2.append("2")
# 压栈
list2.append("3")
# 压栈
list2.append("4")
# 弹栈
print(list2.pop())
# 弹栈
print(list2.pop())
# 弹栈
print(list2.pop())
# 弹栈
print(list2.pop())
```

#### 6）求解10000以内的四叶玫瑰数

```
for cde in range(1000, 10000):
    ced = cde % 10
    ced1 = cde // 10 % 10
    ced2 = cde // 100 % 10
    ced3 = cde // 1000
    ced4 = (ced**4)+(ced1**4)+(ced2**4)+(ced3**4)
    if ced4 == cde:
        print(cde)
```

