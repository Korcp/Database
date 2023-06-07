select studioname,count(name)
from (select name,studioname,networth
      from movie,movieexec
      where producerno=certno)
      group by studioname
      having avg(networth) >=1000000
      order by count(name) desc