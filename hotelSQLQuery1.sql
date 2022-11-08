with hotels as
(select * from hotelanalysisproject.dbo.['2018']
union
select * from hotelanalysisproject.dbo.['2019']
union
select * from hotelanalysisproject.dbo.['2020'])

select arrival_date_year,hotel , round(sum((adr * (stays_in_week_nights+stays_in_weekend_nights ) )),2) as revenue from hotels		--hotel revenue by year and hotel type
group by arrival_date_year,hotel


select * from hotelanalysisproject.dbo.market_segment


with hotels as
(select * from hotelanalysisproject.dbo.['2018']
union
select * from hotelanalysisproject.dbo.['2019']
union
select * from hotelanalysisproject.dbo.['2020'])


select *
from hotels h
left join hotelanalysisproject.dbo.market_segment m
on m.market_segment = h.market_segment
left join hotelanalysisproject.dbo.meal_cost me
on me.meal = h.meal


