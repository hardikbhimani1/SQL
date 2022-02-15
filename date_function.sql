---------------------------------12/02/2022----------------------------------

Declare @dt datetime = '2019-12-31  14:43:35:863';
select
    convert (varchar(20),@dt,0)s1,
    convert (varchar(20),@dt,105)s2



select sysdatetime()
select getdate()

select
    try_ convert(date,getdate())
    cast (getdate()as date)