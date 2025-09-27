CREATE TABLE Total_sale (
	OrderId	VARCHAR(50),
    OrderItemId	VARCHAR(50),
    QuantityOrdered	INT,
    ItemPrice	INT,
    PromotionDiscount INT,	
    batch_id	VARCHAR(50),
    Region	VARCHAR(50),
    total_sales INT,
    Net_sale INT
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Total_sales.csv'  
INTO TABLE Total_sale  
FIELDS TERMINATED BY ','  
LINES TERMINATED BY '\n'  
IGNORE 1 ROWS  
(OrderId, OrderItemId,	QuantityOrdered, ItemPrice,	PromotionDiscount, batch_id, Region, total_sales,	Net_sale);

select * from total_sale;

select count(*) as Total_Records from total_sale;

Select Region, sum(total_sales) as Total_sale_by_Region from total_sale Group by Region;

Select avg(Net_sale) as Average_Sale_Per_Transaction from total_sale;

select OrderId, Count(*) from total_sale GROUP BY OrderId HAVING COUNT(*) > 1;


