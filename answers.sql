-- Question 1
WITH split_products AS (
  SELECT
    OrderID,
    CustomerName,
    unnest(string_to_array(Products, ', ')) AS Product
  FROM ProductDetail
)
SELECT OrderID, CustomerName, Product
FROM split_products
ORDER BY OrderID;




--Question 2

1
CREATE TABLE Orders AS
SELECT DISTINCT OrderID, CustomerName
FROM OrderDetails;


2
CREATE TABLE OrderDetails_Normalized AS
SELECT OrderID, Product, Quantity
FROM OrderDetails;
