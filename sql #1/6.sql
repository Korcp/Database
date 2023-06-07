select name, address
from moviestar
where gender='male' or lower(Address) like '%malibu%';