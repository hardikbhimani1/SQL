create table fk_sales_order(
    orderno varchar(10) primary key,
    clientno varchar(10) REFERENCES client_master,
    orderdate varchar(10),
    delyaddr varchar(25),
    salesmanno varchar(6),
    delytype varchar(1),
    billyn varchar(1),
    delydate varchar(10),
    orderstatus varchar(10),
    constraint ck_orderNo CHECK(orderNo like 'O%'),
    constraint ck_delyDate CHECK(delyDate > orderDate),
    constraint ck_orderStatus CHECK(orderStatus like 'In Process' OR orderStatus like 'Fulfilled' OR orderStatus like 'Back Order' OR orderStatus like 'Cancelled')

);

insert into fk_sales_order Values('O19001','C00001','12-June-04','Surat','S00001','F','N','20-July-02','In Process');
insert into fk_sales_order Values('O19006','C00002','25-June-04','Ahemadabad','S00002','P','N','27-June-02','Cancelled');
insert into fk_sales_order Values('O19002','C00003','18-Feb-04', 'Bharuch','S00003','F','Y','20-Feb-02','Fulfilled');
insert into fk_sales_order Values('O19003','C00001','03-Apr-04', 'Navsari','S00001','F','Y','07-Apr-02','Fulfilled');
insert into fk_sales_order Values('O19004','C00002','20-May-04', 'Valsad','S00002','P','N','22-May-02','Cancelled');
insert into fk_sales_order Values('O19005','C00003','24-May-04', 'Vapi','S00003','F','N','26-July-02','In Process');

select * from fk_sales_order