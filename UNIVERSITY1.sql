create database uni
create table studen1(
SID int primary key,
SNAME varchar(50) not null,
DID int not null foreign key references Dept(DID),
MOBILE varchar(10),
Age int null,
Gender char(1) not null check(Gender='M' or Gender='F'),
Address varchar(30) not null
)
create table Dept
( 
DID int primary key,
DName varchar(10) not null unique
)
select * from Dept
select * from studen1
insert into Dept values(15,'CSSE')
insert into Dept values(12,'IT')
insert into Dept values(5,'CSE')
insert into Dept values(1,'CIVIL')
insert into Dept values(03,'AI')
insert into Dept values(2,'MECH')
insert into Dept values(4,'ECE')
insert into Dept values(9,'EIE')
insert into Dept values(7,'EEE')

insert into studen1 values(1550,'Sailaja',15,99999999,18,'F','chittoor')
insert into studen1 values(1501,'Thrisha',12,5555555,18,'F','Tirupathi')
insert into studen1 values(1552,'Lakshmi',5,1111111,18,'F','Anantapur')
insert into studen1 values(1553,'Ruchitha',1,9999993,18,'F','chittoor')
insert into studen1 values(1554,'Vijay',15,3293328,18,'M','kadapa')
insert into studen1 values(1555,'Kumar',3,04904,18,'M','kurnool')
insert into studen1 values(1556,'Vignesh',2,101023,18,'F','Bangloor')
insert into studen1 values(1557,'Hema',1,99393,18,'F','Hyd')
insert into studen1 values(1558,'Poornima',5,93992,18,'F','Guntur')
insert into studen1 values(1559,'varra',1,4839290,18,'M','chittoor')
insert into studen1 values(1560,'vasu',3,890423,18,'M','chittoor')
insert into studen1 values(1561,'Yamini',15,4802,18,'F','chennai')
insert into studen1 values(1562,'Lokesh',15,930222,19,'M','srikakulam')
insert into studen1 values(1563,'venu',1,9303566,18,'M','Machalipatnam')
insert into studen1 values(1564,'pavan',7,90439032,18,'M','krishna')
insert into studen1 values(1565,'Gnana',1,904355632,18,'F','krishna')
insert into studen1 values(1566,'pavani',9,94544,21,'F','krishna')
insert into studen1 values(1567,'Naveen',15,04954653,19,'M','chittoor')
insert into studen1 values(1568,'keerthi',9,9043905332,20,'F','krishna')
insert into studen1 values(1569,'Mamatha',3,904390233,17,'F','Tirupathi')
insert into studen1 values(1570,'Rajitha',9,9043901232,19,'F','kadapa')
insert into studen1 values(1571,'kamasani',15,9043906532,20,'F','Guntur')
insert into studen1 values(1572,'Jyothi',12,9045492,21,'F','kurnool')
insert into studen1 values(1573,'Bharath',03,904345892,19,'M','chittoor')
insert into studen1 values(1574,'Hari',7,9043903542,20,'M','Kadapa')
insert into studen1 values(1575,'sunitha',5,9043903542,20,'F','chittoor')
insert into studen1 values(1576,'sirisha',3,92123242,20,'F','Tirupathi')
insert into studen1 values(1577,'Diya',12,9435403542,21,'F','krishna')
insert into studen1 values(1578,'Poornachand',9,9044353322,22,'M','Anantapur')
create table employee
( 
EID int primary key,
ENAME varchar(40) not null,
DID int not null foreign key references Dept(DID),
SALARy money not null,
GENDEER char(1) not null check(GENDEER='M' or GENDEER='F'),
CITY varchar(30) null,
MOBILE varchar(10) null
)
select * from employee
insert into employee values(15,'Yogendra prasad',15,100000,'M','chittoor',4094382)
insert into employee values(16,'Ramu',12,50000,'M','Tirupathi',89438493)
insert into employee values(17,'Sandeep',5,80000,'M','Anantapur',4379384)
insert into employee values(18,'Dhanalakshmi',1,40000,'F','chittoor',3487389)
insert into employee values(19,'Siva Kumar',15,60000,'M','kadapa',9458954)
create table coursemaster
(
CID int primary key,
CNAME varchar(50) not null,
CATEGORY char(1) not null check(CATEGORY='B' or CATEGORY='I' or   CATEGORY='A'),
FEE money  null check( FEE >=0)
)
insert into coursemaster values(101,'C','B',2345)
insert into coursemaster values(201,'JAVA','I',00)
insert into coursemaster values(301,'DSA','A',500)
insert into coursemaster values(401,'DBMS','A',2000)
insert into coursemaster values(501,'SE','A',2000)
insert into coursemaster values(601,'C++','A',2000)
insert into coursemaster values(701,'C#','A',2000)
insert into coursemaster values(801,'SQl','A',2000)
insert into coursemaster values(901,'HTML','A',2000)
insert into coursemaster values(1001,'CSS','A',2000)
select * from coursemaster
create table enrollmentmaster
(
CID int not null foreign key references coursemaster(CID),
SID int not null foreign key references studen1(SID),
DATE date not null,
GRADE char(1) not null check(GRADE='O' or GRADE='A' or GRADE='B' or GRADE='C' )
)
insert into enrollmentmaster values(101,1550,'2023-03-07','O')
insert into enrollmentmaster values(201,1551,'2023-03-06','A')
insert into enrollmentmaster values(301,1552,'2023-03-05','B')
insert into enrollmentmaster values(401,1553,'2023-03-04','C')
insert into enrollmentmaster values(501,1554,'2023-03-04','A')
select * from enrollmentmaster