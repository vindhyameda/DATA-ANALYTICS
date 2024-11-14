--GW Donation Trends Showcase Project

--Create a Table
Create Table Donations(
DonationID Int, 
DonorID Int,
DonationDate Date, 
DonationType Varchar (50),
DonationValue Int,
Region Varchar (50)
)
--Bulk Insert Values from file
Bulk Insert Donations
From 'C:\Users\vindh\OneDrive\Desktop\Data Analytics\Donations Table.txt'
With(FIELDTERMINATOR = '\t',ROWTERMINATOR = '\n', FIRSTROW=2);

SELECT * FROM Donations

Create Table Donors(
DonorID Int ,	
DonorName Varchar (50),	
AgeGroup Varchar (50),
Gender Varchar (50),
DonationFrequency Varchar (50)
);
--Insert Values into each row 
SELECT * FROM Donors

INSERT INTO Donors (DonorID, DonorName, AgeGroup, Gender, DonationFrequency)
VALUES
    (101, 'John Doe', '35-44', 'Male', 'Monthly'),
    (102, 'Jane Smith', '25-34', 'Female', 'Quarterly'),
    (103, 'Mary Johnson', '45-54', 'Female', 'Annual'),
    (104, 'Robert Brown', '55-64', 'Male', 'Quarterly'),
    (105, 'Alice Davis', '65+', 'Female', 'Bi-Annual');

--Tables uploaded correctly?
SELECT * FROM Donations
SELECT * FROM Donors


-- LOGIC QUERIES "WHERE", "AND"
SELECT * FROM Donations 
WHERE DonationValue>100 
AND DonationType = 'Clothing'

--JOIN to return values from 2 different tables with Aliases, Clauses, Order by
SELECT DonationDate, DonorName, Gender, DonationType
FROM Donations D
JOIN Donors O
ON D.DonorID= O.DonorID
WHERE DonationType IN ('Clothing', 'Electronics')
ORDER BY DonationDate desc

--Aggregate functions, Group by
SELECT SUM (D.DonationValue) AS TotalDonations, Region
FROM Donations D
JOIN Donors O
ON D.DonorID = O.DonorID
WHERE D.Region IN ('East Region', 'South Region')
Group by Region
ORDER BY TotalDonations

--SUBQUERY LOGIC
	--Highest donation
SELECT MAX(DonationValue) AS '1sthighestdonation' FROM Donations
	--Second highest donation
SELECT MAX(DonationValue) AS '2ndhighestdonation'
FROM Donations
WHERE DonationValue < 
(SELECT MAX(DonationValue) AS '1sthighestdonation' FROM Donations WHERE DonationType= 'Clothing');







