SET NAMES UTF8;
DROP DATABASE IF EXISTS wotod;
CREATE DATABASE wotod CHARSET=UTF8;
USE wotod;
CREATE TABLE user(
  uid INT,
  uname VARCHAR(8),
  upwd VARCHAR(16),
  email VARCHAR(16),
  phone VARCHAR(11) 
);
INSERT INTO user VALUES('1','dingding','123456','ding@tedu.cn','15812345678');
INSERT INTO user VALUES('2','dangdang','123456','dang@126.com','18012345678');
INSERT INTO user VALUES('3','lianglia','123456','liang@126.com','19912345678');
CREATE TABLE product(
   lid INT,
   title VARCHAR(64),
   image VARCHAR(128),
   price DECIMAL(7,2),
   category INT
);
INSERT INTO product VALUES('1','伊莱克斯True-love电炖锅EGsc250','xiang-1.jpg','150.00','10');
INSERT INTO product VALUES('2','露得清防紫外线防晒霜88ml','xiang-2.jpg','99.00','10');
INSERT INTO product VALUES('3','露得清弹润滋养护体乳200ml','xiang-3.jpg','89.00','10');
INSERT INTO product VALUES('4','欧普拉 消毒棉片100片 6x6cm','xiang-4.jpg','15.00','10');
INSERT INTO product VALUES('5','美太多用消毒液1000g','xiang-5.jpg','28.00','10');
INSERT INTO product VALUES('6','艾惟诺天然燕麦每日倍护沐浴露354ml','xiang-6.jpg','69.00','10');
INSERT INTO product VALUES('7','顺鑫鑫源烧烤套餐二（牛肉串5袋，10串/袋）','xiang-7.jpg','145.00','10');
INSERT INTO product VALUES('8','顺鑫鑫源烧烤套餐五（羊肉串3袋，牛肉串3袋，牛腩筋串1袋，10串/袋）','xiang-8.jpg','213.00','10');
INSERT INTO product VALUES('9','如辉进口消毒纸巾60抽/盒','xiang-9.jpg','43.00','10');
INSERT INTO product VALUES('10','中科世纪75%酒精抗菌液喷雾100ml','xiang-10.jpg','18.00','10');
INSERT INTO product VALUES('11','味斩免洗手液90ml','xiang-11.jpg','19.00','10');
INSERT INTO product VALUES('12','燕源二氧化氯消毒片 100片/瓶','xiang-12.jpg','38.00','10');
INSERT INTO product VALUES('13','海底捞麻辣牛油火锅底料500g','xiang-13.jpg','26.80','10');
INSERT INTO product VALUES('14','伊莱克斯True-love电炖锅EGsc250','xiang-1.jpg','150.00','10');
INSERT INTO product VALUES('15','露得清防紫外线防晒霜88ml','xiang-2.jpg','99.00','10');
INSERT INTO product VALUES('1','汇源100%橙汁200mlx24盒','qlz-1.jpg','88.00','20');
INSERT INTO product VALUES('2','燕京尚选红啤酒11° 500mlx12听','qlz-2.jpg','88.00','20');
INSERT INTO product VALUES('3','全棉时代纯棉柔巾六连包','qlz-3.jpg','110.00','20');
INSERT INTO product VALUES('4','燕京原浆白啤12° 500mlx12听','qlz-4.jpg','118.00','20');
INSERT INTO product VALUES('5','悦谷百味优选杂粮礼盒5.07kg（13种）','qlz-5.jpg','129.00','20');
INSERT INTO product VALUES('6','牵手老北京酸梅汤250mlx24盒','qlz-6.jpg','70.00','20');





























