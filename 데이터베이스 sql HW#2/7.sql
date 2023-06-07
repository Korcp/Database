select address as "주소", avg(length)as "평균 상영시간" ,max(year)as"최근 개봉년도"
from movie,starsin,moviestar
where title=movietitle and year=movieyear and (address,starname) in
       (select n1.address, n1.name
       from moviestar n1, moviestar n2
       where n1.name != n2.name and n1.address = n2.address)
       group by address