create table Product_Master(
   ProductNo varchar(10),
    Description varchar(20),
    Profit_percent  numeric(10),
    Unit_Measure varchar(10),
    QtyOnHand  numeric(10),
    ReOderLvl numeric(20),
    SellPrice numeric(10),
    CostPrice numeric(10),
)
insert into Product_Master values('P00001', 'T-Shirts', 5, 'Piece', 200,50,350,250)
insert into Product_Master values('P0345','Shirts',6,'Piece',150,50,500,350)
insert into Product_Master values('P06734','Cotton Jeans',5,'Piece',100,20,600,450)
insert into Product_Master values('P07865','Jeans',5,'Piece',100,20,750,500)
insert into Product_Master values('P07868','Trousers',2,'Piece',150,20,850,550)
insert into Product_Master values('P07885','Pull Overs',2.5,'Piece',80,30,700,450)
insert into Product_Master values('P07965','Denim Shirts',4,'Piece',100,40,350,250)
insert into Product_Master values('P07975','Lycra Tops',5,'Piece',70,30,300,175)
insert into Product_Master values('P08865','Skirts',5,'Piece',75,30,450,300)

select * from Product_Master;

------------------------------------------31/01/2022--------------------------------------------------

--1]- List product whose seling price is more than 500 and less than or equl to 750.

select * from Product_Master
where SellPrice > 500 and SellPrice <= 750
