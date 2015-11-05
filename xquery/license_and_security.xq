declare default element namespace "http://eprints.org/ep2/data/2.0";
import module namespace functx = 'http://www.functx.com';

for $b in //document
let $a := string-join(($b/security, " AND ", $b/license))
group by $a
order by count($b) descending

return
<data><count licsec="{$a}">{count($b)}</count></data>