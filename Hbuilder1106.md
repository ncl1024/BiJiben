## 一、HTML基础

html(Hyper Text Markup Language  超文本标识语言)

1.HTML编写的文档是**.HTML**的文档；

2.内容是由**HTML标签**组成的；

3.HTML标签是固定的，提前定义好的；

4.标签是由**<关键字>**组成的；

5.标签区分成对的和单独的；

6.成对标签有：开始标签<关键字>，

​                          结束标签</关键词>;

​                          单独标签<关键字 />;

7.一对标签和标签之间的内容成为：网页(HTML)元素；

8.网页上所有的标签都有属性，用来设置标签的特性。

​                          基本的编写  <关键词   属性名1="属性值1"  属性名2="属性值2"·········><关键词>



## 二、HTML标签

1.标题标签：<h1>~<h6>

2.超链接标签:**<a></a>**,表示网页的超链接；属性**href**表示链接的目标的地址；

​                       target 表示打开新网页是否打开新的浏览器窗口，一般默认在本窗口;

​                       如果设置属性**_blank**表示打开新的窗口;

2.图片标签:<img>属性 src，表示该图片标签所使用的图片的位置信息。图片标签可以和链接标签                                                           一起使用(链接标签套图片标签)
4、多媒体标签:<embed>,可以表示一个视频或者音频，属性 **src** 表示多媒体内容的地址使用 width、height 表示该多媒体内容的显示尺寸。

## 三、HTML的布局标签

​        最主流的是<div></div>标签，<table></table>标签是比较常规和正常、简单；

## 四、HTML的表单

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

## 一、CSS样式表的关联: 关注点，css和HTML结合的三种写法；

### 1.概述：

​               **HTML技术**---->人，

​               **CSS技术**------->人的衣服；

​               毕竟**html**标签生成的网页的效果比较**单一**；

​               有了**CSS技术**后，就可以给页面添加不同的修饰效果；

### 2.CSS样式表的分类

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

## 一.JavaScript概述

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

## 二.JavaScript基本语法

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

​                 多行注释: /*多行注释的内容*/

**3>外部JS文件**:

​                       1)新建js文件: 直接写代码;

​                       2)引入到html文件;

```
         <script language="Javascript" src="外部js文件路径">
                       Js代码 //不会执行
         </script>
```

<font color = "#FF0000">**注意**</font>:如果script标签有引用外部js文件，那么该标签中再嵌套JS代码是不会执行的