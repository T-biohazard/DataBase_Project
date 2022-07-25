create table instructor_2020260112 values (
id NUMBER,
name VARCHAR2(20),
dept_name varchar2(20),
salary NUMBER 
 );
 create table course_2020260112 (

course_id VARCHAR2(20),
title VARCHAR2(20),
dept_name varchar2(20),
credits NUMBER
 );

insert into instructor_2020260112 values(10101,'srinivasan values','comp.sci',6500);
insert into instructor_2020260112 values (12121,'wu','fina valuesnce',90000);
insert into instructor_2020260112 values (15151,'Mozart',' valuesMusic',40000);
insert into instructor_2020260112 values(22222,'Einstine','physics',95000);
insert into instructor_2020260112 values(32343,'El said',' valuesHistory',6000);
insert into instructor_2020260112 values(33456,'Gold','Phy valuessics',70000);
insert into instructor_2020260112 values(45565,'katz','Com valuesp.Sci',87000);
insert into instructor_2020260112 values(58583,'califieri','Comp.Sci',62000);
insert into instructor_2020260112 values(76543,'Singh','Fi valuesnance',60000);
insert into instructor_2020260112 values(76766,'crick','Bi valuesology',72000);
insert into instructor_2020260112 values(83821,'Brandt','C valuesomp.Sci',92000);
insert into instructor_2020260112 values(98345,'Kim','Elec values.Eng.',80000);




insert into  course_2020260112 values ('BIO-101','Intro.to Biology','Biology',4) ;
insert into  course_2020260112 values ('BIO-301','Genetics','Biology',4) ;
insert into  course_2020260112 values ('BIO-399','Computational Biology','Biology',3) ;
insert into  course_2020260112 values ('CS-101','Introduction to comp science','Comp.Sci',4 );
insert into  course_2020260112 values ('CS-190','Game design','Comp.Sci',4) ;
insert into  course_2020260112 values ('CS-315','Robotics','Comp.Sci',3) ;
insert into  course_2020260112 values ('CS-319','Image Processing','Comp.Sci',3) ;
insert into  course_2020260112 values ('CS-347','Database System Concepts','Comp.Sci',3) ;
insert into  course_2020260112 values ('EE-181','Intro. to Digital Systems','Elec.Eng',3) ;
insert into  course_2020260112 values ('FIN-201','Investment Banking','Finance',3) ;
insert into  course_2020260112 values ('HIS-351','World History','History',3) ;
insert into  course_2020260112 values ('MU-199','Music Vedio  Production','Music',3) ;
insert into  course_2020260112 values ('PHY-101','Physical Principles','Physics',4) ;



select name
from instructor_2020260112 values;

select course_id,title
from course_2020260112;

select neme,dept_name 
from instructor_2020260112 values
where id=='22222';

select title,credits
from course_2020260112
where dept_name='Comp. Sci';

select name,dept_name
from instructor_2020260112 values
where (salary>='70000');

select title
from course_2020260112
where not(credits<'4');

select name,dept_name
from instructor_2020260112 values
where salary>=800000 AND salary <=100000;

select title,credits 
from course_2020260112
where not(dept_name='Comp.Sci.');

select *from instructor_2020260112 values;

select* from course_2020260112
where dept_name='Biology' AND not(credits=4);







