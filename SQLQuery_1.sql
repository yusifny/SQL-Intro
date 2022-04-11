--Database yaratmaq.
CREATE DATABASE Department

--Department database-ni istifadə etmək.
USE Department

--Table yaratmaq.
CREATE TABLE Employee( 
Id INT PRIMARY KEY IDENTITY,
Fullname NVARCHAR(255) NOT NULL,
Age TINYINT NOT NULL,
Email NVARCHAR(320) NOT NULL UNIQUE,
Salary SMALLMONEY NOT NULL CHECK(Salary >= 300 and Salary <= 2000)
)

--Table-a dataları daxil etmək.
INSERT INTO Employee
VALUES
('Yusif Nazarbayov', 21, 'yusif@mail.com', 1999),
('Elon Musk', 50, 'elon@mail.com', 401),
('Abdulaziz Karimli', 20, 'karimli@mail.com', 999),
('Jeff Bezos', 58, 'jeff.bezos@mail.com', 301)

--Table-dakı bütün dataları göstərmək.
SELECT * FROM Employee

--Id-i 1 olan Employee-nin Salary dəyərini update etmək.
UPDATE Employee SET Salary=1800.34 WHERE Id=1

--Salary dəyəri 500 ilə 1500 arası olan Employee-lərin bütün datalarını göstərmək.
SELECT * FROM Employee WHERE Salary BETWEEN 500 and 1500

--Salary dəyəri azalma sırasıyla, employee-lərin yalnız Fullname, Email və Salary dəyərlərini göstərmək.
SELECT Fullname, Email, Salary FROM Employee
ORDER BY Salary DESC