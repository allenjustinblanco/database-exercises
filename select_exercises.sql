use codeup_test_db;
select * from albums where name = 'Pink Floyd';
select * from albums where genre = 'Nevermind';
select * from albums where release_date like '%199%';
select * from albums where release_date = '1967';
select * from albums where sales < 20;
select * from albums where genre = 'Rock';