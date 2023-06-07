select movie.title,movie.year
from movie,movieexec
where certno=producerno and
networth=
(select max(networth)
from movie,movieexec
where certno=producerno)
intersect
select movie.title,movie.year
from movie,movieexec,studio
where studioname=studio.name and certno=presno and
networth=
(select min(networth)
from movieexec,studio
where certno=presno)