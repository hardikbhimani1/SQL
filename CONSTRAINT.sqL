create table client_master(
    clientNo varchar(10) primary key,
    clientname varchar(20),
    city varchar(10),
    pincode numeric(6),
    state varchar(20),
    baldue numeric(10) 
)
insert into client_master values('C00001', 'Ivan Baross', 'Mumbai', 400054, 'Maharastra', 15000)
insert into client_master values('C00002', 'Mamta Muzumdar', 'Madras', 780001, 'TamilNadu', 0)
insert into client_master values('C00003', 'Chhaya Bankar', 'Mumbai', 400057, 'Maharastra', 5000)
insert into client_master values('C00004', 'Ashwini Joshi', 'Banglore', 560001, 'Karnataka', 0)
insert into client_master values('C00005', 'Hansel Colaco', 'Mumbai', 400060, 'Maharastra', 2000)
insert into client_master values('C00006', 'Deepak Sharma', 'Manglore', 560050, 'Karnataka', 0)

create table product_master(
    productno varchar(10) primary key,
    description varchar(50),
    profitpercent numeric(10),
    unitmeasure varchar(50),
    qtyonhand numeric(10),
    recorderlvl numeric(10),
    sellprice numeric(10),
    costprice numeric(10),
)

insert into product_master values('P00001', 'T-Shirts', 5, 'Piece', 200,50,350,250)
insert into product_master values('P0345','Shirts',6,'Piece',150,50,500,350)
insert into product_master values('P06734','Cotton Jeans',5,'Piece',100,20,600,450)
insert into product_master values('P07865','Jeans',5,'Piece',100,20,750,500)
insert into product_master values('P07868','Trousers',2,'Piece',150,20,850,550)
insert into product_master values('P07885','Pull Overs',2.5,'Piece',80,30,700,450)
insert into product_master values('P07965','Denim Shirts',4,'Piece',100,40,350,250)
insert into product_master values('P07975','Lycra Tops',5,'Piece',70,30,300,175)
insert into product_master values('P08865','Skirts',5,'Piece',75,30,450,300)

create table salesman_master(   
    salesmanno varchar(10) primary key,
    salesmanname varchar(10),
    address1 varchar(10),
    address2 varchar(10),
    city varchar(10),
    pincode numeric(10),
    state varchar(22),
    salamt numeric(11),
    tgttoget numeric(10),
    ytdsale numeric(10),
    remark varchar(20),
   
)
insert into salesman_master values ('S00001','Aman','A/14','Worli','Mumbai',400002,'Maharashtra',3000,100,50,'Good')
insert into salesman_master values ('S00002','Omkar','65','Nariman','Mumbai',400001,'Maharashtra',3000,200,100,'Good')
insert into salesman_master values ('S00003','Raj','P-7','Bandra','Mumbai',400032,'Maharashtra',3000,200,100,'Good')
insert into salesman_master values ('S00004','Ashish','A/5','Juhu','Mumbai',400044,'Maharashtra',3500,200,150,'Good')


create table sales_order(
    orderno varchar(10) primary key,
    clientno varchar(10) REFERENCES client_master,
    orderdate date,
    delyaddr varchar(25),
    salesmanno varchar(6),
    delytype char(1),
    billyn char(1),
    delydate date,
    orderstatus varchar(10)

);

insert into sales_order Values('O19001','C00001','12-June-04','Surat','S00001','F','N','20-July-02','In Process');
insert into sales_order Values('O19006','C00002','25-June-04','Ahemadabad','S00002','P','N','27-June-02','Cancelled');
insert into sales_order Values('O19002','C00003','18-Feb-04', 'Bharuch','S00003','F','Y','20-Feb-02','Fulfilled');
insert into sales_order Values('O19003','C00001','03-Apr-04', 'Navsari','S00001','F','Y','07-Apr-02','Fulfilled');
insert into sales_order Values('O19004','C00002','20-May-04', 'Valsad','S00002','P','N','22-May-02','Cancelled');
insert into sales_order Values('O19005','C00003','24-May-04', 'Vapi','S00003','F','N','26-July-02','In Process');



create table sales_order_detail(
    orderno varchar(10) references  sales_order, 
    productno varchar(10) references  product_master ,
    qtyorderd numeric(8),
    qtydisp numeric(8),
    productrate DEC(10,2)
);

insert into SALES_ORDER_DETAIL values('O19001','P00001','4','4','525');
insert into SALES_ORDER_DETAIL values('O19001','P06734','2','1','8400');
insert into SALES_ORDER_DETAIL values('O19001','P0345','2','1','5250');
insert into SALES_ORDER_DETAIL values('O19002','P00001','10','0','525');
insert into SALES_ORDER_DETAIL values('O19001','P08865','3','3','3150');
insert into SALES_ORDER_DETAIL values('O19002','P07975','3','1','5250');
insert into SALES_ORDER_DETAIL values('O19003','P00001','10','10','525');
insert into SALES_ORDER_DETAIL values('O19004','P07965','4','4','1050');
insert into SALES_ORDER_DETAIL values('O19003','P07885','2','2','1050');
insert into SALES_ORDER_DETAIL values('O19003','P07865','1','1','12000');
insert into SALES_ORDER_DETAIL values('O19002','P00001','1','0','8400');
insert into SALES_ORDER_DETAIL values('O19001','P0345','1','0','1050');
insert into SALES_ORDER_DETAIL values('O19003','P00001','10','5','525');
insert into SALES_ORDER_DETAIL values('O19004','P06734','5','3','1050');