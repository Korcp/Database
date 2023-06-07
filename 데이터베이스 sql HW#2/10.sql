select avg(networth)
from movieexec
where name in (select name
                from movieexec,starsin, movie
                where title=movietitle and year =movieyear and certno =producerno and name in
                (select name
                    from moviestar,starsin
                    where name=starname))
                    