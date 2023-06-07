select distinct title,length,p.name
from movie, movieexec p, starsin, moviestar s
where producerno=certno and
movietitle = title and movieyear =year and
starname=s.name and gender ='female' and
birthdate<'1970-01-01' and
lower(s.address) like '%california%'
order by 2 desc, 1;