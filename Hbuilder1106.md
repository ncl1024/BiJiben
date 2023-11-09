## 一、HTML基础     :haircut_woman:

html(Hyper Text Markup Language  超文本标识语言)

1.HTML编写的文档是**.HTML**的文档；

2.内容是由**HTML标签**组成的；:baby_bottle: 

3.HTML标签是固定的，提前定义好的；

4.标签是由**<关键字>**组成的；

5.标签区分成对的和单独的；

6.成对标签有：开始标签<关键字>，  :first_quarter_moon_with_face: 

​                          结束标签</关键词>;

​                          单独标签<关键字 />;

7.一对标签和标签之间的内容成为：网页(HTML)元素；

8.网页上所有的标签都有属性，用来设置标签的特性。:tangerine: 

​                          基本的编写  <关键词   属性名1="属性值1"  属性名2="属性值2"·········><关键词>:calendar:   



## 二、HTML标签    :last_quarter_moon:     

1.标题标签：<h1>~<h6>

2.超链接标签:**<a></a>**,表示网页的超链接；属性**href**表示链接的目标的地址；

​                       target 表示打开新网页是否打开新的浏览器窗口，一般默认在本窗口;

​                       如果设置属性**_blank**表示打开新的窗口;

2.图片标签:<img>属性 src，表示该图片标签所使用的图片的位置信息。图片标签可以和链接标签                                                           一起使用(链接标签套图片标签)
4、多媒体标签:<embed>,可以表示一个视频或者音频，属性 **src** 表示多媒体内容的地址使用 width、height 表示该多媒体内容的显示尺寸。

## 三、HTML的布局标签:first_quarter_moon_with_face:

​        最主流的是<div></div>标签，<table></table>标签是比较常规和正常、简单；

## 四、HTML的表单:railway_track:

1.作用：通过表单区域**<form></form>**中的各种表单元素,收集用户信息，比如，注册、登录、查询等；

2.基本形式：**<form>   很多表单元素    </form>**,表单元素可以是按钮、文本框、时间、颜色、日期、文件选择、邮箱、数字········；

3.表单三要素：传什么内容(表单控件/元素)，

​                          传到什么位置(表单动作/**action**)；

​                          怎么传(表单方法/**method**)；

​                                      表单动作**action**: 就是一个数据要提交的地址；

​                                      表单方法**method**:一般默认get方法进行传递行传递，表示数据的查询，不会引起数据的变化;

​                                                                       另外一种是 post，是提交数据，会引起数据的变化(增加/删除/修改)如果使用 get/默认进行数据提交；

​                                                                       如果使用 get/默认进行数据提交，则提交的数据和该数据是由哪个表单控件提供的，都会显示在地址栏。

4.表单元素：

**<input />**:表示输入类型的标签；

**<button>**: 表示按钮类型；

**<select>**:表示下拉框类型；    

------

## 一、CSS样式表的关联: 关注点，css和HTML结合的三种写法；:kiwi_fruit: 

### 1.概述：   :game_die:

​               **HTML技术**---->人，

​               **CSS技术**------->人的衣服；

​               毕竟**html**标签生成的网页的效果比较**单一**；

​               有了**CSS技术**后，就可以给页面添加不同的修饰效果；

### 2.CSS样式表的分类    :ferry:

#### 2.1内部样式表

1>格式一: 放在**head**标签

                <style  type="text/css">
                    关键词{属性1:属性值1;属性2:属性值2;...}
                </style>

​                解释:只要在html文件中用到了该关键词所对应的标签，那么该标签所包裹的内容就会有关联的属性进行修改，添加不同的修饰效果;

2>格式二:

```
            <style type="text/css">
                  .类名{属性1:属性值1;属性2:属性值2;...}
            </style>
```

​                解释:类样式：把样式表做成共享的状态,如果某一个标签有需要，直接拿上类名做引用；

​                                        <开始标签 class="类名"></结束标签>;

​                **疑问**:如果格式一和格式二进行嵌套混搭的操作:相当于关键词对应的标签中,也引用了类名,

​                        那么最中的效果如何？

​                **备注**:如果是不同的属性,做融合的操作;

​                        相同的属性,以类样式为准;

```
内部样式表：格式一：
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>css</title>
        
        <style type="text/css">
            
            h1 {color: red;}
            
            h3 {color: pink;}
            
            p  {color: blue;font-size: 35px;}
            
            b  {color: pink;}
            
            h2 {color: pink;}
            
            del  {color: pink;}
        </style>
    </head>
    <body>
        <h1>我是大标题h1标签</h1>
        <p>我是段落p标签</p>
        <h4>我是大标题h4标签</h4> 
    </body>
</html>

```

```
内部样式表：格式二：
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>css</title>
        
        <style type="text/css">
            
            .c01 {color: pink;font-family: "微软雅黑";}
            
            .c02 {font-size: 40px;}
        </style>
    </head>
    <body>
        <p>我是第一个段落p标签</p>
        
        <p class="c01">我是第二个段落p标签</p>
        
        <del class="c01">我是文字中划线表示删除的标签del</del> <br><br>
        
        <i class="c02">我是斜体标签i</i>
    </body>
</html>
```

```
内部样式表：格式一和格式二结合
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>css</title>        
        <style type="text/css">            
            p {color: red;font-family: "微软雅黑";}            
            .c03 {color: yellow;font-size: 40px;font-style: italic;}      
        </style>        
    </head>
    <body>        
        我是页面中的第一句话。 <br><br>        
        <p>我是页面中的第一个段落p标签</p>        
        <p class="c03">我是页面中的第二个段落p标签</p>        
        <b>我是粗体标签b</b>    
    </body>
</html>
```

3><font color="red">**背景属性:**</font>

background-color: 背景色；

background-image: url("图片的路径"):背景图;

background-repeat:repeat(默认重复):repeat:,no-repeat, repeat-x, repeat-y

```
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
        
        <style type="text/css">
            
            .b01 {background-color: pink;}
            
            .b02 {background-image: url(img/tupian03.jpg);background-repeat: repeat-y;}
            
        </style>
        
    </head>
    
    <body class="b02"  >
        
        <p class="b01">这是一段文字标签p</p>
        
    </body>
</html>
```

#### 2.2内嵌/行内样式表：直接把CSS代码写在开始标签中,只针对该标签包裹的内容有效;

格式一:

​            <开始标签     style="属性1:属性值1;属性2,属性值2..."></结束标签>

```
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>css</title>
        
    </head>
    <body>        
        <p style="color: green;font-size: 35px;font-family: '微软雅黑';font-style: italic;" >css样式表的第二种写法：行内样式表</p>
        
        <p>我是页面中的第二个段落p标签</p>
        
        <p style="background-color: yellow;">我是页面中的第三个段落p标签</p>
        
        <p>我是页面中的第四个段落p标签</p>
    </body>
</html>
```

#### 2.3外部样式表

1>思想:把CSS样式单独声明在一个文件中: .CSS文件, 如果HTML文件有需要,直接做引用即可;

2>格式一:

​                1)新建CSS文件,把对应的CSS代码写入:

​                                           关键词 {属性:属性值}

​                                           .类名 {属性:属性值}

​                2)方式一:    放在head标签中

```
                <link href="css文件路径" rel="stylesheet" type="text/css" />
```

​                3)方式二:   import : 导入

```
                <style  type="text/css">
                        @import "css文件"
                </style>
```

------

## 一.JavaScript概述   :see_no_evil:

### 1.**JS最初目的**：

​                                  验证表单输入项数据的合法性或正确性

### 2.JS特征

​                    2.1基于对象: 指的是在JS中已经有<font color="red">定义的对象和方法</font>，我们可以<font color="red">直接来使用</font>;

```
例：JS代码中进行内容的输出：直接调用输出方法：alert("输出的内容");  以弹窗的形式进行输出
```

​                    <font color="#00FF00">2.2解释型</font>: 指的是JS代码写完后，<font color="red">不需要编译,直接运行</font>

```
           JAVA语言：java代码----->需要进行编译----->生成一个字节码文件---->编译通过并生成字节码文件才会被运行
           JS语言：js代码----->直接交给浏览器加载运行
```

​                    <font color="red">2.3事件驱动</font>：HTML+CSS实现网站静态效果,JS实现网站<font color="red">动态效果</font>

```
例：type="button"   页面实现普通按钮的静态效果，想让button"动起来"，需要结合JS
```

​                    <font color="red">2.5松散型</font>:指的是JS声明变量时,<font color="red">不需要指定数据类型</font>,变量的数据类型是有传递的值来决定

```
例：
JAVA语言：声明一个变量：数据类型  变量名=值;     int   i=23;
JS语言：声明一个变量：var   变量名=值;       var   x=12;  x变量数据类型：整数类型     var  y="testing";    y变量数据类型：字符串类型
```

​                    <FONT COLOR="#fa7082">2.6跨平台性</FONT>:可以在多个操作平台使用该技术,只要有浏览器即可

### 3.JavaScript和Java语言没有任何联系

```
           强类型语言：指的是这一类编程语言声明变量都需要明确数据类型。
           弱类型语言：指的是这一类编程语言变量的数据类型由传递的值来决定。
```

## 二.JavaScript基本语法       :black_joker:

### 1.JS代码的编写:

**1>直接写入html文件**

```
               <script language="JavaScript">
                          Js文件
               </script>
```

​                                  既可以放在head标签中，也可以放在body标签中，如果两者都有，按照**顺序**来执行：先head，后body;

**2>JS注释**: 解释说明的作用, 不会参与执行;

​                 单行注释: //单行注释的内容

​                 多行注释: /* 多行注释的内容 */

**3>外部JS文件**:

​                       1)新建js文件: 直接写代码;

​                       2)引入到html文件;

```
         <script language="Javascript" src="外部js文件路径">
                       Js代码 //不会执行
         </script>
```

<font color = "#FF0000">**注意**</font>:如果script标签有引用外部js文件，那么该标签中再嵌套JS代码是不会执行的

### 三、JS变量与数据类型    :joy_cat:    

1.变量

2.声明变量

​                  1>声明变量的同时也进行赋值:

```
         var 变量名=值;
         var 变量名1=值1,变量名2=值2,...;
```

​                  2>分开(分别)来写:

```
         声明变量: var 变量;
         赋值: 变量=值;
```

3.==注意事项:==     :scorpius:       :walking:    

```
         1)JS变量名是区分大小写,例 var Name, var name,这是两个不同的变量
         2)标识符的命名规则:
                        首个字符必须是大小写字母,下划线_,$;
                        其他位置上字符可以有字母,_,$,数字;
                        不能出现关键字(有特殊含义的词语);
         3)每段代码结束后建议用分号**;**结束
```

4.JS支持的数据类型

```
         1)数值型 number
         例: var x=12;   x就是一个数值型的变量; var y=3.14; y就是一个数值型的变量;
         
         2)字符串类型 string 是由单引号和双引号包裹任意个字符:
         例: var i="张三"; var j='Testing1024'; var k="45";
         注意:单双引号只能结合使用,不能只单或只双引号来使用;
         
         3)查看数据类型: typeof(变量名) 或 typeof 变量名;
         
         4)布尔类型 boolean
         布尔类型的结果只有两个:True 或 False;
         例: var x=True; var y=(8<6) --->y=False
         
         5)转义字符:由反斜杠开头,搭配不同的字符,实现不同的转义效果;
         \n 换行
         \r 回车符
         \t 水平制表符(按下Tab)
         
         \' 转单引号
         \" 转双引号
         \\ 转斜杠
         
         6)空值 object 对象 相当于大家定义了一个为空的对象
         例: var s=null;
         
         7)未定义值 undefined
         例: var s;
         
         扩展:空值     创建了变量并开辟了空间;
             未定义值  创建了变量未开辟存储空间
```

### 四、JS运算符的应用   :yum:    

#### 1.赋值运算符     :zzz:    

**=**  赋值: 将等号右边的值，赋值给等号左边的变量;

复合赋值的运算符：先计算,再赋值;

```
               a+=b  ----->  a=a+b
               a*=b  ----->  a=a*b
               a-=b  ----->  a=a-b
               a/=b  ----->  a=a/b (除尽)
               a%=b  ----->  a=a%b (取余)
               
               针对布尔类型的数据类型进行操作:
               a&=b  ----->  a=a&b 与等: 只要有False,结果为False;
               a|=b  ----->  a=a|b 或等: 只要有True,结果为True;
               a^=b  ----->  a=a^b 异或等: 只要相同为False,不同为True;
               
               注意:在大部分开发语言中，一般还会用0代表false,非0: 1代表是true;
```

#### 2.算术运算符    :family_man_girl_girl:     :desert:    

==**+**   **-**   *****  **/**   **%**   加减乘除取余;==



**++**  自增运算符   **+1** 

**--**    自减运算符   **-1**

```
注意:1>如果++/--在变量前：先计算，后赋值(其它操作);
      如果++/--在变量后：先赋值(其它操作)，再计算;
    2> ++/--只针对变量中的数据进行计算;
```

#### 3.比较运算符    :facepunch:    :date:   

> ​                           **\>** 大于
>
> ​                           **<** 小于                
>
> ​                           **=** 大于(或)等于
>
> ​                           **<=** 小于(或)等于
>
> ​                           **!=** 不等于
>
> ​                           **==** 恒等/相等 只看字面值
>
> ​                           === 相等/恒等：不仅看字面值，还要看数据类型
>
> ​                           !== 不等于：字面值+数据类型

```
例：var x=10; var y="10"; 数据类型：x number,y string 
                         x==y true, x===y false
```

#### 4.==逻辑==运算符

! 逻辑非 ==思想==：取反 ! true = false, ! false = true

&& 逻辑与 ==思想==：连接多个布尔/判断表达式，有一个为false，整体结果就是false

|| 逻辑或 ==思想==：连接多个布尔/判断表达式，有一个为true，整体结果就是true

:laughing: :japanese_goblin:  :yen:   :kissing_cat:  

#### 5.==条件==运算符/==三元==运算符  :face_with_head_bandage:     :dancer:     :sagittarius:

格式：布尔/判断表达式?操作一:操作二;   :sake:  

思想：如果表达式的结果为true，执行操作一，否则(false)执行操作二    :alarm_clock:  

#### 6.字符串运算符

```
拼接：+ 字符串+字符串 字符串+数字 数字+字符串
计算：+ 数字+数字
```

a+=b ----> a=a+b 先拼接，再赋值

------

### 一、JS的判断条件语句     :package:

#### 1.if判断条件语句

==①格式一：if语句 **思想：只关注条件成立后的操作**==

if(判断条件){

​           语句块;--->条件成立后要做的事情

}

==②格式二：if...else...语句 **思想：不管条件成立与否，都有对应的操作**==

if(判断条件){

​           语句块1; --->条件成立后要做的事情

}else{

​           语句块2; --->条件不成立要做的事情

}

==补充：prompt()：提供一个输入框，将用户输入的数据，传递给变量来接收==

③**格式三**: ==if...else...if... 语句  思想: 针对多条件的判定操作;==

> if(判断条件1){
>
> ​       语句块1; ==1成立==
>
> }else if(判断条件2){
>
> ​       语句块2;  ==1不成立,2成立==
>
> }else if(判断条件3){
>
> ​       语句块3;   ==1,2不成立,3成立==
>
> }else if(判断条件4){
>
> ​       语句块4;   ==1,2,3不成立,4成立==
>
> }else{
>
> ​       语句块n;   ==所有条件都不成立==
>
> }

```
var segment=prompt("请输入分数0~2000");
if(segment>=1000 && segment<=2000){
	alert("最强王者!");
}else if(segment>=800 && segment<1000){
	alert("最强宗师");
}else if(segment>=600 && segment<800){
	alert("超凡大师");
}else if(segment>=0 && segment<600){
	alert("璀璨钻石");
}else{
	alert("黑铁，该打排位啦！");
}
```

#### 2.switch分支语句  :watermelon:

格式一：

> ​        switch(表达式){
>
> ​                case 值1:语句块1;break;
>
> ​                case 值2:语句块2;break;
>
> ​                case 值3:语句块3;break;
>
> ​                ......
>
> ​                default:语句块n;
>
> }

==例:==

```
var month=prompt("请输入一个月份: ");
switch(month){
	case "1":alert("spring");break;
	case "2":alert("spring");break;
	case "3":alert("spring");break;
	case "4":alert("summer");break;
	case "5":alert("summer");break;
	case "6":alert("summer");break;
	case "7":alert("autumn");break;
	case "8":alert("autumn");break;
	case "9":alert("autumn");break;
	case "10":alert("winter");break;
	case "11":alert("winter");break;
	case "12":alert("winter");break;
	default:alert("输入越界");
}
```

==思想:==拿上switch后面表达式的结果值，分别和case后面的值做匹配，匹配成功就会执行对应的语句块，否则就执行最后的default语句块。

==注意:==如果case后面没有break，那么匹配成功后，语句块会一直向下执行，直到遇见break才会终止，如果没有break，就会执行完default终止。

#### 3.for循环语句

==思想:==只要循环条件/判断条件成立，就会一直执行代码块/语句块

##### 3.1for语句

> ​    for(定义循环变量;循环条件;循环变量的计算操作){
>
> ​                   循环体
>
> }

**循环语句四要素:四个重要的组成部分:**

<font color = '#FF0000'>**循环变量: 用来接收循环执行过程中一直会发生改变的数据；** </font>

<font color = '#00FF00'>**循环条件:决定循环语句是继续执行,还是进行终止;**</font>

<font color = '#00FFFF'>**循环体: 条件成立后,一直要做的事情;**</font> 

<font color = '#FA8072'>**循环变量计算操作: 控制循环变量中数据的改变;**</font>

```
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
	</head>
	<body>
		<script language="javascript">
            for(var i=1;i<10;i++){
	            console.log("我在跑第"+i+"圈!");
            }
        </script>
	</body>
</html>
```



> **补充**:  <font color = '#FF0000'>==**输出语句**==</font>
>
> ==alert("输出内容");   以弹窗的形式进行输出;==
>
> ==console.log("输出的内容");     把内容输出在控制台;==
>
> ==document.write("输出的内容");     把内容输出在当前页面中;==

##### 3.2while语句

> var  定义循环变量;
>
> while(循环条件){
>
> ​          循环体;
>
> ​          循环变量的操作;
>
> }

==例:==

```
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
		</head>
	<body>
		<script language="javascript">
			var i=1;
			while(i<=100){
				document.write(i+"\n");
				i++;
			}
		</script>
	</body>
</html>
```

==结果如下:==

![结果如](https://note.youdao.com/s/A12bXZQn)

##### 3.3do...while语句

> 定义循环变量
>
> do{
>
> ​       循环体
>
> ​        循环变量的计算的操作;
>
> }while(循环条件)；

==例:==

```
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
	</head>
	<body>
		<script language="javascript">
			r=1
			do{
				document.write(r+"\n")
				r++;
			}
			while(r<100);
			
		</script>
	</body>
</html>
```

==区别:==

1>在==while语句==中先看的是循环条件，如果循环条件上来就不成立，那么循环体可能一次都不会执行；

2>在==do...while语句==中先看的是循环体，所以就会保证循环体至少会执行一次的;



3>==break==：无条件强制终止;

4>==continue==：该关键词后面的语句块是不会被执行的，跳转到循环条件位置，进行新一轮的判断操作;



5>==死循环==：循环条件永远成立，程序执行根本停不下来

:pouting_cat:   :paintbrush:  

> for语句：输出1-100之间能够被3整除的数字的总个数

```
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>被3整除的数字</title>
	</head>
	<body>
		<script language="javascript">
			i=0
			for(w=1;w<=100;w++){
				if (w%3==0){
					i++;
				}
			}
			document.write(i);
		</script>
	</body>
</html>
```

> while语句：输出1-100之间的累加和 1+2+3+4+...+100

```
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
	</head>
	<body>
		<script language="javascript">
			var f=1;s=0;
			while(f<=100){
				s+=f;
				f++;
			}
			document.write(s);
		</script>
	</body>
</html>
```

> do...while语句：输出1-100之间的偶数和

```
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
	</head>
	<body>
		<script language="javascript">
			var s=0;
			var r=1;
			do{
				if(r%2==0){
					s+=r;
				}
				r++;
			}
			while(r<=100);
			document.write(s+"\n");
		</script>
	</body>
</html>
```

------

## 一.函数的定义与调用

1.==函数==：又被称为"方法"，解决问题：实现不同功能对应的代码块的封装

​       例：==函数/方法----->封装代码块----->实现某个功能==

```
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
	</head>
	<body>
		<script language="javascript">
			//无参无返回值函数fun01
			function fun01(){
				alert("这是一个按钮!");
			}
			fun01();
		</script>
	</body>
</html>
```

2.==声明==/创建函数

> function   函数名(**参数名1,参数名2...**){
>
> ​                  函数体;---->==函数要实现的功能对应的代码块==
>
> **return  返回值;**
>
> }

==备注==：①==小括号==内的参数是可写的；

​           ②return语句可写，如果函数需要有返回值，则关联上；

​           ③在声明函数时设置的参数被称为=="形式参数"==，简称=="形参"==;

```
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
	</head>
	<body>
		<script language="javascript">
		//有参无返回值函数fun02
			function fun02(x,y,z){
				alert(x-y-z);
			}
			fun02(100,40,35);
		</script>
	</body>
</html>
```

3.==函数调用==：运行/执行已经创建好的函数

> 格式：函数名();    或   函数名(实参);

备注：

​         实参：==实际参数==，指的是在对有形式参数的函数调用时，进行的==赋值==操作;

​                     ==实参==就是给形参赋的值：==实参传形参==

```
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
	</head>
	<body>
		<script language="javascript">
		//无参有返回值函数fun03
			function fun03(){
				return(Math.random()*100);
			}
			var f=fun03();
			alert(f)
		</script>
	</body>
</html>
```

4.return语句:

> 没有输出功能，它只能把数据进行返回，如果想要显示返回的结果值，还得借助于输出语句;

```
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
	</head>
	<body>
		<script language="javascript">
		//有参有返回值函数fun04
			function fun04(i,j,k){
				alert("三个数相乘为:");
				return(i*j*k);
			}
			//var ijk=fun04(Math.random(),Math.random(),Math.random());
			//alert(ijk);
			var ijk=fun04(fun03(),fun03(),fun03());
			alert(ijk);
		</script>
	</body>
</html>
```

