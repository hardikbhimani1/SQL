select PK_client_Master.clientname,
       PK_client_Master.clientno,
       FK_sales_order.orderno,
       FK_sales_order_detail.productno,
       PK_product_master.description
       from PK_client_Master


    inner join FK_sales_order on PK_client_Master.clientno = FK_sales_order.clientno
    inner join FK_sales_order_detail on FK_sales_order.orderno = FK_sales_order_detail.orderno
    inner join pk_product_master on FK_sales_order_detail.productNo = pk_product_master.productNo



