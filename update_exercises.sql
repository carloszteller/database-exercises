\W
USE codeup_test_db;

select * from albums;
select concat_ws(', ', artist, name) as 'Albums released before 1990:' from albums where release_date < 1980;
select name as 'Michael Jackson albums:' from albums where artist = 'Michael Jackson';

update albums set sales = sales * 10;
select * from albums;

update albums set release_date = release_date - 100 where release_date < 1980;
select * from albums;

update albums set artist = 'Peter Jackson' where artist = 'Michael Jackson';
select * from albums;