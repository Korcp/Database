select name,networth
from movieexec
where name in (select starname
from starsin,moviestar,movieexec,studio
where 
starname = moviestar.name and presno = certno and moviestar.name = movieexec.name
group by starname
having count(movietitle)>=3)
order by name desc