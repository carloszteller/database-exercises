USE codeup_test_db;

drop table if exists albums;

create table albums (
    id int unsigned not null auto_increment,
    artist varchar(150),
    name varchar(100),
    release_date date,
    sales float,
    genre varchar(25),
    primary key(id)
);