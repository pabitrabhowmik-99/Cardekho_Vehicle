create database sql_project2
use sql_project2

--Cardekho Data Analysis Using SQL--

--Use Cases::

--The top 10 most expensive cars

select top 10 [name],selling_price from [Car dekho] group by [Name],selling_price order by selling_price desc;
--1.Volvo XC90 T8 Excellence BSIV
--2.BMW X7 xDrive 30d DPE
--3.Audi A6 35 TFSI Matrix

--The average selling price of cars

select avg(cast(selling_price as decimal)) as Avg_price from [Car dekho];
--640121.66

--Identify the most popular car brands

select [name],count(*) as total from [Car dekho] group by [Name] order by total desc;
--Maruti Swift Dzire VDI

--Highest and lowest selling price car

select [name] from [Car dekho] where selling_price=(select max(selling_price) from [Car dekho]);
--Volvo XC90 T8 Excellence BSIV
select [name] from [Car dekho] where selling_price=(select min(selling_price) from [Car dekho]);
--Maruti 800 AC

--seasonality in car sales based on launch year

select [year] ,count([name]) as total from [Car dekho] group by [year] order by [year] desc;
--2023:6
--2019:583
--2017:1018

--the total sales revenue over the years

select [year],sum(selling_price) as revenue from [Car dekho] group by [year] order by [year] desc;
--2023:11375000

--The average mileage of cars by fuel petrol type

select  avg(cast(left(mileage, CHARINDEX(' ', mileage) - 1) as numeric)) as average_mileage
from [Car dekho] where fuel = 'Petrol'
--19.126202

--the most common seller type

select seller_type,COUNT(*) as total from [Car dekho] group by seller_type order by total desc;
--Individual 

--Different types of fuel cars

select fuel,count(*) as t_cars from [Car dekho] group by fuel;
--Petrol	3645
--Diesel	4407

