select count(length) as "영화 제목",length as "상영 시간"
from movie
group by length
having count(length)>1
order by length desc