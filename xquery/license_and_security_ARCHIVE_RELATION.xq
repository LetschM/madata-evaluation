declare default element namespace "http://eprints.org/ep2/data/2.0";
import module namespace functx = 'http://www.functx.com';
<data>{
for $b in //eprint[eprint_status = "archive"]//document[relation]
let $a := string-join(($b/security, " AND ", $b/license))
group by $a
order by count($b) descending

return
<count licsec="{$a}">{count($b)}</count>
}</data>