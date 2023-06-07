select m1.title
from movie m, movie m1
where m.title=lower('Gone with the wind')and m.length <=m1.length

