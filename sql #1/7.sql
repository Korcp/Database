select starname
from movie,starsin
where movietitle = title and movieyear=year and year=1995 and studioname=lower('Mgm');