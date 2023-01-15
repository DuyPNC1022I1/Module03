create database quanlybanhang;
use quanlybanhang;
create table customer
(cid int primary key auto_increment not null,
cname varchar(30) not null,
cage int not null
);
create table order1
(oid int primary key auto_increment not null,
cid int not null,
odate datetime,
ototalprice int,
foreign key (cid) references customer(cid)
);
create table product
(pid int primary key auto_increment not null,
pname varchar(30) not null,
pprice int not null
);
create table orderdetail
(oid int not null,
pid int not null,
odqty int,
foreign key (oid) references order1(oid),
foreign key(pid) references product(pid),
primary key (oid, pid)
);

