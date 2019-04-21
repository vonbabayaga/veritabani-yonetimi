DROP TABLE IF EXISTS Sailors;
DROP TABLE IF EXISTS Reserves;
DROP TABLE IF EXISTS Boats;

create table Sailors(
   sid int PRIMARY KEY,
   sname varchar(30),
   rating int,
   age int);

create table Reserves(
    sid int,
    bid int,
    day date,
    PRIMARY KEY (sid, bid, day));

create table Boats(
    bid int PRIMARY KEY,
    bname char(20),
    color char(10));

insert into Sailors(sid,sname,rating,age) values (101,"zorba",7,41);
insert into Sailors(sid,sname,rating,age) values (102,"hamdi",3,17);
insert into Sailors(sid,sname,rating,age) values (103,"nevski",6,57);
insert into Sailors(sid,sname,rating,age) values (104,"bahri",9,54);
insert into Sailors(sid,sname,rating,age) values (105,"rusty",4,71);

insert into Boats(bid,bname,color) values (201,"ziverbahri","red");
insert into Boats(bid,bname,color) values (202,"hms elizabet","green");
insert into Boats(bid,bname,color) values (203,"queen anne revenge","black");
insert into Boats(bid,bname,color) values (204,"van humbold","blue");
insert into Boats(bid,bname,color) values (205,"anabolu","green");
insert into Boats(bid,bname,color) values (206,"buyukada","red");

insert into Reserves(sid,bid,day) values (101,202,"2016-11-01");
insert into Reserves(sid,bid,day) values (102,205,"2016-11-01");
insert into Reserves(sid,bid,day) values (104,201,"2018-12-01");
insert into Reserves(sid,bid,day) values (102,204,"2019-1-01");
insert into Reserves(sid,bid,day) values (104,202,"2016-4-01");
insert into Reserves(sid,bid,day) values (103,203,"2017-5-01");
insert into Reserves(sid,bid,day) values (102,204,"2018-9-01");
insert into Reserves(sid,bid,day) values (105,206,"2019-10-01");
insert into Reserves(sid,bid,day) values (101,206,"2019-4-01");
insert into Reserves(sid,bid,day) values (105,201,"2018-1-01");
insert into Reserves(sid,bid,day) values (102,204,"2017-2-01");
insert into Reserves(sid,bid,day) values (105,202,"2018-6-01");
insert into Reserves(sid,bid,day) values (101,201,"2016-1-01");