\W
USE codeup_test_db;

select name as 'Pink Floyd albums:' from albums where artist = 'Pink Floyd';
select release_date as 'Year Sgt. Peppers Lonely Hearts Club Band was released:' from albums where name = 'Sgt. Peppers Lonely Hearts Club Band';
select genre  as 'Genre for the album Nevermind:' from albums where name = 'Nevermind';
select concat_ws(', ', artist, name) as 'Albums released in the 1990s:' from albums where release_date between 1990 and 1999;
select concat_ws(', ', artist, name) as 'Albums with less than 20 million certified sales:' from albums where sales < 20.0;
select concat_ws(', ', artist, name) as 'Rock albums:' from albums where genre = 'Rock';