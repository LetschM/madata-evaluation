declare default element namespace "http://eprints.org/ep2/data/2.0";
import module namespace functx = 'http://www.functx.com';

<data>{
for $b in //eprint[eprint_status = "archive"]//creators//name
let $a := string-join(($b/family, ", ", $b/given))
group by $a
order by count($b) descending

return
<count creator="{$a}">{count($b)}</count>
}</data>