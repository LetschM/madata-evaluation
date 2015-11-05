declare default element namespace "http://eprints.org/ep2/data/2.0";
import module namespace functx = 'http://www.functx.com';

for $b in //document
let $a := string-join(($b/security, ", ", $b/license))
group by $a
order by count($b) descending

return
<data><count creator="{$a}">{count($b)}</count></data>