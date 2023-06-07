select distinct starname,birthdate
from starsin,moviestar
where  starname=name 
and (movieyear=1980 or movietitle like lower('%of%') or movietitle like lower('%and%'))
order by birthdate DESC;