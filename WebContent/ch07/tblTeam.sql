create table tblTeam(
 num int primary key auto_increment,
 name char(10) not null,
 city char(10) not null,
 age int default 0,
 team char(10) not null
)COLLATE='euckr_korean_ci';