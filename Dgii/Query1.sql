select count(*) as cant, sum(isnull(total,0)-isnull(itbis,0)) as total
from pr_genera_607 (:emp, :ano, :mes, :esfecha, :fec1, :fec2)
