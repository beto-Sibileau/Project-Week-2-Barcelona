
create database pollutionBCN;

select * from airquality_2019_01;

/*
select nom_cabina, count(*) as Total_rec, count(ExecRes) as NA_res,
sum(case when ExecRes is 'NA' or '--' then *
from airquality_2019_01
where valor_no2 = 'NA' or valor_no2 = '--'
group by nom_cabina;
*/

select nom_cabina, count(*) as TotalRec
from airquality_2019_01
group by nom_cabina;

select nom_cabina, count(*) as TotalRec
from airquality_2019_01
where valor_no2 != 'NA' and valor_no2 != '--'
group by nom_cabina;

select nom_cabina,avg(convert(substring_index(valor_no2,' ',1),signed)) as Avg_no2
from airquality_2019_01
group by nom_cabina
order by Avg_no2 desc;

select nom_cabina,avg(convert(substring_index(valor_no2,' ',1),signed)) as Avg_no2
from airquality_2019_01
where valor_no2 != 'NA' and valor_no2 != '--'
group by nom_cabina
order by Avg_no2 desc;

select nom_cabina,convert(substring_index(valor_no2,' ',1),signed) as valor_no2
from airquality_2019_01
order by nom_cabina;

select nom_cabina,valor_no2 from airquality_2019_01
order by nom_cabina;

