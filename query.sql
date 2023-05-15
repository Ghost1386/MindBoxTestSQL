CREATE TABLE Products (
	Id INT PRIMARY KEY,
	"Name" TEXT
);

CREATE TABLE Categories (
	Id INT PRIMARY KEY,
	"Name" TEXT
);

INSERT INTO Products
VALUES
	(1, 'Sandwich'),
	(2, 'Сola'),
	(3, 'Tequila');

INSERT INTO Categories
VALUES
	(1, 'Food'),
	(2, 'Beverages'),
	(3, 'Alcohol');

CREATE TABLE ProductCategories (
	ProductId INT FOREIGN KEY REFERENCES Products(Id),
	CategoryId INT FOREIGN KEY REFERENCES Categories(Id),
	PRIMARY KEY (ProductId, CategoryId)
);

INSERT INTO ProductCategories
VALUES
	(1, 1),
	(2, 2),
	(3, 2),
	(3, 3);

SELECT P."Name", C."Name"
FROM Products P
LEFT JOIN ProductCategories PC
	ON P.Id = PC.ProductId
LEFT JOIN Categories C
	ON PC.CategoryId = C.Id;
