declare default element namespace "http://eprints.org/ep2/data/2.0";
import module namespace functx = 'http://www.functx.com';

let $c :=
for $b in //creators/item/name
let $a := string-join(($b/family, ", ", $b/given))
group by $a
order by count($b) descending

return
<data><count licsec="{$a}">{count($b)}</count></data>
return count($c)