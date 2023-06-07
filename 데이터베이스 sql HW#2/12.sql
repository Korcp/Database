select count(title),avg(length)
from movie,starsin
where movietitle=title and year=movieyear and starname like lower('Harrison Ford')