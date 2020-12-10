SET NAMES UTF8;
DROP DATABASE IF EXISTS iweb;
CREATE DATABASE iweb CHARSET=UTF8;
USE iweb;

/*1.讲师表*/
CREATE TABLE teacher(
	tid INT PRIMARY KEY AUTO_INCREMENT, /*讲师编号*/    
	tname VARCHAR(32),                  /*讲师名称*/
	maincourse VARCHAR(32),             /*主讲课程*/
	tpic VARCHAR(64),                   /*照片*/
	experience VARCHAR(1024),           /*电话*/
	style VARCHAR(1024)	                /*电话*/
);
INSERT INTO teacher VALUES
(1, '成亮', 'WEB全栈开发','img-teacher/cl.jpg', '10年互联网开发经验， 精通HTML5，CSS3，js，vue，angualr 等网页前端技术及 php后端 开发；先后就职于多家 IT 互联网公司，曾任某网络公司技术主管，服务机构有首都师范大学、中国联通、中国石油、国家图书馆、中国摄影协会等。','讲课诙谐幽默，深处浅出，深得学生喜爱。'),
(2, '李然', '高级网页设计','img-teacher/lr.jpg', '从事前端开发多年，参与 及主导研发过多个省级政府项目及海 外项目，参与 NEC，福特等大型企业 CRM 系统的研发。项目涉及金融，汽 车，电子等多个领域。于文思海辉专 职负责前端产品线培训时，积累了大 量的教学经验。', '教学风格风趣幽默，细致严谨。善于以项目流程反推知识点讲解，深受学员好评。'),
(3, '张东', 'JS高级编程','img-teacher/zd.jpg', '美国PMP认证高级项目经理，微软认证解决方案开发专家。先后在中软国际、中国搜索、太极计算机担任高级开发工程师，架构师，项目经理。曾担任中央外汇管理中心、中国石油、二炮工程研究院、首都国际机场技术咨询顾问。','一切从实际项目出发，快速入门，学以致用。讲课极富激情，语言表达精准，有感染力。案例丰富、直观，步骤细致，清晰。注重从学习到实际工作的快速转化。'),
(4, '程涛', '移动APP开发','img-teacher/ct.jpg', '曾工作于神星科技、东方标准等机构，先后任教于东方标准、安博教育、达内科技。具备多年互联网项目开发及管理经验，十年以上JavaEE、PHP、大数据等多方向授课经验。','行业知识广泛深入，授课方式深 入浅出;授课思路顺畅，表达轻松自然，能够很好的调动学员积极性;亲和力强，善于与学员保持良好的交互;因材施教，能为各层次学员量身定制针对性强的实训和考核体系。教学领域涉及社招生源职业培训、高校毕业生项目实训、高校师资课程集训、企业技术内训等;所授学员理论知识扎实，实践能力强。'),
(5, '纪盈鑫', '前端框架开发','img-teacher/jyx.jpg', '曾就职于东软集团。参与开发家乐福，津津会员卡等多款上线app。拥有外包和产品两种开发经历。已指导并帮助学员上架多个项目到AppStore。授课风趣幽默，亲和力强。教学耐心，循序渐进，课堂气氛活跃。善于结合生活中的实例，把艰涩难懂的知识点传授给学员。','授课风趣幽默，亲和力强。教学耐心，循序渐进，课堂气氛活跃。善于结合生活中的实例，把艰涩难懂的知识点传授给学员。');

/*2.课程类别表*/
CREATE TABLE type(
    tpid INT PRIMARY KEY AUTO_INCREMENT, /*类别编号*/
    tpname VARCHAR(32)                    /*类别名称*/
);
INSERT INTO type VALUES
(1,'基础课程'),
(2,'核心课程'),
(3,'进阶课程');

/*3.课程表*/
CREATE TABLE course(
    cid INT PRIMARY KEY AUTO_INCREMENT, /*课程编号*/
    typeId INT,                               /*课程类别*/
    title VARCHAR(32),                   /*课程名称*/
    teacherId INT,                         /*主讲老师*/
    cLength VARCHAR(32),                 /*课时*/
    startTime VARCHAR(32),               /*开课时间*/
    address VARCHAR(32),                 /*授课地址*/
    pic VARCHAR(32),                     /*主图片*/
    price FLOAT(8,2),                    /*价格*/
    details VARCHAR(2048),                  /*详情*/
    buyCount INT			 /*购买次数*/
);
INSERT INTO course VALUES
(NULL,'1','01-小程序零基础入门','1','1天','每周一开课','i前端各校区 ','img-course/01.png','300.00','<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',351),
(NULL,'2','02-U3D实景漫游','2','1天','每周一开课','i前端各校区 ','img-course/02.png','299.00','<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',513),
(NULL,'3','03-绘制基本UI控件','3','1天','每周一开课','i前端各校区 ','img-course/03.png','400.00','<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',113),
(NULL,'1','04-微信小程序概述','4','1天','每周一开课','i前端各校区 ','img-course/04.png','599.00','<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',711),
(NULL,'2','05-零基础绘图入门(上)','1','1天','每周一开课','i前端各校区 ','img-course/05.png','350.00','<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',762),
(NULL,'3','06-jQuery操作DOM(上)','2','1天','每周一开课','i前端各校区 ','img-course/06.png','600.00','<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',812),
(NULL,'1','07-jQuery操作DOM(下)','3','1天','每周一开课','i前端各校区 ','img-course/06.png','588.00','<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',611),
(NULL,'2','08-手机图标绘制(下)','4','1天','每周一开课','i前端各校区 ','img-course/05.png','800.00','<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',512),
(NULL,'3','09-微信小程序高级','1','1天','每周一开课','i前端各校区 ','img-course/04.png','200.00','<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',912),
(NULL,'1','10-UI控件之基础控件','2','1天','每周一开课','i前端各校区 ','img-course/03.png','450.00','<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',336),
(NULL,'2','11-Unity地形搭建','3','1天','每周一开课','i前端各校区 ','img-course/02.png','600.00','<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',129),
(NULL,'3','12-微信小程序开发','4','1天','每周一开课','i前端各校区 ','img-course/01.png','599.00','<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',819);

/**4.用户表**/
CREATE TABLE user(
    uid INT PRIMARY KEY AUTO_INCREMENT, /*用户编号*/    
    uname VARCHAR(32),                  /*用户名-邮箱格式*/
    phone VARCHAR(11),                 	/*电话*/
    upwd VARCHAR(32),	               	/*密码*/
    nickname VARCHAR(32) NOT NULL DEFAULT '',	  /*昵称*/
    sex	VARCHAR(1) NOT NULL DEFAULT '',		  /*性别，M-男，F-女, DEFAULT 'M'*/
    age	VARCHAR(3) NOT NULL DEFAULT '',		  /*年龄*/
    edu	VARCHAR(16) NOT NULL DEFAULT '',	      /*学历*/
    job	VARCHAR(16) NOT NULL DEFAULT ''	      /*职业*/
);
INSERT INTO `user` (`uid`, `uname`, `phone`, `upwd`, `nickname`, `sex`, `age`, `edu`, `job`) VALUES
(1, 'liangliang@tedu.cn', '13501234567', '123456', '亮亮', '男', '25', '本科', '教师'),
(2, 'ranran@tedu.cn', '13501234568', '123456', '然然', '女', '23', '本科', '自由职业'),
(9, 'dangdang@tedu.cn', '15510314422', '111111', '', '', '', '', ''),
(10, 'dingding@tedu.cn', '13552222222', '222222', '', '', '', '', '');

/*5.收藏夹*/
CREATE TABLE favorite(
    fid INT PRIMARY KEY AUTO_INCREMENT,/*收藏记录id*/
    userId INT,         /*用户id*/
    courseId INT,       /*课程id*/
    fTime VARCHAR(16)   /*收藏时间*/
);

/**6.购物车表**/
CREATE TABLE cart(
    ctid INT PRIMARY KEY AUTO_INCREMENT,/*购物车编号*/
    userId INT,         /*用户编号*/
    courseId INT,       /*产品编号*/
    count INT     /*数量*/
);
INSERT INTO `cart` (`ctid`, `userId`, `courseId`, `count`) VALUES
(1, 2, 10, 3),
(2, 2, 7, 1),
(3, 2, 5, 4);

/**7.订单表*/
CREATE TABLE orders(
    oid INT PRIMARY KEY AUTO_INCREMENT,/*订单id*/
    userId INT/*用户id*/
);
INSERT INTO `orders` (`oid`, `userId`) VALUES
(1, 2),
(2, 2),
(3, 1);

/**8.订单详情表**/
CREATE TABLE orders_detail(
   odid INT PRIMARY KEY AUTO_INCREMENT,
   orderId INT,                          /*订单编号*/
   courseId INT,                       /*课程编号*/
   count INT                            /*购买数量*/
);
INSERT INTO `orders_detail` (`odid`, `orderId`, `courseId`, `count`) VALUES
(1, 1, 8, 2),
(2, 1, 10, 1),
(3, 2, 3, 1),
(4, 3, 4, 5),
(5, 3, 9, 1),
(6, 3, 11, 3);