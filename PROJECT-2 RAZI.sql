create database Project_2;
use Project_2;
select * from Car_sales;

-- 1. show manufacturer names
select Manufacturer from Car_sales;

-- 2. show manufacturer and mode names
select Manufacturer, Model from Car_sales; 

-- 3. show manufacturer , model, Horsepower when Horsepower greater than 140 HP
select Manufacturer, Model, Horsepower from Car_sales where Horsepower >160 order by Horsepower desc;

-- 4. show Manufacturer, Model , Price_in_thousands, Horsepower in ascending order related to  column 'Horse power'
select Manufacturer, Model , Price_in_thousands, Horsepower from Car_sales order by Horsepower desc ;

-- 5. show Price_in_thousands of Manufacturer Audi
select manufacturer , max(Price_in_thousands) from Car_sales where Manufacturer="Audi";

-- 6. show maximum Price_in_thousands of Manufacturer
select Manufacturer, max(Price_in_thousands) from Car_sales group by Manufacturer;

-- 7. show maximum Sales_in_thousands of Horsepower
SELECT horsepower , MAX(sales_in_thousands) FROM Car_sales group by horsepower;



alter table Car_sales
add Ground_clearence int (5) not null;

alter table Car_sales 
drop column Ground_clearence;

-- 8. show how many items in vehicle_type
select count(vehicle_type) from Car_sales;

-- 9. SHOW TYPES OF VEHICLE_TYPE

select vehicle_type,  count(vehicle_type) from Car_sales group by vehicle_type;


-- 10. SHOW THE  MODELS THAT LAUNCHED IN 2012
select model, Latest_Launch from car_sales where Latest_Launch LIKE '%2012' ;
DESCRIBE car_sales;