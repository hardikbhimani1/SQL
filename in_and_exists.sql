-------------------------15/02/2022
--------------------------in-----------------------------------------


select salesmanname from pk_salesman_master
where salesmanno in (
select salesmanno from fk_sales_order 
where orderno in(
select orderno from fk_sales_order_detail
where productno in(
select productno from pk_product_master
where description = 'T-shirts'
)))



--------------------------exists-----------------------------------------



select salesmanname from pk_salesman_master
where exists(
select salesmanno from fk_sales_order 
where exists(
select orderno from fk_sales_order_detail
where exists(
select productno from pk_product_master
where description = 'T-shirts'
)))
