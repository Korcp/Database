select name, address
from movieexec
minus
select e1.name, e1.address
from MovieExec e1, MovieExec e2
where e1.networth < e2.networth