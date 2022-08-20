
drop table Account;
drop table Customer;
drop table Depositor;

create table Account(
account_no char(5),
balance number Not null,
primary key (account_no)
); 

create table Customer(
customer_no varchar(20) not null,
customer_name varchar2(20),
city varchar2(20);
primary key (customer_no)
); 

create table Depositor(
account_no char(20),
customer_no char2(20),
primary key (account_no,customer_no)
); 

--1
select customer_name,city
from customer;
--2
select distinct city
from customer;
--3
select account_no
from account
where balance>'7000';
--4
select customer_no,customer_name
from Customer
where city='Khulna';

--5

select customer_no,customer_name
from Customer
where not (city='Dhaka');

--6 ????
--select customer_name,customer_no
--from customer
--where(select account_no
  -- from account
  --where balance>='7000');

--or,

select customer_name,city 
from customer natural join account
 where balance >7000;

--7 ??
--select customer_name,city
--from customer
--where(select account_no
   --from account
 -- where balance>='7000') &
     -- city!='Dhaka'  ;

--or

select customer_name,city
 from customer natural join account 
where balance >7000 and not(city='Khulna');

--8
select account_no,balance
from account
where(select customer_no
   from customer
  where customer_no='C-102') ;

--9
select account_no,balance
from account 
where(select customer_no
     from customer
where city='Dhaka' and city ='Khulna');

--10 ??
select  customer_no
from customer









