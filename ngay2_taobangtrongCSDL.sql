create database baitap_module02;
use baitap_module02;
create database quanlydiemthi;
use quanlydiemthi;
create table hocsinh
( maHS varchar(20) primary key unique,
tenHS varchar(50),
ngaysinh datetime,
lop varchar(20),
gt varchar(20)
);
select * from hocsinh;
create table monhoc 
( maMH varchar(20) primary key unique,
tenMH varchar(50)
);
create table bangdiem
(maHS varchar(20),
maMH varchar(20),
diemthi int,
ngayKT datetime,
primary key(maHS, maMH),
foreign key (maHS) references hocsinh(maHS),
foreign key (maMH) references monhoc(maMH)
);
create table giaovien
(maGV varchar(20),
tenGV varchar(20),
sdt varchar(10),
primary key(maGV)
);
alter table monhoc add maGV varchar(20);
alter table monhoc add constraint FK_maGV foreign key (maGV) references giaovien(maGV);



