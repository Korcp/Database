select starname, title, year
from movie, starsin
where title =movietitle and year=movieyear 
and (starname, length) in (select name, max(length)
                        from movie, starsin,moviestar
                        where title=movietitle and year=movieyear and name=starname
                        and lower(gender) = 'female'
                        and birthdate>(select birthdate
                        from moviestar
                        where name=lower('Danny Devito'))
                        group by name)
                        order by lower(title) asc
                                            