
create database product;
create table customer(id int,name varchar(20),email varchar(20),dob date,contact bigint,gender varchar(20));
insert into customer values(1,'ashwini nikam','ashunikam4@gmail.com','1999-06-04',8308616724,'female');
select * from customer;
use product;
create table facewashes(p_id int,brand varchar(20),price int,ratings int);
insert into facewashes values(1,'WOW',209,4),
(2,'MCaffeine',3105,5),
(3,'Mamaearth',859,4),
(4,'Nykaa Naturals',104,4),
(5,'Pilgrim',1190,4),
(6,'Just Herbs',718,5),
(7,'Biotique',574,4),(8,'Plum',844,4),(9,'VLCC',449,4),(10,'Himalaya',315,5);
select * from facewashes;
select * from facewashes where price between 500 and 1000;
select * from facewashes where rating=5;
select brand, price,price-price*25/100 as 'Disc price' from facewashes;
select p_id,brand,price from facewashes order by price;
select * from facewashes where p_id= 1;
select * from facewashes inner join customer on(id=p_id);
update facewashes
set price='309'
where p_id=1;

