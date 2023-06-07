select name
from (
    select name, birthdate
    from movie, moviestar, starsin
    where title = movietitle 
        and year = movieyear 
        and starname = name 
        and gender like 'female'
    minus
    select name, birthdate
    from movie, moviestar, starsin
    where title = movietitle 
        and year = movieyear 
        and starname = name 
        and gender like 'female' 
        and lower(title) like 'sting'
)
order by birthdate desc;
