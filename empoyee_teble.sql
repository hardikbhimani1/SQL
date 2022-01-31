create table employee(
	emp_id numeric (5) not null,
	emp_Name varchar(20) not null,
	emp_MobileNO numeric(10) not null,
	emp_Address varchar(50) not null,
)

insert into employee values(101, 'Jaimin', 1234567890, 'Surat')
insert into employee values(102, 'Jenil', 1234567891, 'Valsad')
insert into employee values(103, 'Hardik', 1234567892, 'Rajkot')
insert into employee values(104, 'Sahil', 1234567893, 'Ahemdabad')
insert into employee values(105, 'Abhishek', 1234567894, 'Vadodara')

select * from employee;