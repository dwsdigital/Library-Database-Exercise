USE master
GO

--create xyz library database
CREATE DATABASE dbxyzlibrary
GO

USE dbxyzlibrary
GO

--create tables in xyz library database 
CREATE TABLE Book 
(BookID int PRIMARY KEY, 
Title varchar (100) NOT NULL, 
PublishID int NULL, 
PublishName varchar (100) NULL)

CREATE TABLE Book_Authors 
(BookID int PRIMARY KEY, 
AuthorName varchar (100) NOT NULL)

CREATE TABLE Publisher 
(PublishName varchar (100) PRIMARY KEY, 
[Address] varchar (100) NULL, 
Phone varchar (100) NULL)

CREATE TABLE Book_Copies (BookID int PRIMARY KEY, BranchID int NOT NULL, 
No_Of_Copies int NOT NULL)

CREATE TABLE Book_Loans 
(BookID int PRIMARY KEY, 
BranchID int NULL,
 CardNo int NULL, 
 DateOut date NULL, 
 DueDate date NULL)

CREATE TABLE Library_Branch		
(BranchID int Primary Key,
  BranchName varchar (100) NOT NULL, 
  [Address] varchar (150) NULL)

CREATE TABLE Borrower (CardNo int Primary Key, 
  Name varchar (150) NOT NULL, 
  [Address] varchar (150) NULL, 
  Phone varchar (15) NULL)

--populate tables in xyz library database

INSERT INTO Book_Loans VALUES (1,1,123,'4/15/2017', '5/15/2017')
INSERT INTO Book_Loans VALUES (2,1,111,'5/1/2017', '6/1/2017')
INSERT INTO Book_Loans VALUES (3,4,222,'4/15/2017', '5/15/2017')
INSERT INTO Book_Loans VALUES (4,3,333,'4/25/2017', '5/25/2017')
INSERT INTO Book_Loans VALUES (5,2,345,'5/1/2017', '6/1/2017')
INSERT INTO Book_Loans VALUES (6,2,12,'5/15/2017', '6/15/2017')
INSERT INTO Book_Loans VALUES (7,2,4,'5/15/2017', '6/15/2017')
INSERT INTO Book_Loans VALUES (8,3,333,'4/25/2017', '5/25/2017')
INSERT INTO Book_Loans VALUES (9,1,123,'4/15/2017', '5/15/2017')
INSERT INTO Book_Loans VALUES (10,2,345,'5/1/2017', '6/1/2017')
INSERT INTO Book_Loans VALUES (11,3,234,'5/15/2017', '6/15/2017')
INSERT INTO Book_Loans VALUES (12,3,234,'5/15/2017', '6/15/2017')
INSERT INTO Book_Loans VALUES (13,3,333,'4/25/2017', '5/25/2017')
INSERT INTO Book_Loans VALUES (14,2,345,'5/1/2017', '6/1/2017')
INSERT INTO Book_Loans VALUES (15,2,12,'5/15/2017', '6/15/2017')
INSERT INTO Book_Loans VALUES (16,2,4,'5/15/2017', '6/15/2017')
INSERT INTO Book_Loans VALUES (17,2,12,'5/15/2017', '6/15/2017')
INSERT INTO Book_Loans VALUES (18,1,333,'4/25/2017', '5/25/2017')
INSERT INTO Book_Loans VALUES (19,2,345,'5/1/2017', '6/1/2017')
INSERT INTO Book_Loans VALUES (20,4,222,'4/15/2017', '5/15/2017')
INSERT INTO Book_Loans VALUES (21,1,111,'5/1/2017', '6/1/2017')
INSERT INTO Book_Loans VALUES (22,4,222,'4/15/2017', '5/15/2017')
INSERT INTO Book_Loans VALUES (23,2,4,'5/15/2017', '6/15/2017')
INSERT INTO Book_Loans VALUES (24,4,222,'4/15/2017', '5/15/2017')
INSERT INTO Book_Loans VALUES (25,2,4,'5/15/2017', '6/15/2017')
INSERT INTO Book_Loans VALUES (26,3,234,'5/15/2017', '6/15/2017')
INSERT INTO Book_Loans VALUES (27,3,333,'4/25/2017', '5/25/2017')
INSERT INTO Book_Loans VALUES (28,2,12,'5/15/2017', '6/15/2017')
INSERT INTO Book_Loans VALUES (29,2,345,'5/11/2017', '6/11/2017')
INSERT INTO Book_Loans VALUES (30,2,345,'5/11/2017', '6/11/2017')
INSERT INTO Book_Loans VALUES (31,4,222,'4/25/2017', '5/25/2017')
INSERT INTO Book_Loans VALUES (32,3,333,'5/12/2017', '6/12/2017')
INSERT INTO Book_Loans VALUES (33,1,111,'5/1/2017', '6/1/2017')
INSERT INTO Book_Loans VALUES (34,2,12,'5/15/2017', '6/15/2017')
INSERT INTO Book_Loans VALUES (35,4,2,'5/15/2017', '6/15/2017')
INSERT INTO Book_Loans VALUES (36,4,222,'4/15/2017', '5/15/2017')
INSERT INTO Book_Loans VALUES (37,1,123,'5/10/2017', '6/10/2017')
INSERT INTO Book_Loans VALUES (38,3,234,'5/15/2017', '6/15/2017')
INSERT INTO Book_Loans VALUES (39,1,123,'4/15/2017', '5/15/2017')
INSERT INTO Book_Loans VALUES (40,2,345,'5/11/2017', '6/11/2017')
INSERT INTO Book_Loans VALUES (41,2,4,'4/25/2017', '5/25/2017')
INSERT INTO Book_Loans VALUES (42,1,333,'5/13/2017', '6/13/2017')
INSERT INTO Book_Loans VALUES (43,1,111,'5/1/2017', '6/1/2017')
INSERT INTO Book_Loans VALUES (44,2,12,'5/14/2017', '6/14/2017')
INSERT INTO Book_Loans VALUES (45,3,333,'5/9/2017', '6/9/2017')
INSERT INTO Book_Loans VALUES (46,1,123,'5/15/2017', '6/15/2017')
INSERT INTO Book_Loans VALUES (47,4,345,'4/30/2017', '5/30/2017')
INSERT INTO Book_Loans VALUES (48,3,234,'5/15/2017', '6/15/2017')
INSERT INTO Book_Loans VALUES (49,1,111,'5/17/2017', '6/17/2017')
INSERT INTO Book_Loans VALUES (50,4,222,'5/15/2017', '6/15/2017')









INSERT INTO Borrower VALUES (123, 'Larry Sanders', '1090 SE Oak St, Ballard, WA, 98007','425-799-9000')
INSERT INTO Borrower VALUES (111, 'Kate Smith', '54 Clinton Ave, Bellevue, WA, 98008','425-867-9060')
INSERT INTO Borrower VALUES (222, 'Paula Stanford', '2356 NE Simon St, Seattle, WA, 98005','425-245-5566')
INSERT INTO Borrower VALUES (333, 'Clementine Peters', '4090 NW Sierra Dr, Seattle, WA, 98005','425-747-1500')
INSERT INTO Borrower VALUES (345, 'Peter O Toole', '465 Cleever St, Kent, WA, 98078','425-557-9500')
INSERT INTO Borrower VALUES (12, 'Kari Peterson', '19707 SE45 Cir, Seattle, WA, 98005','425-899-1122')
INSERT INTO Borrower VALUES (4, 'Jerry Booker', '245 High Street, Seattle, WA, 98005','425-899-4653')
INSERT INTO Borrower VALUES (234, 'Tom Selleck', '75 N Bonnerville Dr, Seattle, WA, 98005','425-899-4356')
INSERT INTO Borrower VALUES (7, 'Lena Olesen', '45 N Camas Dr, Seattle, WA, 98005','425-899-4356')


INSERT INTO Book VALUES (1,'The Lost Tribe',1,'Westinghouse')
INSERT INTO Book VALUES (2,'It',2,'Random House')
INSERT INTO Book VALUES (3,'Great Expectations',3,'Barnes and Noble')
INSERT INTO Book VALUES (4,'Jane Eyre',4,'Bantam Books')
INSERT INTO Book VALUES (5,'Catch-22',5,'Dell Publishing')
INSERT INTO Book VALUES (6,'The Last of the Mohicans',6,'New American Library')
INSERT INTO Book VALUES (7,'Pride and Prejudice',4,'Bantam Books')
INSERT INTO Book VALUES (8,'Wuthering Heights',4,'Bantam Books')
INSERT INTO Book VALUES (9,'Nineteen Eighty Four',2,'Random House')
INSERT INTO Book VALUES (10,'Alices Adventures in Wonderland',1,'Westinghouse')
INSERT INTO Book VALUES (11,'Anna Karenina',1,'Westinghouse')
INSERT INTO Book VALUES (12,'The Catcher in the Rye',2,'Random House')
INSERT INTO Book VALUES (13,'Middlemarch',2,'Random House')
INSERT INTO Book VALUES (14,'The Stranger',4,'Bantam Books')
INSERT INTO Book VALUES (15,'The Grapes of Wrath',5,'Dell Publishing')
INSERT INTO Book VALUES (16,'Leaves of Grass',2,'Random House')
INSERT INTO Book VALUES (17,'David Copperfield',1,'Westinghouse')
INSERT INTO Book VALUES (18,'As I Lay Dying',4,'Bantam Books')
INSERT INTO Book VALUES (19,'To Kill a Mockingbird',5,'Dell Publishing')
INSERT INTO Book VALUES (20,'The Old Man and the Sea',2,'Random House')
INSERT INTO Book VALUES (21,'The Lost Tribe',1,'Westinghouse')
INSERT INTO Book VALUES (22,'It',2,'Random House')
INSERT INTO Book VALUES (23,'Great Expectations',3,'Barnes and Noble')
INSERT INTO Book VALUES (24,'Jane Eyre',4,'Bantam Books')
INSERT INTO Book VALUES (25,'Catch-22',5,'Dell Publishing')
INSERT INTO Book VALUES (26,'The Last of the Mohicans',6,'New American Library')
INSERT INTO Book VALUES (27,'Pride and Prejudice',4,'Bantam Books')
INSERT INTO Book VALUES (28,'Wuthering Heights',4,'Bantam Books')
INSERT INTO Book VALUES (29,'Nineteen Eighty Four',2,'Random House')
INSERT INTO Book VALUES (30,'Alices Adventures in Wonderland',1,'Westinghouse')
INSERT INTO Book VALUES (31,'Anna Karenina',1,'Westinghouse')
INSERT INTO Book VALUES (32,'The Catcher in the Rye',2,'Random House')
INSERT INTO Book VALUES (33,'Middlemarch',2,'Random House')
INSERT INTO Book VALUES (34,'The Stranger',4,'Bantam Books')
INSERT INTO Book VALUES (35,'The Grapes of Wrath',5,'Dell Publishing')
INSERT INTO Book VALUES (36,'Leaves of Grass',2,'Random House')
INSERT INTO Book VALUES (37,'David Copperfield',1,'Westinghouse')
INSERT INTO Book VALUES (38,'As I Lay Dying',4,'Bantam Books')
INSERT INTO Book VALUES (39,'To Kill a Mockingbird',5,'Dell Publishing')
INSERT INTO Book VALUES (40,'The Old Man and the Sea',2,'Random House')
INSERT INTO Book VALUES (41,'The Lost Tribe',1,'Westinghouse')
INSERT INTO Book VALUES (42,'It',2,'Random House')
INSERT INTO Book VALUES (43,'Great Expectations',3,'Barnes and Noble')
INSERT INTO Book VALUES (44,'Jane Eyre',4,'Bantam Books')
INSERT INTO Book VALUES (45,'Catch-22',5,'Dell Publishing')
INSERT INTO Book VALUES (46,'The Last of the Mohicans',6,'New American Library')
INSERT INTO Book VALUES (47,'Pride and Prejudice',4,'Bantam Books')
INSERT INTO Book VALUES (48,'Wuthering Heights',4,'Bantam Books')
INSERT INTO Book VALUES (49,'Nineteen Eighty Four',2,'Random House')
INSERT INTO Book VALUES (50,'Alices Adventures in Wonderland',1,'Westinghouse')



INSERT INTO Book_Authors VALUES (2, 'Stephen King')
INSERT INTO Book_Authors VALUES (3, 'Charles Dickens')
INSERT INTO Book_Authors VALUES (4, 'CHarlotte Bronte')
INSERT INTO Book_Authors VALUES (5, 'Joseph Heller')
INSERT INTO Book_Authors VALUES (6, 'James Fenimore Cooper')
INSERT INTO Book_Authors VALUES (7, 'Jane Austin')
INSERT INTO Book_Authors VALUES (8, 'Emily Bronte')
INSERT INTO Book_Authors VALUES (9, 'George Orwell')
INSERT INTO Book_Authors VALUES (10, 'Lewis Carroll')
INSERT INTO Book_Authors VALUES (11, 'Leo Tolstoy')
INSERT INTO Book_Authors VALUES (12, 'J.D. Salinger')
INSERT INTO Book_Authors VALUES (13, 'George Eliot')
INSERT INTO Book_Authors VALUES (14, 'Albert Camus')
INSERT INTO Book_Authors VALUES (15, 'John Steinbeck')
INSERT INTO Book_Authors VALUES (16, 'Walt Whitman')
INSERT INTO Book_Authors VALUES (17, 'Charles Dickens')
INSERT INTO Book_Authors VALUES (18, 'William Faulkner')
INSERT INTO Book_Authors VALUES (19, 'Harper Lee')
INSERT INTO Book_Authors VALUES (20, 'Ernest Hemingway')
INSERT INTO Book_Authors VALUES (22, 'Stephen King')
INSERT INTO Book_Authors VALUES (23, 'Charles Dickens')
INSERT INTO Book_Authors VALUES (24, 'CHarlotte Bronte')
INSERT INTO Book_Authors VALUES (25, 'Joseph Heller')
INSERT INTO Book_Authors VALUES (26, 'James Fenimore Cooper')
INSERT INTO Book_Authors VALUES (27, 'Jane Austin')
INSERT INTO Book_Authors VALUES (28, 'Emily Bronte')
INSERT INTO Book_Authors VALUES (29, 'George Orwell')
INSERT INTO Book_Authors VALUES (30, 'Lewis Carroll')
INSERT INTO Book_Authors VALUES (31, 'Leo Tolstoy')
INSERT INTO Book_Authors VALUES (32, 'J.D. Salinger')
INSERT INTO Book_Authors VALUES (33, 'George Eliot')
INSERT INTO Book_Authors VALUES (34, 'Albert Camus')
INSERT INTO Book_Authors VALUES (35, 'John Steinbeck')
INSERT INTO Book_Authors VALUES (36, 'Walt Whitman')
INSERT INTO Book_Authors VALUES (37, 'Charles Dickens')
INSERT INTO Book_Authors VALUES (38, 'William Faulkner')
INSERT INTO Book_Authors VALUES (39, 'Harper Lee')
INSERT INTO Book_Authors VALUES (40, 'Ernest Hemingway')
INSERT INTO Book_Authors VALUES (42, 'Stephen King')
INSERT INTO Book_Authors VALUES (43, 'Charles Dickens')
INSERT INTO Book_Authors VALUES (44, 'CHarlotte Bronte')
INSERT INTO Book_Authors VALUES (45, 'Joseph Heller')
INSERT INTO Book_Authors VALUES (46, 'James Fenimore Cooper')
INSERT INTO Book_Authors VALUES (47, 'Jane Austin')
INSERT INTO Book_Authors VALUES (48, 'Emily Bronte')
INSERT INTO Book_Authors VALUES (49, 'George Orwell')
INSERT INTO Book_Authors VALUES (50, 'Lewis Carroll')



INSERT INTO Book_Copies VALUES (1, 1, 3)
INSERT INTO Book_Copies VALUES (2, 1, 2)
INSERT INTO Book_Copies VALUES (3, 1, 3)
INSERT INTO Book_Copies VALUES (4, 1, 3)
INSERT INTO Book_Copies VALUES (5, 1, 4)
INSERT INTO Book_Copies VALUES (6, 1, 4)
INSERT INTO Book_Copies VALUES (7, 1, 2)
INSERT INTO Book_Copies VALUES (8, 1, 5)
INSERT INTO Book_Copies VALUES (9, 1, 2)
INSERT INTO Book_Copies VALUES (10, 1, 2)
INSERT INTO Book_Copies VALUES (11, 1, 4)
INSERT INTO Book_Copies VALUES (12, 1, 2)
INSERT INTO Book_Copies VALUES (13, 1, 5)
INSERT INTO Book_Copies VALUES (14, 1, 2)





INSERT INTO Book_Copies VALUES (15, 2, 2)
INSERT INTO Book_Copies VALUES (16, 2, 4)
INSERT INTO Book_Copies VALUES (17, 2, 2)
INSERT INTO Book_Copies VALUES (18, 2, 3)
INSERT INTO Book_Copies VALUES (19, 2, 2)
INSERT INTO Book_Copies VALUES (20, 2, 3)
INSERT INTO Book_Copies VALUES (21, 2, 4)
INSERT INTO Book_Copies VALUES (22, 2, 3)
INSERT INTO Book_Copies VALUES (23, 2, 5)
INSERT INTO Book_Copies VALUES (24, 2, 3)
INSERT INTO Book_Copies VALUES (25, 2, 3)
INSERT INTO Book_Copies VALUES (26, 2, 2)


INSERT INTO Book_Copies VALUES (27, 3, 2)
INSERT INTO Book_Copies VALUES (28, 3, 2)
INSERT INTO Book_Copies VALUES (29, 3, 3)
INSERT INTO Book_Copies VALUES (30, 3, 3)
INSERT INTO Book_Copies VALUES (31, 3, 3)
INSERT INTO Book_Copies VALUES (32, 3, 3)
INSERT INTO Book_Copies VALUES (33, 3, 3)
INSERT INTO Book_Copies VALUES (34, 3, 3)
INSERT INTO Book_Copies VALUES (35, 3, 3)
INSERT INTO Book_Copies VALUES (36, 3, 3)

INSERT INTO Book_Copies VALUES (37, 4, 2)
INSERT INTO Book_Copies VALUES (38, 4, 2)
INSERT INTO Book_Copies VALUES (39, 4, 3)
INSERT INTO Book_Copies VALUES (40, 4, 3)
INSERT INTO Book_Copies VALUES (41, 4, 3)
INSERT INTO Book_Copies VALUES (42, 4, 3)
INSERT INTO Book_Copies VALUES (43, 4, 3)
INSERT INTO Book_Copies VALUES (44, 4, 3)
INSERT INTO Book_Copies VALUES (45, 4, 3)
INSERT INTO Book_Copies VALUES (46, 4, 3)
INSERT INTO Book_Copies VALUES (47, 4, 3)
INSERT INTO Book_Copies VALUES (48, 4, 3)
INSERT INTO Book_Copies VALUES (49, 4, 3)
INSERT INTO Book_Copies VALUES (50, 4, 3)


INSERT INTO Library_Branch VALUES (1, 'Sharpstown', '456 Clairemont Street, Seattle,WA 98008') 
INSERT INTO Library_Branch VALUES (2, 'Central', '24 Pine Street, Seattle, WA 98109')
INSERT INTO Library_Branch VALUES (3, 'Eastside', '34 University Ave, Seattle,WA 98609') 
INSERT INTO Library_Branch VALUES (4, 'Greenlake', '34578 Greenlake Ave, Seattle, WA 98709') 



INSERT INTO Publisher VALUES ('Westinghouse', 'NULL', '216-435-8567')
INSERT INTO Publisher VALUES ('Random House', 'New York, NewYork','312-678-8500')
INSERT INTO Publisher VALUES ('Barnes and Noble', 'New York, NewYork','123-456-8507')
INSERT INTO Publisher VALUES ('Bantam Books', 'Chicago, IL','212-456-4567')
INSERT INTO Publisher VALUES ('Dell Publishing', 'Miami, FL','356-855-4567')
INSERT INTO Publisher VALUES ('New American Library', 'New York, NewYork','312-817-4567')






