-- Create a database named "BooksDB"
create database BooksDB;

-- create a table_1;
create table BooksDB.Books(
Books_id int primary key auto_increment,
Books_Title varchar(60),
Books_Author varchar(60),
Books_genre varchar(60),
publication_year int ,
Bookprice int 
);

-- create a table_2;
create table BooksDB.Author(
s_no int primary key auto_increment,
Author_name varchar(70),
Book_Title varchar(70),
foreign key(s_no) References Books(Books_id)
);
select * from BooksDB.Books;
select * from BooksDB.Author;


-- insert table_1 values;
insert into BooksDB.Books values
-- Insert at least five books into the "Books" table 1;
 ("the great gatsby","F.scott fitzgerald","a self made","1925","500"),
("greatest writer","william shakespeare","wonder house book","2019","1500"),
("lilawati","bhaskara","mathematician","1994","2500"),
("nation","terry pratchett","fantasy","1967","1720"),
("indian independence","savarkar","history","1909","1400");

 -- insert table_2 values;
insert into BooksDB.Author values
("1","Yann Martel","Life of Pi"),
("2","Ian McEwan","Atonement"),
("3","Dan Brown","Deception Point"),
("4","Neil Gaiman","American Gods"),
("5","James Patterson","Women's Murder Club"); 
 
 
select distinct Books_Title from BooksDB.Books;
select distinct Book_Title from BooksDB.Author;

-- update the given condition;
update BooksDB.Books set Books_Title="Lost in a Good Book" where Books_id=4;
update BooksDB.Books set Books_Author="by Jasper Fforde" where Books_id=4;
delete from BooksDB.Author where s_no=4;
use BooksDB;
select 
Books.Books_id,Books.Books_Title,Books.Books_Author,Books.Books_genre,Books.publication_year,Books.Book_price
from Books
inner join Author
on Books.Books_id=Author.s_no;
select * from BooksDB.Books;
select * from BooksDB.Author;
use BooksDB;
select 
Books.Books_id,Books.Books_Title,Books.Books_Author,Books.Books_genre,Books.publication_year,Books.Book_price
from Books
left join Author
on Books.Books_id=Author.s_no;
use BooksDB;
select 
Books.Books_id,Books.Books_Title,Books.Books_Author,Books.Books_genre,Books.publication_year,Books.Book_price
from Books
right join Author
on Books.Books_id=Author.s_no;
