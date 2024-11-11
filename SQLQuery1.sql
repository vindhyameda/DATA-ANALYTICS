--SQL ASSIGNMENT--
--1.Select top 10 records from Employee table where Emp_Sal > 10000

--Answer: In the corresponding data only 4 employees have salaries>10000
 
SELECT *
FROM Employee
WHERE Emp_Sal>10000
ORDER BY Emp_Sal DESC
LIMIT 10;

--2.Retrieve Emp_Id, Emp_FName, Emp_Addr1, Emp_City, Emp_Zip, Dept_Name, Dept_City From Employee whose Department City is Brentwood. Use Table Alias
SELECT * FROM Employee
SELECT * FROM Department

--Answer:


SELECT E.Emp_Id, E.Emp_FName, E.Emp_Addr1, E.Emp_City, E.Emp_Zip, D.Dept_Name, D.Dept_City
FROM Employee E
JOIN Department D
ON E.EDept_Id = D. Dept_Id
WHERE D.Dept_City LIKE 'Brentwood';

--3.Retrieve Emp_ID, Emp_Fname, Emp_Zip from Employee who are all working in department HR&Training and Compliance. Use embedded SQL statements
--**** SOMETHING IS WRONG HERE_CHECK IN CLASS

Answer:

SELECT Emp_ID, Emp_Fname, Emp_Zip, Dept_Name
FROM Employee E
JOIN Department D
ON E. EDept_Id = D. Dept_Id
WHERE Dept_Name IN ('HR&Training', 'Compliance')

--4.Retrieve Sum(Emp_Sal) and Dept_Name from Employee and Emp_Department by Dept_Name (Group By)

Answer:
SELECT SUM (E.Emp_Sal) AS Total_Salary, Dept_Name
FROM Employee E
JOIN Department D
ON E.EDept_ID = D.Dept_Id
WHERE D.Dept_Name IN ('HR&Training', 'Compliance')
GROUP BY Dept_Name
ORDER BY Total_Salary DESC

--5.Select 2nd highest sal from Employee table

SELECT Emp_Sal
FROM Employee
ORDER BY Emp_Sal DESC
SELECT Emp_Sal
FROM Employee
WHERE Emp_Sal=10000.78 

--OR USING MAX 

SELECT MAX(Emp_Sal) AS '2ndhighestSal'
FROM Employee
WHERE Emp_Sal < (SELECT MAX(Emp_Sal) AS '1sthighestSal' FROM Employee);

--6. Rename a column Person_Name to P_Name in the table Person

Exec sp_rename 'dbo.Persons.LastName', 'L_Name', 'COLUMN';
Exec sp_rename 'dbo.Persons.FirstName', 'F_Name','COLUMN';
Exec sp_rename 'dbo.Persons.L_Name', 'LastName', 'COLUMN';
Exec sp_rename 'dbo.Persons.F_Name', 'FirstName','COLUMN';

--8. Retrieve Emp_Id, Emp_FName, Emp_LName for location Zip_Code 88160 (use all three Employee tables) Use Embedded sql statements



SELECT E.Emp_Id, E.Emp_FName, E.Emp_LName
FROM Employee E
JOIN Department D
ON E.EDept_ID = D.Dept_ID
JOIN Employee_Sub1 ES
ON E.Emp_ID= ES.Emp_ID
WHERE E.Emp_Zip = 84673;


--9. Write a query using Right Outer join to retrieve the data from Employee and Emp_Department table


SELECT * 
FROM Employee
RIGHT OUTER JOIN Department
ON Employee.EDept_ID = Department.Dept_ID

--Or aliases can also be assigned as below--

SELECT *
FROM Employee E
RIGHT OUTER JOIN Department D
ON E.EDept_ID = D.Dept_ID
ORDER BY Emp_ID

--10. Write a query using Full Outer join to retrieve the data from Employee and Emp_Department tables

SELECT *
FROM Employee E
FULL OUTER JOIN Department D
ON E.EDept_ID = D.Dept_ID