-- writing queries to retrieve data
-- Two clauses are mandatory
-- SELECT : contains list of attributes
-- FROM : table names
-- there is also another optional clause
-- WHERE : contains the condition/predicate
-- Relational operators: >, <, >=, <=, = (equality), !=
-- Logical Operators: AND (&&), OR (||), NOT (!)  

-- SQL contains two diffrent types of statements
-- 1. DDL (Data Definition Language): create table, alter table
-- 2. DML (Data Manipulation Language): SELECT ..., INSERT ..., DELETE .. 

-- Before proceeding to the next steps, you must create person table as per the Lab0.
--The practice from the following step

-- update an existing row in a table
UPDATE person 
SET person_dob = '02-Feb-2000', person_blood_group = 'AB+' 
WHERE person_id = 1;

-- Altering a TABLE

-- 1. Adding a new attribute
-- Add person_gender attribute in the person table
ALTER TABLE person ADD person_gender varchar2(1);

-- 2. Modifying an existing attribute
-- Modify the data type of person_gender to 10 characters
ALTER TABLE person MODIFY person_gender varchar2(10);

-- 3. Renaming an attribute
-- Rename person_gender to person_sex
ALTER TABLE person RENAME COLUMN person_gender to person_sex;

-- 4. Dropping an attribute
-- Drop person_sex
ALTER TABLE person DROP COLUMN person_sex;

-- 4. Renaming a table itself
-- Rename the table person to person_info
ALTER TABLE person rename to person_info;


-- In Lab exercise
-- 1. Create a table Supplier that contains supplier id, supplier name, supplier address
-- Declare appropriate data type and primary key
-- 2. Add a new attribute supplier id in product table

-- dropping a table (if any exist)
-- constraint supplier_pk ... is appropriate style of declaring constraints
drop table supplier;

create table supplier(
	supplier_id number,
	supplier_name varchar2(20),
	supplier_addr varchar2(30),
	constraint supplier_pk primary key(supplier_id)
);

--In Lab0, you created product table. Now create the same table on your pc
--then add the following attribute as follows:

alter table product add supplier_id number;

-- the common attribute: supplied_id
-- In parent table, the common attribute is usually the primary key
-- In child table, the common attribute is NOT a primary key. In child table, 
-- this common attribute is known as a FOREIGN KEY
-- FOREIGN KEY: An attribute or a set of attributes that act as the primary key of another table.
-- Therefore, supplier_id in the product table is a foreign key.

-- Adding a new constraint
-- make the supplier_id in the product table as a foreign key
ALTER TABLE product ADD CONSTRAINT product_fk foreign key (supplier_id) references supplier;


-- dropping a constraint
-- drop the forign key constraint from product table

ALTER TABLE product DROP CONSTRAINT product_fk;

-- If you want to write the DDL and set the key constraints you can follow the following
-- you must write other attribute names and datatype instead of dots
-- I repeat, if you want to write the DDL of product table you can follow the following.
--Just complete the following DDL 
create table product(
	......................,
	constraint product_pk primary key (product_id),
	constraint product_fk foreign key(supplier_id) references supplier

);

-- deleting a row/rows from a table
DELETE FROM supplier
WHERE supplier_id = 101;


