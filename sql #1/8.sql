select movieexec.name
from studio, movieexec
where studio.name=lower('fox') and presno=certno