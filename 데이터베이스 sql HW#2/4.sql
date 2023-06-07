select distinct moviestar.name
from movieexec,movie,moviestar,studio
where producerno=certno and presno=certno and moviestar.name=movieexec.name
      