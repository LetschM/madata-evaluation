declare default element namespace "http://eprints.org/ep2/data/2.0";
import module namespace functx = 'http://www.functx.com';

for $b in //creators//name
let $a := string-join(($b/family, ", ", $b/given))
group by $a
order by count($b) descending

return
<found creator="{$a}">{count($b)}</found>