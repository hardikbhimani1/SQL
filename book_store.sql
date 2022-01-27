create table book_store(
    book_name varchar(100),
    book_price numeric(3),
    book_qun numeric(2)
)
insert into book_store values ('MahaBharat',999,10)
insert into book_store values ('Ramayan',900,11)
insert into book_store values ('Gujarati_sahitya',899,9)
insert into book_store values ('Gujarati varta',675,99)
insert into book_store values ('hindi varta',999,100)

select * from book_store