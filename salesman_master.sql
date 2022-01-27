create table Salesman_Master(
    SalesmanNo varchar(10),
    Name  varchar(10),
    Address1  varchar(20),
    Address2  varchar(20),
    City  varchar(10),
    Pincode numeric(10),
    State  varchar(12),
    salAmt numeric(10),
    TgtToGet numeric(10),
    YtdSales numeric(10),
    Remarks varchar(10),
)
insert into Salesman_Master values ('S00001','Aman','A/14','Worli','Mumbai',400002,'Maharashtra',3000,100,50,'Good')
insert into Salesman_Master values ('S00002','Omkar','65','Nariman','Mumbai',400001,'Maharashtra',3000,200,100,'Good')
insert into Salesman_Master values ('S00003','Raj','P-7','Bandra','Mumbai',400032,'Maharashtra',3000,200,100,'Good')
insert into Salesman_Master values ('S00004','Ashish','A/5','Juhu','Mumbai',400044,'Maharashtra',3500,200,150,'Good')

select * from Salesman_Master
