create table Client_Master(
    ClientNo varchar(10)
    ClientName varchar(20)
    City  varchar(10)
    Pincode numeric(10)
    State  varchar(10)
    BalDue numeric(20)
)
insert into Client_Master values('C00001', 'Ivan Baross', 'Mumbai', 400054, 'Maharastra', 15000)
insert into Client_Master values('C00002', 'Mamta Muzumdar', 'Madras', 780001, 'TamilNadu', 0)
insert into Client_Master values('C00003', 'Chhaya Bankar', 'Mumbai', 400057, 'Maharastra', 5000)
insert into Client_Master values('C00004', 'Ashwini Joshi', 'Banglore', 560001, 'Karnataka', 0)
insert into Client_Master values('C00005', 'Hansel Colaco', 'Mumbai', 400060, 'Maharastra', 2000)
insert into Client_Master values('C00006', 'Deepak Sharma', 'Banglore', 560050, 'Karnataka', 0)

select * from Client_Master;