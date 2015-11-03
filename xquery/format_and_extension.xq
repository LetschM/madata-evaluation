declare default element namespace "http://eprints.org/ep2/data/2.0";
import module namespace functx = 'http://www.functx.com';

for $b in //document
let $a := string-join(($b/format, " AND ", functx:substring-after-last($b/files/file/filename, ".")))
group by $a
order by count($b) descending

return
<data><count formext="{$a}">{count($b)}</count></data>