
/*2.炫尚理发店管理员表*/
CREATE TABLE user(
  uid INT PRIMARY KEY AUTO_INCREMENT,    /*用户编号 自增 主键*/
  uname VARCHAR(32),                /*用户名*/
  uphone VARCHAR(11),                /*手机号*/
  upwd VARCHAR(32)              /*密码*/
);

INSERT INTO user VALUES
(NULL,'zhaokai','13227023076','123456'),
(NULL,'xs','13227023077','123456'),
(NULL,'linbo','13227023078','123456'),
(NULL,'xuanshang','13227023079','123456');

/*2.炫尚理发店会员表*/
CREATE TABLE vip(
  vid INT PRIMARY KEY AUTO_INCREMENT,  /*会员编号 自增 主键*/
  userId INT,                  /*用户编号*/
  vname VARCHAR(32) NOT NULL,                /*vip姓名名*/
  vphone VARCHAR(11) NOT NULL,                /*手机号*/
  vip_card VARCHAR(64) NOT NULL,          /*会员卡号*/
  vip_money INT(5) NOT NULL,               /*会员卡钱*/
  vip_people VARCHAR(32),        /*介绍人*/ 
  sex VARCHAR(1) NOT NULL DEFAULT '',   /*性别*/
  age INT(3),     /*年龄*/
  birthday VARCHAR(12),    /*生日*/
  address VARCHAR(128)    /*地址*/
);

INSERT INTO vip VALUES
(NULL,1,'林博','13227023076','13222622222',888,'林博',0,21,'1999-11-26','陕西省西安市');

/*3.消费流水统计表*/
CREATE TABLE consume(
  cid INT PRIMARY KEY AUTO_INCREMENT,   /*消费流水编号，自增*/
  vip_id INT,
  cdate DATETIME,  /*消费日期*/
  balance INT  /*余额*/
);

INSERT INTO consume VALUES
(NULL,1,'2019-11-26 22:20:18',888);