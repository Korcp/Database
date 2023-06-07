select avg(length)as "각 영화사 별 평균 상영시간",min(year) as "처음으로제작한 영화의 상영년도",count(title)as "제작 영화 수"
from movie
group by studioname
order by count(title) desc;