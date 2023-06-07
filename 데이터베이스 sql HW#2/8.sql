select title
from ( select *
        from movie,starsin
        where title=movietitle and year =movieyear and
        starname = (select name
                    from moviestar
                    where birthdate
                    = (select min(birthdate)
                        from moviestar
                        )))
where length = (select max(length)
                from (select *
        from movie,starsin
        where title=movietitle and year =movieyear and
        starname = (select name
                    from moviestar
                    where birthdate
                    = (select min(birthdate)
                        from moviestar
                        ))))