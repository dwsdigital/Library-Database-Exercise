USE dbxyzlibrary
GO

--This procedure gets the number of copies of the book titled The Lost Tribe that are owned by the
--Sharpstown library branch
CREATE PROC usplosttribecopiesatsharpstown
AS
SELECT * FROM Book_Copies
INNER JOIN Book
ON Book_Copies.BookID=Book.BookID
WHERE Title = 'The Lost Tribe'
AND BranchID = 1


--This procedure returns the number of copies of The Lost Tribe owned by each library branch
CREATE PROC usplosttribecopiesatallbranches
AS
SELECT * FROM Book_Copies
INNER JOIN Book
ON Book_Copies.BookID=Book.BookID
WHERE Title='The Lost Tribe'
GO

--This procedure returns the names of borrowers that do not have any books checked out
CREATE PROC uspborrowernoloans 
AS
SELECT * FROM Borrower
LEFT JOIN Book_Loans
ON Borrower.CardNo=Book_Loans.CardNo
WHERE BookID IS NULL
GO

--This procedure retrieves the book title, the borrower's name, and the borrower's address for any books
--loaned out from the Sharpstown branch and is due today

CREATE PROC uspsharpstownduetoday @Date date
AS
SELECT Name, [Address], Book.Title FROM Borrower
INNER JOIN Book_Loans
ON Borrower.CardNo=Book_Loans.CardNo
INNER JOIN Book
ON Book_Loans.BookID=Book.BookID
WHERE DueDate = @Date
GO

--This procedure retrieves the branch name and the total number of books loaned out from that branch 
--for each library branch.

CREATE PROC uspnumberofbooksbybranch
AS
SELECT BranchName, COUNT(BookID) AS Number_of_Loans
FROM Book_Loans
INNER JOIN Library_Branch
ON Book_Loans.BranchID = Library_Branch.BranchID
Group by BranchName
GO

--This procedure retrieves the names, addresses, and number of books checked out for all borrowers 
--who have more than five books checked out.

CREATE PROC uspborrowersfiveormorebooks
AS
SELECT Name, [Address], COUNT(BookID) AS Number_of_books
FROM Book_Loans 
INNER JOIN Borrower
ON Book_Loans.CardNo = Borrower.CardNo
Group by Name,[Address]
HAVING COUNT(BookID) >= 5
GO

--This procedure retrieves the title and the number of copies owned by the library branch 
--whose name is "Central" For each book authored (or co-authored) by "Stephen King".

CREATE PROC uspcentrallibraryStephenKing
AS
SELECT AuthorName, Title, BranchName, No_Of_Copies
FROM Book
INNER JOIN Book_Copies
ON Book.BookID = Book_Copies.BookID
INNER JOIN Library_Branch
ON Book_Copies.BranchID = Library_Branch.BranchID
INNER JOIN Book_Authors
ON Book.BookID = Book_Authors.BookID
WHERE BranchName = 'Central' AND AuthorName= 'Stephen King'
GO


EXEC usplosttribecopiesatallbranches
EXEC usplosttribecopiesatsharpstown
EXEC uspborrowernoloans
EXEC uspsharpstownduetoday @date = '05-25-17'
EXEC uspnumberofbooksbybranch
EXEC uspcentrallibraryStephenKing






