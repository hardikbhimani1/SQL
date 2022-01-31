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


-----------------------------------------------------------------------------28/01/2022-------------------------------------------------------------------------------------------------
where ClientNo  = 'C00001'; 

-- ClientNo 'C00001' ni details aave

select ClientNo,ClientName,State from Client_Master;
-- je details joye e maili jay.

select * from Client_Master
where BalDue > 2000
--  2000 uppar na data aavshe

select * from Client_Master
where BalDue in (2000,0)
--  2000 and 0 hoy to data aavse

select * from Client_Master
where BalDue = 10 or State = 'Karnataka'

select * from Client_Master
where BalDue = 0 and State = 'Karnataka'


select * from Client_Master
where BalDue between 0 and 5000



-------------------------------------31/01/2022----------------------------------------------------

--1]- List the name of all client having 'a' as the second letter in their names.

-- select * from Client_Master
-- where ClientName like '_a%'


--2]- List the client who stay in a city whose First letter is 'M'.

-- select * from Client_Master
-- where City like 'M%'

--3]- List all client who stay in 'Banglore' or 'mangalore'.

-- select * from Client_Master
-- where City = 'Banglore' or City = 'Manglore'

--4]- List all client whose BalDue is greatern than  value 10000


-- select * from Client_Master
-- where BalDue > 10000


--5]- List the oder infomation for ClirntNo 'C00001' and 'C00002'.

-- select * from Client_Master
-- where ClientNo =  'C00001' or ClientNo  = 'C00002'

--6]- List the name , city and state of client who are not state of 'Maharastra'.

-- select ClientName,City,state from Client_Master
-- where state != 'Maharastra'
