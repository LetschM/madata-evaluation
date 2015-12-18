declare default element namespace "http://eprints.org/ep2/data/2.0";
import module namespace functx = 'http://www.functx.com';

<data>{
for $b in //eprint[eprint_status = "archive"]//document[not(relation)]
let $a := string-join(($b/format, " - ", functx:substring-after-last($b/files/file/filename, ".")))
group by $a
order by count($b) descending

return
<count formext="{$a}">{$b/eprintid}</count>
}</data>