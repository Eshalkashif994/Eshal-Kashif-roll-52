IF OBJECT_ID('STUDENT', 'U') IS NOT NULL 
	DROP TABLE Students;


	CREATE TABLE Students(
	STD INT PRIMARY KEY,
	FirstName VARCHAR(30),
	LastName VARCHAR(30),
	RollNo INT,
	GPA FLOAT,
	Section CHAR(1),
	Age INT
	);


	INSERT INTO Students VALUES
	(1, 'AYESHA', 'ABID', 101, 4.0, 'A', 18),
	(2, 'AMNA', 'ABID', 102, 2.9, 'B', 19),
	(3, 'FATIMA', 'TARIQ', 103, 3.3, 'B', 17),
	(4, 'MAYEDA', 'QAMAR', 104, 3.9, 'A', 18),
	(5, 'MUTAHHAR', 'RASOOL', 105, 4.0, 'A', 18),
	(6, 'SADEEM', 'SHANZAY', 106, 2.5, 'B', 20),
	(7, 'ABDULLAH', 'KHAWER', 107, 3.2, 'A', 19),
	(8, 'SAMEEL', 'AMIR', 108, 2.8, 'A', 20),
	(9, 'ABDULREHMAN', 'N', 109, 3.6, 'A', 19),
	(10, 'ARSLAN', 'RANA', 110, 3.5, 'B', 21);


	SELECT FirstName + '  ' + LastName AS FullName
	FROM Students
	WHERE age>18;

	SELECT FirstName + '  ' + LastName AS FullName, RollNo
	FROM Students
	WHERE Section = 'B';

	SELECT FirstName + '  ' + Section + '  ' + LastName AS  FormattedName 
	FROM Students;

	SELECT RollNo 
	FROM Students
	WHERE GPA > (SELECT AVG(GPA) FROM Students);

	SELECT FirstName + '  ' + LastName AS FullName, RollNo
	FROM Students 
	WHERE age >= 18
		AND Section = 'A'
		AND GPA > 3;

	SELECT * From Students;


