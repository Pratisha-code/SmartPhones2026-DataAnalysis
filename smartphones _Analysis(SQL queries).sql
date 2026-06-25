use brand;

SELECT * FROM brand.smartprix_smartphones_2026_csv;

select count(*) as total_mobiles from brand.smartprix_smartphones_2026_csv; #count total mobiles

#average price according to each brand name
select ï»¿Brand_Name,avg(Price) as avg_price
from smartprix_smartphones_2026_csv
group by ï»¿Brand_Name
order by avg_price desc;

#number of phones by brand
select ï»¿Brand_Name,count(Model) as total_ph
from smartprix_smartphones_2026_csv
group by ï»¿Brand_Name;

# brand with highest battery
select ï»¿Brand_Name,Model,Battery_Capacity(Mah) 
from smartprix_smartphones_2026_csv
order by Battery_Capacity(Mah) desc limit 10;

select ï»¿Brand_Name,Model,Spec_Score from smartprix_smartphones_2026_csv
order by Vfm_Score desc limit 10; 

#count of 5g phones
select Has_5G, count(*) from smartprix_smartphones_2026_csv group by Has_5G;


#most common ram size
select Ram, count(*) as count_1
from smartprix_smartphones_2026_csv
group by Ram
order by count_1 desc;

#most papular processor brand
select Processor_Brand, count(*) as total
from smartprix_smartphones_2026_csv
group by Processor_Brand
order by total desc;

#number of phones in each price category
select Price_Category, count(*) from smartprix_smartphones_2026_csv group by Price_Category;


#phones above average price
select ï»¿Brand_Name,Model,Price
from smartprix_smartphones_2026_csv 
where Price > (select avg(Price) from smartprix_smartphones_2026_csv);

#best phone of each brand
select ï»¿Brand_Name,
max(Spec_Score) as best_Spec
from smartprix_smartphones_2026_csv
group by ï»¿Brand_Name;


#top 5 most expensive
select ï»¿Brand_Name,Model,Price_Category,price
from smartprix_smartphones_2026_csv
order by Price desc limit 5;

#price above 50k
select price from smartprix_smartphones_2026_csv
where Price > 50000;

#count phons by Ram
select Ram, count(*) as total_Phones
 from smartprix_smartphones_2026_csv
 group by Ram
 order by Ram;

#ram that grater than 8gb
select ï»¿Brand_Name, Ram
from smartprix_smartphones_2026_csv
where Ram > 8;

select ï»¿Brand_Name, avg(Rear_Camera)
from smartprix_smartphones_2026_csv
group by ï»¿Brand_Name;

#battery analysis
select Model,avg(Battery_Capacity(Mah))
from smartprix_smartphones_2026_csv
group by  Model
order by Battery_Capacity(Mah) desc;

select ï»¿Brand_Name,count(Has_5G) AS Total_5g
from smartprix_smartphones_2026_csv
group  by ï»¿Brand_Name
order by Total_5g desc;

#most expensive phone in each brand
select ï»¿Brand_Name, max(Price) as high_p
from smartprix_smartphones_2026_csv
group by ï»¿Brand_Name;