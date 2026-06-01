/*
Soal 1
Tentukan masing-masing primary key pada 4 dataset
penjualan
1. Primary key tabel Customer :
2. Primary key tabel Products :
3. Primary key tabel Orders :
4. Primary key tabel ProductCategory :
*/

##PRIMARY KEY##
--Table Customer--
alter table astute-buttress-497804-j1.PBI_BankMuamalatXRAKAMIN.customers
add primary key (CustomerID) not enforced;
--Table Products--
alter table astute-buttress-497804-j1.PBI_BankMuamalatXRAKAMIN.products
add primary key (ProdNumber) not enforced;
--Table Orders--
alter table astute-buttress-497804-j1.PBI_BankMuamalatXRAKAMIN.orders
add primary key(OrderID) not enforced;
--Table ProductCategory (prodcat)--
alter table astute-buttress-497804-j1.PBI_BankMuamalatXRAKAMIN.prodcat
add primary key (CategoryID) not enforced;

/*
Soal 2
Tentukan relationship dari ke-4 table tersebut
*/
--T.Orders with T.Customers--
ALTER TABLE `astute-buttress-497804-j1.PBI_BankMuamalatXRAKAMIN.orders`
ADD CONSTRAINT fk_customer
FOREIGN KEY (CustomerID)
REFERENCES `astute-buttress-497804-j1.PBI_BankMuamalatXRAKAMIN.customers` (CustomerID)
NOT ENFORCED;
--T.Orders with T.Products--
ALTER TABLE `astute-buttress-497804-j1.PBI_BankMuamalatXRAKAMIN.orders`
ADD CONSTRAINT fk_product
FOREIGN KEY (ProdNumber)
REFERENCES `astute-buttress-497804-j1.PBI_BankMuamalatXRAKAMIN.products` (ProdNumber)
NOT ENFORCED;
--T.Products with T.ProductsCategory--
ALTER TABLE `astute-buttress-497804-j1.PBI_BankMuamalatXRAKAMIN.products`
ADD CONSTRAINT fk_category
FOREIGN KEY (Category)
REFERENCES `astute-buttress-497804-j1.PBI_BankMuamalatXRAKAMIN.prodcat` (CategoryID)
NOT ENFORCED;

/*
Soal 3
Sebagai BI Analyst PT Sejahtera Bersama, kita akan membuat sebuah table master yang berisikan informasi : 
-CustomerEmail (cust_email)
-CustomerCity (cust_city)
-OrderDate (order_date)
-OrderQty (order_qty)
-ProductName (product_name)
-ProductPrice (product_price)
-ProductCategoryName (category_name)
-TotalSales (total_sales) 
Urutkan data tersebut berdasarkan tanggal transaksi yang paling awal sampai yang paling akhir. */
CREATE OR REPLACE TABLE `astute-buttress-497804-j1.PBI_BankMuamalatXRAKAMIN.master_table` AS

SELECT
    o.Date AS order_date,
    pc.CategoryName AS category_name,
    p.ProdName AS product_name,
    CAST(p.Price AS FLOAT64) AS product_price,
    o.Quantity AS order_qty,
    o.Quantity * CAST(p.Price AS FLOAT64) AS total_sales,
    c.CustomerEmail AS cust_email,
    c.CustomerCity AS cust_city

FROM `astute-buttress-497804-j1.PBI_BankMuamalatXRAKAMIN.orders` o

JOIN `astute-buttress-497804-j1.PBI_BankMuamalatXRAKAMIN.customers` c
ON o.CustomerID = c.CustomerID

JOIN `astute-buttress-497804-j1.PBI_BankMuamalatXRAKAMIN.products` p
ON o.ProdNumber = p.ProdNumber

JOIN `astute-buttress-497804-j1.PBI_BankMuamalatXRAKAMIN.prodcat` pc
ON p.Category = pc.CategoryID

ORDER BY order_date ASC;
