
# create database pollutionBCN;
select * from airquality_2019_01;

# The following query returns the average of contaminant NO2
# January 2019
select nom_cabina,avg(convert(substring_index(valor_no2,' ',1),signed)) as Avg_no2
from airquality_2019_01
where valor_no2 != 'NA' and valor_no2 != '--'
group by nom_cabina
order by nom_cabina;

# The following query returns the average of contaminant O3
# January 2019
select nom_cabina,avg(convert(substring_index(valor_o3,' ',1),signed)) as Avg_o3
from airquality_2019_01
where valor_o3 != 'NA' and valor_o3 != '--'
group by nom_cabina
order by nom_cabina desc;

# The following query returns the average of contaminant particles
# January 2019
select nom_cabina,avg(convert(substring_index(valor_pm10,' ',1),signed)) as Avg_pm10
from airquality_2019_01
where valor_pm10 != 'NA' and valor_pm10 != '--'
group by nom_cabina
order by nom_cabina desc;

select valor_no2 from airquality_2019_02;

# The following query returns the average of contaminant NO2
# February 2019
select nom_cabina,avg(convert(substring_index(valor_no2,' ',1),signed)) as Avg_no2
from airquality_2019_02
where valor_no2 != 'NA' and valor_no2 != '--'
group by nom_cabina
order by nom_cabina;

# The following query returns the average of contaminant O3
# February 2019
select nom_cabina,avg(convert(substring_index(valor_o3,' ',1),signed)) as Avg_o3
from airquality_2019_02
where valor_o3 != 'NA' and valor_o3 != '--'
group by nom_cabina
order by Avg_o3 desc;

# The following query returns the average of contaminant particles
# February 2019
select nom_cabina,avg(convert(substring_index(valor_pm10,' ',1),signed)) as Avg_pm10
from airquality_2019_02
where valor_pm10 != 'NA' and valor_pm10 != '--'
group by nom_cabina
order by Avg_pm10 desc;

# select * from airquality_2019_03;

# The following query returns the average of contaminant NO2
# March 2019
select nom_cabina,avg(convert(substring_index(valor_no2,' ',1),signed)) as Avg_no2
from airquality_2019_03
where valor_no2 != 'NA' and valor_no2 != '--'
group by nom_cabina
order by Avg_no2 desc;

# The following query returns the average of contaminant O3
# March 2019
select nom_cabina,avg(convert(substring_index(valor_o3,' ',1),signed)) as Avg_o3
from airquality_2019_03
where valor_o3 != 'NA' and valor_o3 != '--'
group by nom_cabina
order by Avg_o3 desc;

# The following query returns the average of contaminant particles
# March 2019
select nom_cabina,avg(convert(substring_index(valor_pm10,' ',1),signed)) as Avg_pm10
from airquality_2019_03
where valor_pm10 != 'NA' and valor_pm10 != '--'
group by nom_cabina
order by Avg_pm10 desc;

/*
select nom_cabina, count(*) as Total_rec, count(ExecRes) as NA_res,
sum(case when ExecRes is 'NA' or '--' then *
from airquality_2019_01
where valor_no2 = 'NA' or valor_no2 = '--'
group by nom_cabina;
*/

/*
select nom_cabina, count(*) as TotalRec
from airquality_2019_01
group by nom_cabina;
*/

/*
select nom_cabina, count(*) as TotalRec
from airquality_2019_01
where valor_no2 != 'NA' and valor_no2 != '--'
group by nom_cabina;
*/

/*
select nom_cabina,avg(convert(substring_index(valor_no2,' ',1),signed)) as Avg_no2
from airquality_2019_01
group by nom_cabina
order by Avg_no2 desc;
*/

/*
select nom_cabina,convert(substring_index(valor_no2,' ',1),signed) as valor_no2
from airquality_2019_01
order by nom_cabina;
*/

/*
select nom_cabina,valor_no2 from airquality_2019_01
order by nom_cabina;
*/
