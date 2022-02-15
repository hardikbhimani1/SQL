select count (clientno)'count',sum(baldue) 'sum' from pk_client_master
where city = 'mumbai' 
group by city



--------------------------------------------------------------------------------

select sum (productrate),sum(qtyorderd),sum(qtydisp),productno from fk_sales_order_detail
where qtyorderd>2
group by productno
having productno in ('P00001','P00002')