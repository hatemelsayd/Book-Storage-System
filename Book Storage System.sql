CREATE TABLE `Books`(
    `Book_id` INT NOT NULL,
    `Author` VARCHAR(255) NOT NULL,
    `Book name` VARCHAR(255) NOT NULL,
    `price` INT NOT NULL,
    `version` VARCHAR(255) NOT NULL,);
ALTER TABLE
    `Books` ADD PRIMARY KEY `books_book_id_primary`(`Book_id`);

CREATE TABLE `customer`(
    `customer_id` INT NOT NULL,
    `F_Name` VARCHAR(255) NOT NULL,
    `L_Name` VARCHAR(255) NOT NULL,
    `metaphor_datae` VARCHAR(255) NOT NULL,
    `Address` VARCHAR(255) NOT NULL,
    `phone_number` INT NOT NULL,
    `Expiry_date` VARCHAR(255) NOT NULL,
    `book__id` INT NOT NULL
);
ALTER TABLE
    `customer` ADD PRIMARY KEY `customer_customer_id_primary`(`customer_id`);

CREATE TABLE `category`(
    `category_ID` INT NOT NULL,
    `Avaliable` VARCHAR(255) NOT NULL,
    `Name` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `category` ADD PRIMARY KEY `category_category_id_primary`(`category_ID`);
ALTER TABLE
    `customer` ADD CONSTRAINT `customer_book__id_foreign` FOREIGN KEY(`book__id`) REFERENCES `Books`(`Book_id`);




Insert into Books values( '1', 'ali hassin' , ' network book ' , '100' ,'2012');

Insert into Books values( '2', 'mohmmed ahmed' , ' hacking book ' , '200' ,'2018');

Insert into Books values( '3', 'ahmed nabil' , ' web pragram book ' , '150' ,'2011');

Insert into Books values( '4', 'amr samy' , ' basic programming book ' , '60' ,'2014');

Insert into Books values( '5', 'sara nabil' , ' python book ' , '80' ,'2019');




Insert into customer values( '357', 'ahmed','mohmmed',' 12/1/2020 ', ' Bahrain', '33552244' ,'15','1');

Insert into customer values( '367', 'omar','mohmmed',' 2/2/2020 ', ' mansora', '01021455820' ,'10','3');

Insert into customer values( '527', 'maram','ahmed',' 1/4/2020 ', ' cario', '01214578125' ,'14','1');

Insert into customer values( '747', 'ahmed','ahi',' 1/1/2020 ', ' kaf al_shik', '01025487355' ,'8','2');

Insert into customer values( '157', 'hatem','saed',' 10/1/2019 ', ' tanta', '01010202502' ,'10','4');




Insert into category values ( '156', 'is Avaliable' ,'network book ') ;

Insert into category values ( '226', 'is not Avaliable' ,'hacking book') ;

Insert into category values ( '154', 'is Avaliable' ,'web pragram book') ;

Insert into category values ( '345', 'is Avaliable' ,'basic programming book') ;

Insert into category values ( '753', 'is not Avaliable' ,'python book') ;


select * from Books where category_ID  IN (select category_ID from category where Avaliable ='is not Avaliable');	
select * from customer where Book_id IN (select Author from Books where price = '100' );
select * from category where Book_id  IN (select price from Books where version = '2018' );



select count(*) from Books;
select sum(price) from Books group by price;
select max(price) from Books group by price;
select min(price) from Books group by price;
select avg(price) from Books group by price;


Select  count(price) from Books Group by price Having count(*) <= 70 ;





Select Book_id , Avaliable From Books , category Where Book name = Name ;

Select Author , metaphor_datae From Books, customer  Where Book_id  = book__id;

Select F_Name , price  From customer , Books Where book__id = Book_id;

Select Name , Author From category, Books Where Name = Book name;

Select Book name, phone_number  From Books, customer Where Book_id  = book__id;









 Update category 
 set Avaliable='is not Avaliable'
where Name= 'network book';

Update Books 
 set price='180'
 where Author=' mohmmed ahmed';

Update Books 
set Author=' maram ali' 
where version= '2018';

Update customer 
 set metaphor_datae= '2/1/2020 '
where phone_number= '01025487355';

Update customer 
 set phone_number ='01212588125' 
where F_Name='shaker' ;




Delete from category where category_ID=' 753' ; 

Delete from customer Where metaphor_datae=' 2/2/2020  '; 

Delete from Books where Book name=' network book ' ;

Delete from customer where L_Name = 'ahmed'; 

Delete from Books where Book_id= ' 2' ;





select * from Books;
select * from customer;
select * from category;


